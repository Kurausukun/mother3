#include <vector>
#include "salsa.hpp"

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
