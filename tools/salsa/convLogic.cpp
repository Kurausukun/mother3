#include <list>
#include "salsaLogic.hpp"

using namespace logic;

extern const std::vector<std::string> s_cmd_names;
extern const std::vector<std::string> s_ext_cmd_names;
extern const std::vector<std::string> s_math_cmd_names;

template <class T>
T sign_extend(T x, const int bits) {
    T m = 1;
    m <<= bits - 1;
    return (x ^ m) - m;
}

void salsa_logic_read(SalsaStream& src, SalsaPath& dest) {
    SalsaStream desc(dest);

    // create a temp file fstream
    SalsaStream tmp(std::filesystem::temp_directory_path() / "salsa_logic_read.tmp");

    auto bank = LogicBank::dump(&src, cLogicOffset);

    for (int i = 0; i < bank->blocks.size(); ++i) {
        auto& block = bank->blocks[i];

        for (int j = 0; j < block->scripts.size(); ++j) {
            auto& script = block->scripts[j];

            desc << std::dec << i << "-" << j << ":" << std::endl;
            if (j == 0) {
                desc << "####begin special####" << std::endl;
            }

            int local_pc = 0;
            for (auto opcode : script.opcodes) {
                auto cmd = opcode & 0xFF;
                auto sarg = sign_extend<s32>(opcode >> 8, 24);

                if (script.local_targets.size() != 0 && script.local_targets.front() <= local_pc) {
                    desc << "loc_" << std::hex << script.local_targets.front() << ":" << std::endl;
                    script.local_targets.pop_front();
                }

                tmp << std::hex << local_pc << "\t\t";

                switch (cmd) {
                // pop from frame to stack?
                case 0x0: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    s16 value = (opcode >> 16) & 0xFFFF;
                    tmp << "pop [" << frame << ":" << value << "], sp" << std::endl;
                    break;
                }
                // push imm to stack
                case 0x1: {
                    tmp << "push #" << sarg << std::endl;
                    break;
                }
                // address of frame value?
                case 0x2: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "addr [" << frame << ":" << value << "]" << std::endl;
                    break;
                }
                // pop stack to frame?
                case 0x3: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "pop sp, [" << frame << ":" << value << "]" << std::endl;
                    break;
                }
                case 0x4: {
                    tmp << s_ext_cmd_names[opcode >> 16] << std::endl;
                    break;
                }
                case 0x5: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "callf " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x6: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "retf " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x7: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "call " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x8: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    tmp << "ret " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x9: {
                    tmp << "end " << (opcode >> 8) << std::endl;
                    break;
                }
                case 0xA: {
                    u32 frame = (opcode >> 8);
                    tmp << "push fp " << frame << std::endl;
                    break;
                }
                case 0xB: {
                    u32 value = (opcode >> 8);
                    tmp << "add sp " << value << std::endl;
                    break;
                }
                case 0xC: {
                    u32 offset = (opcode >> 16);
                    tmp << "j loc_" << offset << std::endl;
                    break;
                }
                case 0xD: {
                    u32 offset = (opcode >> 16);
                    tmp << "jz loc_" << offset << std::endl;
                    break;
                }
                case 0xE: {
                    tmp << s_math_cmd_names[opcode >> 8] << std::endl;
                    break;
                }
                default:
                    assert(0);
                    break;
                }

                local_pc++;
            }

            if (j == 0) {
                tmp << "####end special####" << std::endl;
            }
        }
    }
}

void salsa_logic_write(SalsaPath& src, SalsaStream& dest) {
    SalsaStream desc(src);

    dest << "FIXME" << std::endl;
}

const std::vector<std::string> s_cmd_names = {
    "read_reg",      "push",   "push_reg",    "write_reg", "extended",
    "call_script",   "ret",    "jump_script", "jret",      "end",
    "write_reg_imm", "add_sp", "jump",        "jz",        "math",
};

const std::vector<std::string> s_ext_cmd_names = {
    "cmd_delay",
    "cmd_set_anim_speed",
    "00000000      ",
    "cmd_load_subscript",
    "cmd_04",
    "cmd_05",
    "cmd_06",
    "cmd_07",
    "cmd_reload_room",
    "00000000      ",
    "cmd_set_flag",
    "cmd_0B",
    "cmd_0C",
    "cmd_push_flag",
    "cmd_0E",
    "cmd_0F",
    "cmd_flag_equals",
    "cmd_11",
    "cmd_12",
    "00000000      ",
    "cmd_14",
    "cmd_push_map_id",
    "cmd_add_pocket",
    "cmd_push_pocket",
    "cmd_set_key_item",
    "cmd_get_item_count",
    "cmd_get_party_size",
    "cmd_has_party_member",
    "cmd_has_party_member_2",
    "cmd_party_heal",
    "cmd_party_add",
    "cmd_party_remove",
    "cmd_20",
    "cmd_set_giftbox_flag",
    "cmd_get_giftbox_flag",
    "cmd_member_heal",
    "cmd_24",
    "cmd_add_bank",
    "cmd_get_bank",
    "cmd_27",
    "cmd_28",
    "cmd_29",
    "cmd_2A",
    "cmd_cfg_member",
    "cmd_cfg_member_item",
    "cmd_get_hp_pp",
    "cmd_2E",
    "cmd_2F",
    "cmd_set_ailment",
    "cmd_31",
    "cmd_disp_msg",
    "cmd_disp_msg_0",
    "cmd_34",
    "cmd_35",
    "cmd_get_msg_choice",
    "cmd_37",
    "cmd_38",
    "cmd_load_name",
    "cmd_3A",
    "cmd_3B",
    "cmd_change_room",
    "cmd_3D",
    "cmd_3E",
    "cmd_3F",
    "cmd_pan_to_pos",
    "cmd_41",
    "cmd_pan_to_map_pos",
    "cmd_43",
    "cmd_44",
    "cmd_45",
    "cmd_46",
    "cmd_47",
    "cmd_48",
    "cmd_cam_follow_sprite",
    "cmd_4A",
    "cmd_4B",
    "cmd_4C",
    "cmd_4D",
    "cmd_4E",
    "cmd_4F",
    "cmd_50",
    "cmd_play_anim",
    "cmd_linemove",
    "cmd_53",
    "cmd_54",
    "cmd_55",
    "cmd_56",
    "cmd_57",
    "cmd_58",
    "cmd_59",
    "cmd_5A",
    "cmd_5B",
    "cmd_5C",
    "cmd_set_member_sprite",
    "cmd_5E",
    "cmd_5F",
    "cmd_60",
    "cmd_61",
    "cmd_62",
    "cmd_63",
    "cmd_64",
    "cmd_65",
    "cmd_66",
    "cmd_67",
    "cmd_68",
    "cmd_69",
    "cmd_6A",
    "cmd_6B",
    "cmd_6C",
    "cmd_6D",
    "cmd_set_fade",
    "cmd_fade_in",
    "cmd_play_fade",
    "cmd_71",
    "cmd_72",
    "cmd_73",
    "cmd_set_palettes",
    "cmd_75",
    "cmd_76",
    "cmd_stop_shake",
    "cmd_play_anim_above",
    "cmd_79",
    "cmd_7A",
    "cmd_7B",
    "cmd_7C",
    "cmd_7D",
    "cmd_7E",
    "cmd_7F",
    "cmd_80",
    "cmd_81",
    "cmd_play_sound_ext",
    "cmd_play_sound",
    "cmd_84",
    "cmd_85",
    "cmd_86",
    "cmd_87",
    "cmd_88",
    "cmd_set_bgm",
    "cmd_8A",
    "cmd_set_bgm_other",
    "cmd_init_battle",
    "cmd_8D",
    "cmd_8E",
    "cmd_8F",
    "cmd_90",
    "cmd_91",
    "cmd_set_gameover",
    "cmd_93",
    "00000000      ",
    "00000000      ",
    "cmd_96",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "cmd_open_shop",
    "cmd_open_save",
    "cmd_open_naming",
    "cmd_cmp_input_name",
    "cmd_open_itemguy",
    "cmd_open_bank",
    "cmd_A6",
    "00000000      ",
    "00000000      ",
    "00000000      ",
    "cmd_restart",
    "cmd_set_movement_property",
    "cmd_AC",
    "cmd_AD",
    "cmd_AE",
    "cmd_AF",
    "cmd_B0",
    "cmd_B1",
    "00000000      ",
    "00000000      ",
    "cmd_B4",
    "cmd_load_sprite_table",
    "cmd_disp_text_special",
    "cmd_B7",
    "cmd_B8",
    "cmd_B9",
    "cmd_BA",
    "cmd_BB",
    "cmd_BC",
    "cmd_BD",
    "cmd_BE",
    "cmd_BF",
    "cmd_C0",
    "cmd_get_talker_sprite",
    "cmd_C2",
    "cmd_C3",
    "cmd_C4",
    "cmd_C5",
    "cmd_C6",
    "cmd_C7",
    "cmd_C8",
    "cmd_C9",
    "cmd_CA",
    "cmd_CB",
    "cmd_CC",
    "cmd_CD",
    "cmd_CE",
    "cmd_CF",
    "cmd_D0",
    "cmd_D1",
    "cmd_D2",
    "cmd_D3",
    "cmd_set_volume",
    "cmd_D5",
    "cmd_D6",
    "cmd_D7",
    "cmd_set_logo_disp",
    "cmd_D9",
    "cmd_DA",
    "cmd_DB",
    "cmd_DC",
    "cmd_DD",
    "cmd_DE",
    "cmd_DF",
    "cmd_E0",
    "cmd_E1",
    "cmd_play_sfx",
    "cmd_E3",
    "cmd_E4",
    "cmd_E5",
    "cmd_E6",
    "cmd_E7",
    "cmd_E8",
    "cmd_E9",
    "cmd_EA",
    "cmd_EB",
    "cmd_get_char_lvl",
    "cmd_heal_hp",
    "cmd_heal_pp",
    "cmd_set_psi",
    "cmd_F0",
    "cmd_F1",
    "cmd_F2",
    "cmd_F3",
    "cmd_F4",
    "cmd_F5",
    "cmd_disp_staffroll",
    "cmd_F7",
    "cmd_F8",
    "cmd_F9",
    "cmd_FA",
    "cmd_put_ocho",
    "cmd_get_ocho",
    "cmd_FD",
    "cmd_FE",
    "cmd_FF",
};

const std::vector<std::string> s_math_cmd_names = {
    "neg", "add", "sub", "mul", "div", "mod", "inc",  "dec",     "and",      "or",
    "eq",  "neq", "gt",  "lt",  "gte", "lte", "copy", "popnoop", "popnoop2", "noop",
};
