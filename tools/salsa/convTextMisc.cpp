#include <array>
#include <cassert>
#include <tuple>
#include "salsaText.hpp"

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
