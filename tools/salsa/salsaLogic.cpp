#include "salsaLogic.hpp"

namespace logic {

std::unique_ptr<LogicBank> LogicBank::dump(SalsaStream* stream, uintptr_t offset) {
    auto bank = std::make_unique<LogicBank>();

    stream->seekg(offset);
    bank->block_count = stream->read<u32>() / 2;

    for (int i = 0; i < bank->block_count; i++) {
        bank->headers.emplace_back(std::make_unique<BlockHeader>(stream));
    }

    bank->total_size = stream->read<u32>();

    for (int h = 0; h < bank->block_count; h++) {
        stream->seekg(pad_to<4>(stream->tellg()), std::ios::beg);
        auto& header = bank->headers[h];

        // std::cerr << std::hex << "block " << h << " at " << stream->tellg() << std::endl;

        if (!header->isNulled()) {
            // assert(stream->tellg() == offset + header->start());
        }

        // calculate block size from next header
        // or, if last non-null header, calculate block size from total size
        auto next_header = bank->nextGoodHeader(h);
        s32 content_size = next_header != bank->headers.end() ?
                               (*next_header)->start() - header->startContent() :
                               bank->total_size - header->startContent();
        if (next_header != bank->headers.end()) {
            // std::cerr << "next header at " << (*next_header)->start() << std::endl;
            // std::cerr << "this header at " << header->start() << std::endl;
        }
        bank->blocks.emplace_back(header->dumpBlock(stream, content_size));
    }

    return bank;
}

BlockHeader::BlockHeader(SalsaStream* stream) {
    start_script_headers = stream->read<u32>();
    start_scripts = stream->read<u32>();
}

std::unique_ptr<Block> BlockHeader::dumpBlock(SalsaStream* stream, s32 content_size) const {
    if (isNulled()) {
        // std::cerr << "Null block at " << std::hex << stream->tellg() << std::endl;
        return std::make_unique<Block>();
    }

    if (isEmpty()) {
        // std::cerr << "Empty block at " << std::hex << stream->tellg() << std::endl;

        assert(0);  // we dont know how to handle this yet

        auto block = std::make_unique<Block>();
        block->scripts.emplace_back(std::make_unique<Script>());
        stream->seekg((long)stream->tellg() + 4, std::ios::beg);
        return block;
    }

    return std::make_unique<Block>(stream, content_size);
}

Block::Block(SalsaStream* stream, s32 content_size) {
    u16 script_count = stream->read<u16>();

    for (int i = 0; i < script_count; i++) {
        headers.emplace_back(ScriptHeader(stream->read<u16>() * 4));
    }

    stream->seekg(pad_to<4>(stream->tellg()), std::ios::beg);
    u32 start = stream->tellg();  // this *should* be the same as in the block header

    // std::cerr << std::hex << "content start: " << start << std::endl;
    // std::cerr << "content size: " << std::hex << content_size << std::endl;
    // std::cerr << std::hex << "script count: " << script_count << std::endl;

    assert(headers.size() >= 5);

    // read the weird beginning stuff?
    if (script_count == 5) {
        scripts.emplace_back(std::make_unique<Script>(stream, content_size));
    } else {
        scripts.emplace_back(std::make_unique<Script>(stream, headers[5].offset - ((long)stream->tellg() - start)));
    }

    for (int i = 5; i < script_count; i++) {
        auto& header = headers[i];

        // scripts are in order
        assert(stream->tellg() == start + headers[i].offset);

        s32 script_size = content_size - headers.back().offset;
        if (i != headers.size() - 1) {
            script_size = headers[i + 1].offset - header.offset;
        }

        // std::cerr << std::hex << "script " << i << " size: " << script_size
        //           << " offset: " << stream->tellg() << std::endl;

        scripts.emplace_back(std::make_unique<Script>(stream, script_size));
    }
}

}  // namespace logic
