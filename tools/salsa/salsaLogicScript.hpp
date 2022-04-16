#pragma once

#include <list>
#include <sstream>
#include <vector>
#include "salsa.hpp"

namespace logic {

extern const std::vector<u8> logic_argmap;
extern const std::vector<u8> math_argmap;
extern const std::vector<std::string> ext_cmd_names;
extern const std::vector<std::string> math_cmd_names;

// Retrieves messages from a file called eng_script.txt, based on text id.
struct MsgCommentHelper {
    static bool loaded;
    static std::vector<std::string> comments;

    static std::string find_msg(const std::string& bank, const std::string& idx) {
        if (!loaded) {
            std::ifstream ifs("eng_script.txt");
            std::string line;
            while (std::getline(ifs, line)) {
                comments.push_back(line);
            }
            loaded = true;
        }

        auto id_str = bank + "-" + idx + ":";
        for (auto& comment : comments) {
            if (comment.find(id_str) == 0) {
                return comment;
            }
        }
        return "?msg?";
    }

    static std::string find_glob_msg(const std::string& idx) { return find_msg("0", idx); }
};

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

    Command(u32 raw) : raw(raw) {}
    virtual ~Command() {}

    // Process the command from its raw value. `iterator` should point to its position in a vector containing all commands.
    // This is used to collect the commands potential arguments.
    virtual void process(iterator it) = 0;
    
    // Get the string representation of this command
    virtual std::string toString() const = 0;

    // Get the string representation of this command when it is used as the argument to another command.
    virtual std::string getValueAsArg() const { return toString(); }

    // Get the number of arguments this command takes.
    virtual u32 getArgc() const { return 0; }

    // Get the number of commands this command consists of, including all arguments and their own arguments.
    virtual u32 getCommandCount() const { return 1; }

    // Disable inlining for this command and all its arguments.
    virtual void disableInlineAll() { disable_inline = true; }

    // The raw value of the command.
    u32 raw = 0;

    // The commands offset within the ROM.
    u32 rom_off = 0;

    // Whether "arguments" are inlined into the command
    bool disable_inline = false;
};

struct Frame2StackCommand : Command {
    Frame2StackCommand(u32 raw) : Command(raw) {}
    virtual ~Frame2StackCommand() {}

    void process(Command::iterator it) override {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    std::string toString() const override {
        std::stringstream ss;
        ss << "LOAD_REG(" << frame << "," << value << ")";
        return ss.str();
    }

    u32 frame = 0;
    s16 value = 0;
};

struct PushImmCommand : Command {
    PushImmCommand(u32 raw) : Command(raw) {}
    virtual ~PushImmCommand() {}

    void process(Command::iterator it) override { value = sign_extend<s32>(raw >> 8, 24); }

    std::string toString() const override {
        std::stringstream ss;
        ss << "PUSH " << value;
        return ss.str();
    }

    std::string getValueAsArg() const override { return std::to_string(value); }

    s32 value;
};

struct FrameAddrCommand : Command {
    FrameAddrCommand(u32 raw) : Command(raw) {}
    virtual ~FrameAddrCommand() {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    void process(Command::iterator it) override {}
    std::string toString() const override {
        std::stringstream ss;
        ss << "REG_ADDR(" << frame << "," << value << ")";
        return ss.str();
    }

    u32 frame = 0;
    s32 value = 0;
};

struct Stack2FrameCommand : Command {
    Stack2FrameCommand(u32 raw) : Command(raw) {}
    virtual ~Stack2FrameCommand() {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    void process(Command::iterator it) override { arg = *--it++; }

    std::string toString() const override {
        std::stringstream ss;
        if (disable_inline) {
            ss << arg->toString() << "\n";
            ss << "STORE_REG(" << frame << "," << value << ")";
        } else {
            ss << "STORE_REG(" << arg->getValueAsArg() << "," << frame << "," << value << ")";
        }
        return ss.str();
    }

    u32 getArgc() const override { return arg != nullptr ? 1 : 0; }
    u32 getCommandCount() const override {
        int count = 1;
        if (arg != nullptr) {
            count += arg->getCommandCount();
        }
        return count;
    }
    virtual void disableInlineAll() override {
        disable_inline = true;
        if (arg != nullptr) {
            arg->disableInlineAll();
        }
    }

    u32 frame = 0;
    s16 value = 0;
    Command* arg = nullptr;
};

struct ExtendedCommand : Command {
    ExtendedCommand(u32 raw) : Command(raw) {}
    virtual ~ExtendedCommand() {}

    void process(Command::iterator it) override {
        func = raw >> 16;
        assert(func <= 0xFF);

        // Look up the argument count
        argc = logic_argmap[func];
        if (argc == 0)
            return;

        args.reserve(argc);

        // Assume all arguments are loaded right before the call.
        it -= argc;
        for (int i = 0; i < argc; i++) {
            args.emplace_back(*it++);
        }
        assert(*it == this);
    }

    std::string toString() const override {
        std::stringstream ss;

        if (disable_inline) {
            for (int i = 0; i < argc; i++) {
                ss << args[i]->toString() << "\n";
            }
            ss << ext_cmd_names[func] << "()";
        } else {
            ss << ext_cmd_names[func];
            ss << "(";
            for (int i = 0; i < argc; i++) {
                if (i != 0)
                    ss << ", ";
                ss << args[i]->getValueAsArg();
            }
            ss << ")";
        }

        // Write out the message being retrieved by text disp commands
        if (func == 0x32) {
            ss << " // local bank msg " << args[2]->getValueAsArg();
        } else if (func == 0x33) {
            ss << " // " << MsgCommentHelper::find_glob_msg(args[2]->getValueAsArg());
        }

        return ss.str();
    }

    u32 getArgc() const override { return argc; }
    u32 getCommandCount() const override {
        int count = 1;
        for (auto& arg : args) {
            count += arg->getCommandCount();
        }
        return count;
    }
    virtual void disableInlineAll() override {
        disable_inline = true;
        for (auto& arg : args) {
            arg->disableInlineAll();
        }
    }

    u32 func = 0;
    u32 argc = 0;
    std::vector<Command*> args;
};

struct CallfCommand : Command {
    CallfCommand(u32 raw) : Command(raw) {}
    virtual ~CallfCommand() {}

    void process(Command::iterator it) override {
        frame = (raw >> 8) & 0xFF;
        func = (raw >> 16) & 0xFFFF;
    }

    std::string toString() const override {
        std::stringstream ss;
        ss << "CALL_REG(" << frame << ", func_" << func << ")";
        return ss.str();
    }

    u32 frame = 0;
    u32 func = 0;
};

struct RetfCommand : Command {
    RetfCommand(u32 raw) : Command(raw) {}
    virtual ~RetfCommand() {}

    void process(Command::iterator it) override {
        frame = (raw >> 8) & 0xFF;
        func = (raw >> 16) & 0xFFFF;
    }
    std::string toString() const override {
        std::stringstream ss;
        ss << "RET_REG(" << frame << "," << func << ")";
        return ss.str();
    }

    u32 frame = 0;
    u32 func = 0;
};

struct CallCommand : Command {
    CallCommand(u32 raw) : Command(raw) {}
    virtual ~CallCommand() {}

    void process(Command::iterator it) override {
        frame = (raw >> 8) & 0xFF;
        lbl = (raw >> 16) & 0xFFFF;
    }

    std::string toString() const override {
        std::stringstream ss;
        ss << "CALL(" << frame << "," << "lbl_" << lbl << ")";
        return ss.str();
    }

    u32 frame = 0;
    u32 lbl = 0;
};

struct RetCommand : Command {
    RetCommand(u32 raw) : Command(raw) {
        frame = (raw >> 8) & 0xFF;
        func = (raw >> 16) & 0xFFFF;
    }
    virtual ~RetCommand() {}

    void process(Command::iterator it) override {}
    std::string toString() const override {
        std::stringstream ss;
        ss << "RET(" << frame << "," << func << ")";
        return ss.str();
    }

    u32 frame = 0;
    u32 func = 0;
};

struct EndCommand : Command {
    EndCommand(u32 raw) : Command(raw) {}
    virtual ~EndCommand() {}

    void process(Command::iterator it) override {}
    std::string toString() const override { return "END"; }
};

struct FramePushCommand : Command {
    FramePushCommand(u32 raw) : Command(raw) {}
    virtual ~FramePushCommand() {}

    void process(Command::iterator it) override {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    std::string toString() const override {
        std::stringstream ss;
        ss << "PUSH_REG(" << frame << "," << value << ")";
        return ss.str();
    }

    u32 frame = 0;
    s16 value = 0;
};

struct SpAllocCommand : Command {
    SpAllocCommand(u32 raw) : Command(raw) {}
    virtual ~SpAllocCommand() {}

    void process(Command::iterator it) override { value = raw >> 8; }

    std::string toString() const override {
        std::stringstream ss;
        ss << "SP_ALLOC(" << value << ")";
        return ss.str();
    }

    u32 value = 0;
};

struct JumpCommand : Command {
    JumpCommand(u32 raw) : Command(raw) {}
    virtual ~JumpCommand() {}

    void process(Command::iterator it) override { dest = raw >> 16; }

    std::string toString() const override {
        std::stringstream ss;
        ss << "GOTO lbl_" << dest;
        return ss.str();
    }

    u32 dest = 0;
};

struct JumpIfCommand : Command {
    JumpIfCommand(u32 raw) : Command(raw) {}
    virtual ~JumpIfCommand() {}

    void process(Command::iterator it) override { dest = raw >> 16; }

    std::string toString() const override {
        std::stringstream ss;
        ss << "FALSE GOTO lbl_" << dest;
        return ss.str();
    }

    u32 dest = 0;
};

struct MathCommand : Command {
    MathCommand(u32 raw) : Command(raw) {}
    virtual ~MathCommand() {}

    void process(Command::iterator it) override {
        func = raw >> 8;
        assert(func <= 0x13);

        // argument count for the math command
        argc = math_argmap[func];
        if (argc == 0)
            return;

        args.reserve(argc);
        // lets assume everything is loaded right before the call
        it -= argc;
        for (int i = 0; i < argc; i++) {
            args.emplace_back(*it++);
        }
        assert(*it == this);
    }

    std::string toString() const override {
        std::stringstream ss;

        if (disable_inline) {
            for (int i = 0; i < argc; i++) {
                ss << args[i]->toString() << "\n";
            }
            ss << math_cmd_names[func] << "()";
        } else {
            ss << math_cmd_names[func];
            if (argc != 0) {
                ss << "(";
                for (int i = 0; i < argc; i++) {
                    if (i != 0)
                        ss << ", ";
                    ss << args[i]->getValueAsArg();
                }
                ss << ")";
            }
        }

        return ss.str();
    }

    u32 getArgc() const override { return argc; }
    u32 getCommandCount() const override {
        int count = 1;
        for (auto& arg : args) {
            count += arg->getCommandCount();
        }
        return count;
    }
    virtual void disableInlineAll() override {
        disable_inline = true;
        for (auto& arg : args) {
            arg->disableInlineAll();
        }
    }

    u32 func = 0;
    u32 argc = 0;
    std::vector<Command*> args;
};

struct Script {
    Script() = default;
    Script(SalsaStream* stream, s32 size) {
        assert(size % 4 == 0);
        int num_commands = size / 4;

        commands.reserve(num_commands);
        for (int i = 0; i < num_commands; i++) {
            u32 cmd = stream->read<u32>();
            switch (cmd & 0xFF) {
            case Command::Frame2Stack:
                commands.emplace_back(new Frame2StackCommand(cmd));
                break;
            case Command::PushImm:
                commands.emplace_back(new PushImmCommand(cmd));
                break;
            case Command::FrameAddr:
                commands.emplace_back(new FrameAddrCommand(cmd));
                break;
            case Command::Stack2Frame:
                commands.emplace_back(new Stack2FrameCommand(cmd));
                break;
            case Command::Extended:
                commands.emplace_back(new ExtendedCommand(cmd));
                break;
            case Command::Callf:
                commands.emplace_back(new CallfCommand(cmd));
                global_targets.emplace_back(cmd >> 16);
                break;
            case Command::Retf:
                commands.emplace_back(new RetfCommand(cmd));
                break;
            case Command::Call:
                commands.emplace_back(new CallCommand(cmd));
                local_targets.emplace_back(cmd >> 16);
                break;
            case Command::Ret:
                commands.emplace_back(new RetCommand(cmd));
                break;
            case Command::End:
                commands.emplace_back(new EndCommand(cmd));
                break;
            case Command::FramePush:
                commands.emplace_back(new FramePushCommand(cmd));
                break;
            case Command::SpAlloc:
                commands.emplace_back(new SpAllocCommand(cmd));
                break;
            case Command::Jump:
                commands.emplace_back(new JumpCommand(cmd));
                local_targets.emplace_back(cmd >> 16);
                break;
            case Command::JumpIf:
                commands.emplace_back(new JumpIfCommand(cmd));
                local_targets.emplace_back(cmd >> 16);
                break;
            case Command::Math:
                commands.emplace_back(new MathCommand(cmd));
                break;
            default:
                assert(false);  // invalid or garbage
                break;
            }
            commands.back()->rom_off = stream->tellg();
        }

        // Process all the commands
        for (Command::iterator it = commands.begin(); it != commands.end(); ++it) {
            (*it)->process(it);
            u32 argc = (*it)->getArgc();

            // Remove any commands that were determined to be arguments
            if (argc > 0)
                it = commands.erase(it - argc, it);
        }

        /* we sort in convLogic.cpp */
        // local_targets.sort();
        // local_targets.unique();
    }

    virtual ~Script() {
        while (!commands.empty()) {
            delete commands.back();
            commands.pop_back();
        }
    }

    std::vector<Command*> commands;
    std::list<u32> local_targets;
    std::list<u32> global_targets;
};

}  // namespace logic
