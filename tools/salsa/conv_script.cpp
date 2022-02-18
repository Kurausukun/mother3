#include <algorithm>
#include <cassert>
#include <cstring>
#include <sstream>
#include "salsa_text.hpp"

std::vector<BlockSpec> makeSpec() {
    std::vector<BlockSpec> spec;
    for (int i = 0; i < 1001; i++) {
        spec.emplace_back(BlockSpec{
            TextBlockType::DynamicMsg,
            -1,
        });
    }
    return spec;
}

static const std::vector<BlockSpec> s_script_spec = makeSpec();

void salsa_maintext_read(SalsaStream& src, SalsaPath& dest) {
    SalsaStream file(dest);
    auto bank = TextBank::dump(&src, cScriptOffset, s_script_spec);

    for (int i = 0; i < bank->block_count; ++i) {
        auto& block = bank->blocks[i];
        if (block.isNulled()) {
            continue;
        }
        for (int j = 0; j < block.messages.size(); ++j) {
            auto& message = block.messages[j];

            file << std::dec << i << "-" << j << ":";
            file << message.text << std::endl;
        }
    }
}

void salsa_maintext_write(SalsaPath& src, SalsaStream& dest) {
    SalsaStream file(src);
    TextBank::write(&file, &dest);
}
