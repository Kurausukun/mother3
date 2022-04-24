#include <list>
#include "salsaLogic.hpp"

using namespace logic;

extern const std::vector<std::string> s_cmd_names;
extern const std::vector<std::string> s_ext_cmd_names;
extern const std::vector<std::string> s_math_cmd_names;

void salsa_logic_read(SalsaStream& src, SalsaPath& dest) {
    SalsaStream desc(dest);

    std::cerr << "Reading logic" << std::endl;
    auto bank = LogicBank::dump(&src, cLogicOffset);

    log_results(bank.get());

    std::cerr << "Parsing logic" << std::endl;

    std::list<u32> combined_globals;
    // collect all global references from all blocks and their scripts
    // global "functions" that can be called from anywhere
    for (auto& block : bank->blocks) {
        for (auto& script : block->scripts) {
            combined_globals.merge(script->global_targets);
        }
    }
    combined_globals.sort();
    combined_globals.unique();
    auto globl_it = combined_globals.begin();
    int globl_pc = 0;

    for (int i = 0; i < bank->blocks.size(); ++i) {
        auto& block = bank->blocks[i];

        // combine all local references from scripts in this block
        // scripts can jump locally to each other if they are in the same block (?)
        std::list<u32> combined_lbls;
        for (auto& script : block->scripts) {
            combined_lbls.merge(script->local_targets); 
        }
        combined_lbls.sort();
        combined_lbls.unique();
        auto local_it = combined_lbls.begin();
        int local_pc = 0;

        auto check_emit_label = [&]() {
            // check label references
            while (*local_it <= local_pc && local_it != combined_lbls.end()) {
                // check if we passed any queued ones (oh shit)
                if (*local_it != local_pc) {
                    desc << "//! (local) iterator = " << *local_it << " but pc = " << local_pc << std::endl;
                }
                // write the label
                desc << "lbl_" << *local_it << ":" << std::endl;
                local_it++;
            }
            // check global references
            while (*globl_it <= globl_pc && globl_it != combined_globals.end()) {
                // check if we passed any queued ones (oh shit)
                if (*globl_it != globl_pc) {
                    desc << "//! (global) iterator = " << *globl_it << " but pc = " << globl_pc << std::endl;
                }
                // write the global
                desc << "func_" << *globl_it << ":" << std::endl;
                globl_it++;
            }
        };

        for (int j = 0; j < block->scripts.size(); ++j) {
            auto& script = block->scripts[j];

            desc << "@script " << i << ", " << j << std::endl;

            for (auto& cmd : script->commands) {
                check_emit_label();

                // label is referenced in between arguments, so we cant inline them
                if (local_pc + cmd->getArgc() > *local_it) {
                    cmd->disableInlineAll();
                }

                desc << std::hex << "/* " << cmd->rom_off << " " << std::dec << local_pc << " */ " << std::dec;

                // check if we need to emit a label between arguments
                if (cmd->getArgc() != 0 && cmd->disable_inline) {
                    // cmd->toString() will provide a multiline uninlined string if disable_inline is set
                    // this is a pretty hacky way to split it and check every line for a potential label
                    std::stringstream ss(cmd->toString());
                    std::string line;
                    for (int k = 0; k < cmd->getArgc() + 1; ++k) {
                        check_emit_label();
                        if (std::getline(ss, line)) {
                            desc << line << std::endl;
                        }
                        local_pc++;
                        globl_pc++;
                    }
                } else {
                    desc << cmd->toString() << std::endl;
                    local_pc += cmd->getCommandCount();
                    globl_pc += cmd->getCommandCount();
                }

                // This is a check to make sure the PC is not desynced from the total offset
                // todo, check in all blocks
                if (i == 0 /* first block */) {
                    assert(globl_pc - 1 == (cmd->rom_off - 0x119ab98) >> 2 || (std::cerr << cmd->rom_off << std::endl, false));
                }
            }
        }
    }
}

void salsa_logic_write(SalsaPath& src, SalsaStream& dest) {
    SalsaStream desc(src);

    std::cerr << "Parsing logic" << std::endl;
    auto bank = LogicBank::parse(&desc);

    std::cerr << "Writing logic" << std::endl;
    dest << "FIX ME SOON" << std::endl;

    /**
     * first script test
     */

    SalsaStream out("myscript.bin");
    for (auto& cmd : bank->blocks[0]->scripts[0]->commands) {
        auto bytes = cmd->toBytes();
        for (auto& b : bytes) {
            out.write<u32>(b);
        }
    }

    log_results(bank.get(), true);
}
