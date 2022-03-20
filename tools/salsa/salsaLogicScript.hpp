#pragma once

#include <sstream>
#include <vector>
#include <list>
#include "salsa.hpp"

namespace logic {

extern const std::vector<u8> logic_argmap;
extern const std::vector<u8> math_argmap;
extern const std::vector<std::string> ext_cmd_names;
extern const std::vector<std::string> math_cmd_names;

struct MsgCommentHelper {
    static bool loaded;
    static std::vector<std::string> comments;

    static std::string find_msg(u32 bank, u32 idx) {
        if (!loaded) {
            std::ifstream ifs("eng_script.txt");
            std::string line;
            while (std::getline(ifs, line)) {
                comments.push_back(line);
            }
            loaded = true;
        }

        auto id_str = std::to_string(bank) + "-" + std::to_string(idx) + ":";
        for (auto& comment : comments) {
            if (comment.find(id_str) == 0) {
                return comment;
            }
        }
        return "?msg?";
    }

    static std::string find_glob_msg(u32 idx) { return find_msg(0, idx); }
};

struct Command {
    using iterator = std::vector<Command*>::iterator;

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

    virtual void process(iterator it) = 0;
    virtual std::string toString() const = 0;

    virtual u32 getValueAsArg() const { return 0; }
    virtual u32 getArgc() const { return 0; }

    u32 raw;
};

struct Frame2StackCommand : Command {
    Frame2StackCommand(u32 raw) : Command(raw) {}
    virtual ~Frame2StackCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "todo Frame2Stack"; }
};

struct PushImmCommand : Command {
    PushImmCommand(u32 raw) : Command(raw) {}
    virtual ~PushImmCommand() {}

    void process(Command::iterator it) override {
        value = sign_extend<s32>(raw >> 8, 24);
    }

    std::string toString() const override {
        std::stringstream ss;
        ss << "PUSH #" << value;
        return ss.str();
    }

    u32 getValueAsArg() const override { return value; }

    s32 value;
};

struct FrameAddrCommand : Command {
    FrameAddrCommand(u32 raw) : Command(raw) {}
    virtual ~FrameAddrCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "todo FrameAddr"; }
};

struct Stack2FrameCommand : Command {
    Stack2FrameCommand(u32 raw) : Command(raw) {}
    virtual ~Stack2FrameCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "todo Stack2Frame"; }
};

struct ExtendedCommand : Command {
    ExtendedCommand(u32 raw) : Command(raw) {}
    virtual ~ExtendedCommand() {}

    void process(Command::iterator it) override {
        func = raw >> 16;
        assert(func <= 0xFF);

        // argument count for the extended command
        argc = logic_argmap[func];
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

        ss << ext_cmd_names[func];
        if (argc != 0) {
            ss << "(";
            for (int i = 0; i < argc; i++) {
                if (i != 0)
                    ss << ", ";
                ss << args[i]->toString();
            }
            ss << ")";

            if (func == 0x32) {
                ss << " // local bank msg " << args[2]->getValueAsArg();
            } else if (func == 0x33) {
                ss << " // " << MsgCommentHelper::find_glob_msg(args[2]->getValueAsArg());
            }
        }
        return ss.str();
    }

    u32 getArgc() const override { return argc; }

    u32 func = 0;
    u32 argc = 0;
    std::vector<Command*> args;
};

struct CallfCommand : Command {
    CallfCommand(u32 raw) : Command(raw) {}
    virtual ~CallfCommand() {}

    void process(Command::iterator it) override {}
    std::string toString() const override { return "todo Callf"; }
};

struct RetfCommand : Command {
    RetfCommand(u32 raw) : Command(raw) {}
    virtual ~RetfCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "RETF"; }
};

struct CallCommand : Command {
    CallCommand(u32 raw) : Command(raw) {}
    virtual ~CallCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "todo Call"; }
};

struct RetCommand : Command {
    RetCommand(u32 raw) : Command(raw) {}
    virtual ~RetCommand() {}

    void process(Command::iterator it) override {  }
    std::string toString() const override { return "RET"; }
};

struct EndCommand : Command {
    EndCommand(u32 raw) : Command(raw) {}
    virtual ~EndCommand() {}

    void process(Command::iterator it) override {  }
    std::string toString() const override { return "END"; }
};

struct FramePushCommand : Command {
    FramePushCommand(u32 raw) : Command(raw) {}
    virtual ~FramePushCommand() {}

    void process(Command::iterator it) override {  }
    std::string toString() const override { return "todo FramePush"; }
};

struct SpAllocCommand : Command {
    SpAllocCommand(u32 raw) : Command(raw) {}
    virtual ~SpAllocCommand() {}

    void process(Command::iterator it) override { }
    std::string toString() const override { return "todo SpAlloc"; }
};

struct JumpCommand : Command {
    JumpCommand(u32 raw) : Command(raw) {}
    virtual ~JumpCommand() {}

    void process(Command::iterator it) override {
        dest = raw >> 16;
    }

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

    void process(Command::iterator it) override {
        dest = raw >> 16;
    }

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

        ss << math_cmd_names[func];
        if (argc != 0) {
            ss << "(";
            for (int i = 0; i < argc; i++) {
                if (i != 0)
                    ss << ", ";
                ss << args[i]->toString();
            }
            ss << ")";
        }
        return ss.str();
    }

    u32 getArgc() const override { return argc; }

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
                break;
            case Command::Retf:
                commands.emplace_back(new RetfCommand(cmd));
                break;
            case Command::Call:
                commands.emplace_back(new CallCommand(cmd));
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
        }

        for (Command::iterator it = commands.begin(); it != commands.end(); ++it) {
            (*it)->process(it);
            u32 argc = (*it)->getArgc();

            // remove the commands that were provided as arguments
            if (argc > 0)
                it = commands.erase(it - argc, it);
        }

        // PLZ SORT
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
};

}  // namespace logic
