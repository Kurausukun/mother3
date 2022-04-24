#pragma once

#include <algorithm>
#include <cassert>
#include <cstring>
#include <list>
#include <vector>
#include "salsa.hpp"

const uintptr_t cLogicOffset = 0x1198C10;

void salsa_logic_read(SalsaStream& src, SalsaPath& dest);
void salsa_logic_write(SalsaPath& src, SalsaStream& dest);

namespace logic {

extern const std::vector<u8> logic_argmap;
extern const std::vector<u8> math_argmap;
extern const std::vector<std::string> cmd_names;
extern const std::vector<std::string> ext_cmd_names;
extern const std::vector<std::string> math_cmd_names;

struct Command;
struct Script;

Command* parseCommand(const std::string& cmd);

// Base class for logic commands. Logic commands are 4 bytes long.
struct Command {
    using iterator = std::vector<Command*>::iterator;

    // Types of logic commands.
    enum {
        Frame2Stack = 0,
        PushImm = 1,
        FrameAddr = 2,
        Stack2Frame = 3,
        Extended = 4,
        Callf = 5,
        Retf = 6,
        Call = 7,
        Ret = 8,
        End = 9,
        FramePush = 0xa,
        SpAlloc = 0xb,
        Jump = 0xc,
        JumpIf = 0xd,
        Math = 0xe,
    };

    Command() = default;
    virtual ~Command() = default;

    // Process the command. `iterator` should point to its position in a vector
    // containing all commands. This is used to collect the commands potential arguments.
    virtual void process(iterator it) {}

    // The identifier of the command.
    virtual const char* getName() const { return ""; }

    virtual const char* getFormat() const { return ""; }

    virtual const char* getFormatInline() const { return getFormat(); }

    // Get the string representation of this command
    virtual std::string toString() const { return getName(); }

    // Interpret the command from a string.
    virtual void fromString(const char* str) {}

    // Interpret the inline command from a string.
    virtual void fromStringInline(const char* str) { return fromString(str); }

    // Get the string representation of this command when it is used as the argument to another
    // command.
    virtual std::string getValueAsArg() const { return toString(); }

    // Get the number of arguments this command takes.
    virtual u32 getArgc() const { return 0; }

    // Get the number of commands this command consists of, including all arguments and their own
    // arguments.
    virtual u32 getCommandCount() const { return 1; }

    // Disable inlining for this command and all its arguments.
    virtual void disableInlineAll() { disable_inline = true; }

    // Calculate the raw value of this command.
    virtual u32 toBytes() { return 0; }

    template <typename... Args>
    std::string toStringImpl(Args... args) const {
        char buffer[256];
        std::snprintf(buffer, sizeof(buffer), getFormat(), args...);
        return std::string(getName()) + std::string(buffer);
    }

    template <typename... Args>
    void fromStringImpl(const char* str, Args... args) const {
        sscanf(str + strlen(getName()), getFormat(), args...);
    }

    // Create a std string from format.
    template <typename... Args>
    std::string mkstr(Args... args) const {
        char buffer[256];
        std::snprintf(buffer, sizeof(buffer), args...);
        return std::string(buffer);
    }

    // The commands offset within the ROM.
    u32 rom_off = 0;

    // Whether "arguments" are inlined into the command
    bool disable_inline = false;
};

class LabelStore {
};

struct Script {
    Script() = default;
    Script(SalsaStream* stream, s32 size);

    virtual ~Script() {
        while (!commands.empty()) {
            delete commands.back();
            commands.pop_back();
        }
    }

    void append(const std::string& rep) {
        Command* c = parseCommand(rep.c_str());
        commands.emplace_back(c);
    }

    std::vector<Command*> commands;
    std::list<u32> local_targets;
    std::list<u32> global_targets;
};

struct ScriptHeader {
    ScriptHeader(u16 offset) : offset(offset) {}

    u16 offset;
};

struct Block {
    Block() = default;
    Block(SalsaStream* stream, s32 content_size);
    s32 script_count = 0;
    std::vector<ScriptHeader> headers;
    std::vector<std::unique_ptr<Script> > scripts;
};

struct BlockHeader {
    BlockHeader() = default;
    BlockHeader(SalsaStream* stream);

    bool isNulled() const { return start_script_headers == 0; }

    bool isEmpty() const { return start_script_headers == start_scripts; }

    u32 startContent() const { return start_scripts; }

    std::unique_ptr<Block> dumpBlock(SalsaStream* stream, s32 size) const;

    u32 start() const { return start_script_headers; }

    u32 start_script_headers = 0;
    u32 start_scripts = 0;
};

struct LogicBank {
    // Dump a LogicBank from ROM.
    static std::unique_ptr<LogicBank> dump(SalsaStream* stream, uintptr_t offset);

    // Parse a file containing logic data.
    static LogicBank parse(SalsaStream* stream);

    // Find the next non-nulled header.
    auto nextGoodHeader(int cur) {
        return std::find_if(headers.begin() + cur + 1, headers.end(),
                            [](const auto& n) { return !n->isNulled(); });
    }

    void calcHeader() {
        // FIXME
    }

    // Total block count (should be same as blocks.size())
    s32 block_count = 0;

    // Block headers (should be same as blocks.size() + number of nulled blocks).
    std::vector<std::unique_ptr<BlockHeader> > headers;

    // Total size of the bank.
    u32 total_size = 0;

    // Blocks contained by the bank.
    std::vector<std::unique_ptr<Block> > blocks;
};

static void log_results(LogicBank* bank, bool second = false) {
    auto f = std::fstream(second ? "first.txt" : "second.txt", std::ios::out | std::ios::trunc);

    f << "RESULTS:" << std::endl;
    f << "Block count = " << bank->blocks.size() << std::endl;
    f << "Block 0 script count = " << bank->blocks[0]->scripts.size();
    f << "Script 0 content = {" << std::endl;
    for (auto& cmd : bank->blocks[0]->scripts[0]->commands) {
        f << cmd->toString() << std::endl;
    }
    f << "RESULTS OVER" << std::endl;
}

}  // namespace logic
