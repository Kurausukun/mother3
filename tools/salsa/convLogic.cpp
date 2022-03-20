#include <list>
#include "salsaLogic.hpp"

using namespace logic;

extern const std::vector<std::string> s_cmd_names;
extern const std::vector<std::string> s_ext_cmd_names;
extern const std::vector<std::string> s_math_cmd_names;

void salsa_logic_read(SalsaStream& src, SalsaPath& dest) {
    SalsaStream desc(dest);

    // create a temp file fstream
    SalsaStream tmp(std::filesystem::temp_directory_path() / "salsa_logic_read.tmp");

    auto bank = LogicBank::dump(&src, cLogicOffset);

    for (int i = 0; i < bank->blocks.size(); ++i) {
        auto& block = bank->blocks[i];

        int pc = 0;

        std::list<u32> combined_lbls;
        for (auto& script : block->scripts) {
            combined_lbls.merge(script->local_targets); 
        }
        combined_lbls.sort();
        combined_lbls.unique();

        auto lit = combined_lbls.begin();

        for (int j = 0; j < block->scripts.size(); ++j) {
            auto& script = block->scripts[j];

            desc << "// Script " << i << "-" << j << "\n";

            for (auto& cmd : script->commands) {
                desc << cmd->toString() << "\n";

                while (*lit <= pc && lit != combined_lbls.end()) {
                    if (*lit != pc)
                        desc << "// warn: lit != pc\n";
                    desc << "lbl_" << lit << ":\n";
                    lit++;
                }
                pc += 1 + cmd->getArgc();
            }

            /*
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

                desc << std::hex << local_pc << "\t\t";

                switch (cmd) {
                // pop from frame to stack?
                case 0x0: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    s16 value = (opcode >> 16) & 0xFFFF;
                    desc << "pop [" << frame << ":" << value << "], sp" << std::endl;
                    break;
                }
                // push imm to stack
                case 0x1: {
                    desc << "push #" << sarg << std::endl;
                    break;
                }
                // address of frame value?
                case 0x2: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "addr [" << frame << ":" << value << "]" << std::endl;
                    break;
                }
                // pop stack to frame?
                case 0x3: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "pop sp, [" << frame << ":" << value << "]" << std::endl;
                    break;
                }
                case 0x4: {
                    desc << s_ext_cmd_names[opcode >> 16] << std::endl;
                    break;
                }
                case 0x5: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "callf " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x6: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "retf " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x7: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "call " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x8: {
                    u32 frame = (opcode >> 8) & 0xFF;
                    u32 value = (opcode >> 16) & 0xFFFF;
                    desc << "ret " << value << " fp " << frame << std::endl;
                    break;
                }
                case 0x9: {
                    desc << "end " << (opcode >> 8) << std::endl;
                    break;
                }
                case 0xA: {
                    u32 frame = (opcode >> 8);
                    desc << "push fp " << frame << std::endl;
                    break;
                }
                case 0xB: {
                    u32 value = (opcode >> 8);
                    desc << "add sp " << value << std::endl;
                    break;
                }
                case 0xC: {
                    u32 offset = (opcode >> 16);
                    desc << "j loc_" << offset << std::endl;
                    break;
                }
                case 0xD: {
                    u32 offset = (opcode >> 16);
                    desc << "jz loc_" << offset << std::endl;
                    break;
                }
                case 0xE: {
                    desc << s_math_cmd_names[opcode >> 8] << std::endl;
                    break;
                }
                default:
                    assert(0);
                    break;
                }

                local_pc++;
            }

            if (j == 0) {
                desc << "####end special####" << std::endl;
            }
            */
        }
    }
}

void salsa_logic_write(SalsaPath& src, SalsaStream& dest) {
    SalsaStream desc(src);

    dest << "FIXME" << std::endl;
}
