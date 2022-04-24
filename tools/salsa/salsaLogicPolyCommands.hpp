#pragma once

#include "salsaLogicCommands.hpp"

namespace logic {

// Base class for all logic commands that have subcommands.
struct PolyCommand : Command {
    PolyCommand() = default;
    ~PolyCommand() override = default;

    // Names of types.
    virtual const std::vector<std::string>& getTypeNames() const = 0;
    // Number of arguments for a type.
    virtual const std::vector<u8>& getTypeArgcs() const = 0;

    std::string getTypeName() const { return getTypeNames().at(type); }
    u32 getTypeArgc() const { return getTypeArgcs().at(type); }

    std::string toString() const override {
        std::stringstream ss;

        if (disable_inline) {
            int n = getTypeArgc();
            for (int i = 0; i < n; i++) {
                ss << args[i]->toString() << "\n";
            }
            ss << getTypeName() << "()";
        } else {
            ss << getTypeName();
            ss << "(";
            int n = getTypeArgc();
            for (int i = 0; i < n; i++) {
                if (i != 0)
                    ss << ", ";
                ss << args[i]->getValueAsArg();
            }
            ss << ")";
        }
        return ss.str();
    }

    void fromString(const char* str) override {
        std::string s = str;
        auto lparen_idx = s.find_first_of("(");
        auto rparen_idx = s.find_last_of(")");
        auto func_name = s.substr(0, lparen_idx);
        auto args_str = s.substr(lparen_idx + 1, rparen_idx - lparen_idx - 1);

        auto names = getTypeNames();

        type =
            std::distance(names.begin(),
                          std::find(names.begin(), names.end(), func_name.c_str()));
        if (type == names.size()) {
            std::cerr << "Unknown extended command: " << str << "\n";
            exit(-1);
        }

        size_t argc = getTypeArgc();

        if (lparen_idx + 1 == rparen_idx) {
            // empty call, do nothing
            return;
        }

        auto get_cmd_len = [](const std::string& s) -> size_t {
            int scope = 0;
            for (size_t i = 0; i < s.size(); i++) {
                if (s[i] == '(') {
                    scope++;
                } else if (s[i] == ')') {
                    scope--;
                } else if (s[i] == ',' && scope == 0) {
                    return i;
                }
            }
            return -1;
        };

        size_t pos = std::string::npos;
        for (size_t i = 0; i < argc - 1; i++) {
            pos = args_str.find(",");
            assert(pos != std::string::npos);

            Command* c = nullptr;
            // if we find a "(" before a "," it's a command
            if (args_str.find("(") < pos) {
                // we do this to account for the case where we have a "," in the argument
                int cmd_len = get_cmd_len(args_str);
                if (cmd_len == -1) {
                    std::cerr << "Invalid argument: " << str << "\n";
                    exit(-1);
                }

                c = parseCommand(args_str.substr(0, cmd_len));
                args_str.erase(0, cmd_len + 1);
            } else {
                c = new PushImmCommand();
                c->fromStringInline(args_str.substr(0, pos).c_str());
                // std::cerr << "c value " << c->getValueAsArg() << "\n";
                args_str.erase(0, pos + 1);
            }
            args.emplace_back(c);
        }
        // last arg
        if (args_str.find("(") != std::string::npos) {
            args.emplace_back(parseCommand(args_str));
        } else {
            Command* c = new PushImmCommand();
            c->fromStringInline(args_str.c_str());
            // std::cerr << "c value " << c->getValueAsArg() << "\n";
            args.emplace_back(c);
        }

        assert(args.size() == argc);
    }

    u32 type = -1;
    std::vector<Command*> args;
};

struct Stack2FrameCommand : Command {
    Stack2FrameCommand() = default;
    ~Stack2FrameCommand() final = default;

    Stack2FrameCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    void process(Command::iterator it) final { arg = *--it; }

    const char* getName() const final { return "STORE_REG"; }

    std::string toString() const final {
        std::stringstream ss;
        if (arg != nullptr) {
            if (disable_inline) {
                ss << arg->toString() << "\n";
                ss << getName() << "(" << frame << "," << value << ")";
            } else {
                ss << getName() << "(" << arg->getValueAsArg() << "," << frame << "," << value
                   << ")";
            }
        } else {
            ss << getName() << "(" << frame << "," << value << ")";
        }
        return ss.str();
    }

    u32 getArgc() const final { return arg != nullptr ? 1 : 0; }
    u32 getCommandCount() const final {
        int count = 1;
        if (arg != nullptr) {
            count += arg->getCommandCount();
        }
        return count;
    }
    void disableInlineAll() final {
        disable_inline = true;
        if (arg != nullptr) {
            arg->disableInlineAll();
        }
    }

    u32 frame = 0;
    s16 value = 0;
    Command* arg = nullptr;
};

struct ExtendedCommand : PolyCommand {
    ExtendedCommand() = default;
    ~ExtendedCommand() final = default;

    ExtendedCommand(u32 raw) {
        type = raw >> 16;
        assert(type <= 0xFF);
    }

    void process(Command::iterator it) final {
        // Look up the argument count
        argc = logic_argmap[type];
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

    const std::vector<std::string>& getTypeNames() const final { return ext_cmd_names; }
    const std::vector<u8>& getTypeArgcs() const final { return logic_argmap; }

    std::string toString() const final {
        std::stringstream ss;
        ss << PolyCommand::toString();

        // Write out the message being retrieved by text disp commands
        if (type == 0x32) {
            ss << " /* local bank msg " << args[2]->getValueAsArg() << " */";
        } else if (type == 0x33) {
            ss << " /* " << MsgCommentHelper::find_glob_msg(args[2]->getValueAsArg()) << " */";
        }

        return ss.str();
    }

    u32 getArgc() const final { return argc; }
    u32 getCommandCount() const final {
        int count = 1;
        for (auto& arg : args) {
            count += arg->getCommandCount();
        }
        return count;
    }
    void disableInlineAll() final {
        disable_inline = true;
        for (auto& arg : args) {
            arg->disableInlineAll();
        }
    }

    std::vector<u32> toBytes() const final {
        std::vector<u32> rv;
        for (auto& arg : args) {
            auto arg_bytes = arg->toBytes();
            rv.insert(rv.end(), arg_bytes.begin(), arg_bytes.end());
        }
        rv.push_back(type << 16 | Extended);
        return rv;
    }

    s32 argc = 0;
};

struct MathCommand : PolyCommand {
    MathCommand() = default;
    ~MathCommand() final = default;

    MathCommand(u32 raw) {
        type = raw >> 8;
        assert(type <= 0x13);
    }

    void process(Command::iterator it) final {
        // argument count for the math command
        argc = math_argmap[type];
        if (argc == 0)
            return;

        args.reserve(argc);
        // lets assume everything is loaded right before the call
        it -= argc;
        for (u32 i = 0; i < argc; i++) {
            args.emplace_back(*it++);
        }
        assert(*it == this);
    }

    const std::vector<std::string>& getTypeNames() const final { return math_cmd_names; }

    const std::vector<u8>& getTypeArgcs() const final { return math_argmap; }

    u32 getArgc() const final { return argc; }
    u32 getCommandCount() const final {
        int count = 1;
        for (auto& arg : args) {
            count += arg->getCommandCount();
        }
        return count;
    }
    void disableInlineAll() final {
        disable_inline = true;
        for (auto& arg : args) {
            arg->disableInlineAll();
        }
    }

    u32 argc = 0;
};

}  // namespace logic
