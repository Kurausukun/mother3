#include "salsaText.hpp"
#include <cassert>

namespace text {

std::unique_ptr<TextBank> TextBank::dump(SalsaStream* stream, uintptr_t offset,
                                         const std::vector<TextBlockType>& blocktypes) {
    auto bank = std::make_unique<TextBank>();

    stream->seekg(offset);
    (void)stream->read<u32>();  // block header word count
    bank->block_count = blocktypes.size();

    // dump block headers
    for (auto& type : blocktypes) {
        switch (type) {
        case TextBlockType::FixedMsg:
            bank->headers.emplace_back(std::make_unique<FixedBlockHeader>(stream));
            break;
        case TextBlockType::DynamicMsg:
            bank->headers.emplace_back(std::make_unique<DynamicBlockHeader>(stream));
            break;
        }
    }
    bank->total_size = stream->read<u32>();

    // dump blocks
    for (int h = 0; h < bank->headers.size(); h++) {
        stream->seekg(pad_to<4>(stream->tellg()), std::ios::beg);
        auto& header = bank->headers[h];

        if (!header->isNulled()) {
            assert(stream->tellg() == offset + header->start());
        }

        if (h == 811) {
            bank->dumpHackBlock(stream, h);
            continue;
        }

        // calculate block size from next header
        // or, if last non-null header, calculate block size from total size
        auto next_header = bank->nextGoodHeader(h);
        s32 size = next_header != bank->headers.end() ?
                       (*next_header)->start() - header->startMessages() :
                       bank->total_size - header->startMessages();
        bank->blocks.emplace_back(header->dumpBlock(stream, size));
    }
    return bank;
}

void TextBank::calcHeader() {
    u32 offset = 8;
    for (auto& header : headers) {
        offset += header->size();
    }

    // calculate offsets for all block headers
    for (int i = 0; i < block_count; i++) {
        auto& block = blocks[i];
        auto& header = headers[i];
        // hack for weird dup/empty edge case!!!!
        if (i == 812) {
            offset -= 4;
        }

        if (block->isNulled()) {
            continue;
        }

        if (block->messages.size() == 1 && block->messages[0].text.empty()) {
            header->initAsEmpty(offset);
            offset += 4;
            continue;
        }

        offset += header->init(block, offset);
    }
    total_size = offset;
}

TextBank TextBank::parse(SalsaStream* stream, const std::vector<TextBlockType>& blocktypes) {
    TextBank bank;

    std::string line;
    while (std::getline(*stream, line)) {
        auto trimmed = line.substr(0, line.find(":"));
        auto message = line.substr(line.find(":") + 1);
        auto block_idx = std::stoi(trimmed.substr(0, trimmed.find("-")));
        auto message_idx = std::stoi(trimmed.substr(trimmed.find("-") + 1));

        assert(block_idx < blocktypes.size());

        // construct all blocks up to and including the current index
        // ones we skipped over are assumed to be nulled
        while (block_idx > bank.block_count - 1) {
            switch (blocktypes[block_idx]) {
            case TextBlockType::FixedMsg:
                bank.blocks.emplace_back(std::make_unique<FixedMessageBlock>(0));
                bank.headers.emplace_back(std::make_unique<FixedBlockHeader>());
                break;
            case TextBlockType::DynamicMsg:
                bank.blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
                bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
                break;
            }
            bank.block_count++;
        }
        auto& cur_block = bank.blocks[block_idx];
        cur_block->append(message);
    }

    // fill in the rest of the blocks per spec
    for (int i = bank.block_count; i < blocktypes.size(); i++) {
        switch (blocktypes[i]) {
        case TextBlockType::FixedMsg:
            bank.blocks.emplace_back(std::make_unique<FixedMessageBlock>(0));
            bank.headers.emplace_back(std::make_unique<FixedBlockHeader>());
            break;
        case TextBlockType::DynamicMsg:
            bank.blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
            bank.headers.emplace_back(std::make_unique<DynamicBlockHeader>());
            break;
        }
        bank.block_count++;
    }

    bank.calcHeader();
    return bank;
}

Message Message::dump(SalsaStream* stream, s32 size) {
    Message result;
    u32 code;
    u32 start = stream->tellg();

    // getting around the fact that [END] markers may not actually be the end
    auto condition = [&]() {
        if (size == -1) {
            return code != 0xFFFF;
        }
        return stream->tellg() < start + size;
    };

    do {
        code = stream->read<u16>();

        switch (code) {
        case 0x0000:
            continue;
        case 0xFFFF:
            result.text += "[END]";
            continue;
        case 0xAC:
            result.text += ' ';
            continue;
        }

        // Condition code
        if (code >= jp_charmap.size()) {
            auto iter = cc_map.find(code);
            if (iter == cc_map.end()) {
                std::cerr << "Unknown bytes in message: " << std::hex << code << std::endl;
                std::cerr << "At offset: " << std::hex << stream->tellg() << std::endl;
                exit(1);
            }

            auto cc = iter->second;
            result.text += "[" + cc.name;
            for (int i = 0; i < cc.argcount; ++i) {
                result.text += " " + hex_string(stream->read<u16>());
            }
            result.text += "]";
            continue;
        }

        result.text += jp_charmap[code];
    } while (condition());
    return result;
}

void TextBank::parseSingleBlockFile(SalsaStream* stream, TextBlockType blocktype, s32 message_len) {
    switch (blocktype) {
    case TextBlockType::FixedMsg:
        blocks.emplace_back(std::make_unique<FixedMessageBlock>(message_len));
        headers.emplace_back(std::make_unique<FixedBlockHeader>(message_len));
        break;
    case TextBlockType::DynamicMsg:
        blocks.emplace_back(std::make_unique<DynamicMessageBlock>());
        headers.emplace_back(std::make_unique<DynamicBlockHeader>());
        break;
    default:
        assert(0);
    }
    block_count++;

    auto& cur_block = blocks.back();

    std::string line;
    while (std::getline(*stream, line)) {
        auto message_idx = std::stoi(line.substr(0, line.find(':')));
        auto message = line.substr(line.find(':') + 1);
        cur_block->append(message);
    }
}

void TextBank::write(SalsaPath* src, SalsaStream* dest,
                     const std::vector<TextBlockType>& blocktypes, bool one_file) {
    SalsaStream desc(*src);
    src->replace_extension("");
    TextBank bank;
    if (one_file) {
        bank = TextBank::parse(&desc, blocktypes);
    } else {
        std::string line;
        while (std::getline(desc, line)) {
            if (line.find(':') != std::string::npos) {
                // fixed
                std::string filename = line.substr(0, line.find(':'));
                int message_len = std::stoi(line.substr(line.find(':') + 1));
                SalsaStream file(*src / filename);
                bank.parseSingleBlockFile(&file, TextBlockType::FixedMsg, message_len);
            } else {
                // dynamic
                SalsaStream file(*src / line);
                bank.parseSingleBlockFile(&file, TextBlockType::DynamicMsg);
            }
        }
        bank.calcHeader();
    }

    dest->write<s32>((bank.headers[0]->start() - 8) >> 2);
    for (auto& header : bank.headers) {
        header->write(dest);
    }
    dest->write<s32>(bank.total_size);
    for (int i = 0; i < bank.blocks.size(); ++i) {
        auto& block = bank.blocks[i];
        if (block->isNulled()) {
            continue;
        }

        // HACKK
        if (i == 812) {
            continue;
        }

        if (block->messages.size() == 1 && block->messages[0].text.empty()) {
            // empty block
            dest->write<u16>(0xFFFF);
            dest->write<u16>(0x0000);
            continue;
        }

        block->write(dest);
    }
}

void TextBank::dumpHackBlock(SalsaStream* stream, s32 idx) {
    blocks.emplace_back(std::make_unique<DynamicMessageBlock>(
        stream, this->total_size - headers[idx]->startMessages(), true));
}

std::vector<u16> Message::parse(const std::string& line) {
    std::vector<u16> result;

    result.reserve(line.size());

    int i = 0;
    while (i < line.size()) {
        unsigned char c = line[i];
        if (c == ' ') {
            i++;
            result.emplace_back(0xAC);
            continue;
        }

        // start of a control code
        if (c == '[') {
            i++;
            std::string rem = std::string(&line.c_str()[i]);
            std::string cc_name = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
            if (cc_name.empty()) {
                std::cerr << "Invalid control code: " << line << std::endl;
                exit(1);
            }

            auto iter = std::find_if(cc_map.begin(), cc_map.end(),
                                     [&](const auto& cc) { return cc.second.name == cc_name; });

            if (iter != cc_map.end()) {
                rem.erase(0, cc_name.size() + 1);
                i += cc_name.size() + 1;
                result.emplace_back(iter->first);
                for (int j = 0; j < iter->second.argcount; ++j) {
                    std::string arg = rem.substr(0, std::min(rem.find(" "), rem.find("]")));
                    if (arg.empty()) {
                        std::cerr << "Invalid control code: " << line << std::endl;
                        exit(1);
                    }
                    rem.erase(0, arg.size() + 1);
                    i += arg.size() + 1;
                    result.emplace_back(std::stoi(arg, nullptr, 16));
                }
            } else {
                std::cerr << "Unknown control code: " << cc_name << std::endl;
                exit(1);
            }
            continue;
        }

        std::pair<u32, u32> uni = readU8Char(&line.c_str()[i]);
        i += uni.first;
        auto iter = std::find_if(jp_charmap.begin(), jp_charmap.end(),
                                 [&](const auto& c) { return readU8Char(c).second == uni.second; });
        if (iter != jp_charmap.end()) {
            result.emplace_back(std::distance(jp_charmap.begin(), iter));
        } else {
            std::cerr << "Unknown character: " << c << std::endl;
            exit(1);
        }
    }
    return result;
}

std::pair<u32, u32> readU8Char(const std::string& s) {
    auto num_chrs = 1;
    switch ((unsigned char)s[0]) {
    case 0x0 ... 0x7F:
        break;
    case 0x80 ... 0xBF:
        std::cerr << "Expected first byte but found continuation in string: " << s << std::endl;
        exit(1);
        break;
    case 0xC0 ... 0xDF:
        num_chrs = 2;
        break;
    case 0xE0 ... 0xEF:
        num_chrs = 3;
        break;
    case 0xF0 ... 0xF7:
        num_chrs = 4;
        break;
    default:
        std::cerr << "Found unknown byte in string: " << s << std::endl;
        exit(1);
        break;
    }

    u32 result = 0;
    for (int i = 0; i < num_chrs; ++i) {
        result |= (u8)s[i] << (8 * (3 - i));
    }
    return {num_chrs, result};
};

} // namespace text
