#include <array>
#include <cassert>
#include <tuple>
#include "salsa_text.hpp"

static const std::array<std::pair<std::string, TextBlockType>, 12> s_block_map = {{
    {"room_descriptions.txt", TextBlockType::DynamicMsg},
    {"item_names.txt", TextBlockType::FixedMsg},
    {"item_descriptions.txt", TextBlockType::DynamicMsg},
    {"character_names.txt", TextBlockType::FixedMsg},
    {"party_character_names.txt", TextBlockType::FixedMsg},
    {"enemy_names.txt", TextBlockType::FixedMsg},
    {"psi_names.txt", TextBlockType::FixedMsg},
    {"psi_descriptions.txt", TextBlockType::DynamicMsg},
    {"status_names.txt", TextBlockType::FixedMsg},
    {"default_names.txt", TextBlockType::FixedMsg},
    {"special_text.txt", TextBlockType::FixedMsg},
    {"skill_descriptions.txt", TextBlockType::DynamicMsg},
}};

struct BinaryBlock {
    static BinaryBlock dump(SalsaStream* stream, s32 size) {
        BinaryBlock block;
        block.content.resize(size);
        stream->std::istream::read(block.content.data(), size);
        return block;
    }

    static BinaryBlock read(SalsaStream* stream, s32 size) {
        BinaryBlock block;
        block.content.resize(size);
        stream->std::istream::read(block.content.data(), size);
        return block;
    }

    std::vector<char> content;
};

struct TextBlock {
    std::vector<MessageHeader> message_headers;
    std::vector<Message> messages;
};

// struct MiscTextBank {
//     static MiscTextBank dump(SalsaStream* stream, uintptr_t offset) {
//         MiscTextBank bank;

//         stream->seekg(offset);
//         bank.block_count = s_block_map.size();

//         stream->read<u32>();  // header word count

//         for (int i = 0; i < bank.block_count; i++) {
//             switch (std::get<1>(s_block_map[i])) {
//             case TextBlockType::DynamicMsg:
//                 bank.block_headers.emplace_back(std::make_unique<DynamicBlockHeader>(stream));
//                 break;
//             case TextBlockType::FixedMsg:
//                 bank.block_headers.emplace_back(
//                     std::make_unique<FixedBlockHeader>(stream, std::get<2>(s_block_map[i])));
//                 break;
//             }
//         }
//         // std::cerr << std::hex << stream->tellg() << std::endl;
//         // assert(stream->tellg() == offset + 4 + bank.block_count * 4);
//         bank.total_size = stream->read<u32>();

//         for (int i = 0; i < bank.block_count - 1; i++) {
//             std::cerr << std::hex << (unsigned long)stream->tellg() - offset << std::endl;
//             switch (std::get<1>(s_block_map[i])) {
//             case TextBlockType::DynamicMsg:
//                 // DynamicMessageBlock::dump(stream)
//                 bank.blocks.emplace_back(BinaryBlock::dump(
//                     stream, bank.block_headers[i + 1]->start() -
//                     bank.block_headers[i]->start()));
//                 break;
//             case TextBlockType::FixedMsg:
//                 bank.blocks.emplace_back(BinaryBlock::dump(
//                     stream, bank.block_headers[i + 1]->start() -
//                     bank.block_headers[i]->start()));
//                 break;
//             }
//         }
//         bank.blocks.emplace_back(
//             BinaryBlock::dump(stream, bank.total_size - bank.block_headers.back()->start()));
//         assert(stream->tellg() == offset + bank.total_size);
//         return bank;
//     }

//     static MiscTextBank parse(SalsaPath* path) {
//         SalsaStream desc(*path / "misctext.salsa");

//         MiscTextBank bank;

//         for (int i = 0; i < s_block_map.size(); i++) {
//             auto& block = s_block_map[i];
//             std::string block_name = std::get<0>(block);

//             SalsaStream file(*path / block_name);
//             size_t filesize = file.seekg(0, std::ios::end).tellg();
//             file.seekg(0, std::ios::beg);
//             bank.blocks.emplace_back(BinaryBlock::read(&file, filesize));
//         }
//         bank.block_count = bank.blocks.size();

//         u32 offset = bank.block_count * 4 + 8;
//         for (int i = 0; i < s_block_map.size(); i++) {
//             switch (std::get<1>(s_block_map[i])) {
//             case TextBlockType::DynamicMsg:
//                 bank.block_headers.emplace_back(std::make_unique<DynamicBlockHeader>(
//                     bank.blocks[i].content.size(), bank.blocks[i].content.size()));  // TODO
//                 break;
//             case TextBlockType::FixedMsg:
//                 bank.block_headers.emplace_back(std::make_unique<FixedBlockHeader>(
//                     bank.blocks[i].content.size(), std::get<2>(s_block_map[i])));
//                 break;
//             }
//             offset += bank.blocks[i].content.size();
//         }
//         bank.total_size = bank.block_headers.back()->start() + bank.blocks.back().content.size();
//         return bank;
//     }

//     u32 block_count;
//     std::vector<std::unique_ptr<BlockHeader> > block_headers;
//     u32 total_size;
//     std::vector<BinaryBlock> blocks;
// };

void salsa_misctext_read(SalsaStream& src, SalsaPath& dest) {
    SalsaStream desc(dest);
    // MiscTextBank bank = MiscTextBank::dump(&src, cMiscTextOffset);

    std::vector<TextBlockType> blocktypes;
    std::transform(s_block_map.begin(), s_block_map.end(), std::back_inserter(blocktypes),
                   [](auto& pair) { return pair.second; });

    auto bank = TextBank::dump(&src, cMiscTextOffset, blocktypes);

    dest.replace_extension("");
    std::filesystem::create_directory(dest);

    for (int i = 0; i < bank->block_count; i++) {
        auto t = s_block_map[i];
        std::string block_name = t.first;
        TextBlockType blocktype = t.second;
        SalsaStream file(dest / block_name);
        // file.std::ostream::write(bank.blocks[i].content.data(), bank.blocks[i].content.size());
        auto& block = bank->blocks[i];
        if (block->isNulled()) {
            continue;
        }
        for (int j = 0; j < block->messages.size(); ++j) {
            auto& message = block->messages[j];

            file << std::dec << j << ":";
            file << message.text << std::endl;
        }

        if (blocktype == TextBlockType::DynamicMsg) {
            desc << block_name << std::endl;
        } else if (blocktype == TextBlockType::FixedMsg) {
            u32 len = dynamic_cast<FixedMessageBlock&>(*block).message_len;
            desc << block_name << ":" << len << std::endl;
        }
    }
}

void salsa_misctext_write(SalsaPath& src, SalsaStream& dest) {
    std::vector<TextBlockType> blocktypes;
    std::transform(s_block_map.begin(), s_block_map.end(), std::back_inserter(blocktypes),
                   [](auto& pair) { return pair.second; });

    TextBank::write(&src, &dest, blocktypes, false);
}
