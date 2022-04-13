#pragma once

#include <algorithm>
#include <cassert>
#include <list>
#include <vector>
#include "salsa.hpp"
#include "salsaLogicScript.hpp"

const uintptr_t cLogicOffset = 0x1198C10;

void salsa_logic_read(SalsaStream& src, SalsaPath& dest);
void salsa_logic_write(SalsaPath& src, SalsaStream& dest);

namespace logic {

struct ScriptHeader {
    ScriptHeader(u16 offset) : offset(offset) {}

    u16 offset;
};

struct Block {
    Block() = default;
    Block(SalsaStream* stream, s32 content_size);
    u32 script_count;
    std::vector<ScriptHeader> headers;
    std::vector<std::unique_ptr<Script> > scripts;
};

struct BlockHeader {
    BlockHeader(SalsaStream* stream);

    bool isNulled() const { return start_script_headers == 0; }

    bool isEmpty() const { return start_script_headers == start_scripts; }

    u32 startContent() const { return start_scripts; }

    std::unique_ptr<Block> dumpBlock(SalsaStream* stream, s32 size) const;

    u32 start() const { return start_script_headers; }

    u32 start_script_headers;
    u32 start_scripts;
};

struct LogicBank {
    static std::unique_ptr<LogicBank> dump(SalsaStream* stream, uintptr_t offset);

    auto nextGoodHeader(int cur) {
        return std::find_if(headers.begin() + cur + 1, headers.end(),
                            [](const auto& n) { return !n->isNulled(); });
    }

    u32 block_count;
    std::vector<std::unique_ptr<BlockHeader> > headers;
    u32 total_size;
    std::vector<std::unique_ptr<Block> > blocks;
};

}  // namespace logic
