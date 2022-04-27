#pragma once

#include <algorithm>
#include <cassert>
#include <cstring>
#include <list>
#include <sstream>
#include <vector>
#include "salsa.hpp"
#include "salsaLogic.hpp"

namespace logic {

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
        return "Unknown Message ???";
    }

    static std::string find_glob_msg(const std::string& idx) { return find_msg("0", idx); }
};

struct Frame2StackCommand : Command {
    Frame2StackCommand() = default;
    ~Frame2StackCommand() final = default;

    Frame2StackCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "LOAD_REG"; }
    const char* getFormat() const final { return "(%d, %hd)"; }
    std::string toString() const final { return toStringImpl(frame, value); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &value); }

    u32 frame = 0;
    s16 value = 0;
};

struct Stack2FrameCommand : Command {
    Stack2FrameCommand() = default;
    ~Stack2FrameCommand() final = default;

    Stack2FrameCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    // void process(Command::iterator it) final { arg = *--it; }

    const char* getName() const final { return "STORE_REG"; }
    const char* getFormat() const final { return "(%d, %hd)"; }

    std::string toString() const final { return toStringImpl(frame, value); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &value); }

    // std::string toString() const final {
    //     std::stringstream ss;
    //     if (arg != nullptr) {
    //         if (disable_inline) {
    //             ss << arg->toString() << "\n";
    //             ss << getName() << "(" << frame << "," << value << ")";
    //         } else {
    //             ss << getName() << "(" << arg->getValueAsArg() << "," << frame << "," << value
    //                << ")";
    //         }
    //     } else {
    //         ss << getName() << "(" << frame << "," << value << ")";
    //     }
    //     return ss.str();
    // }

    // u32 getArgc() const final { return arg != nullptr ? 1 : 0; }
    // u32 getCommandCount() const final {
    //     int count = 1;
    //     if (arg != nullptr) {
    //         count += arg->getCommandCount();
    //     }
    //     return count;
    // }
    // void disableInlineAll() final {
    //     disable_inline = true;
    //     if (arg != nullptr) {
    //         arg->disableInlineAll();
    //     }
    // }

    u32 frame = 0;
    s16 value = 0;
    // Command* arg = nullptr;
};

struct PushImmCommand : Command {
    PushImmCommand() = default;
    ~PushImmCommand() final = default;

    PushImmCommand(u32 raw) { value = sign_extend<s32>(raw >> 8, 24); }

    const char* getName() const final { return "PUSH"; }
    const char* getFormat() const final { return "(%d)"; }
    const char* getFormatInline() const final { return "%d"; }
    std::string toString() const final { return toStringImpl(value); }
    void fromString(const char* str) final { fromStringImpl(str, &value); }
    void fromStringInline(const char* str) final { sscanf(str, getFormatInline(), &value); }
    std::string getValueAsArg() const final { return mkstr("%d", value); }

    std::vector<u32> toBytes() const final { return {((u32)value << 8) | PushImm}; }

    s32 value = 0;
};

struct FrameAddrCommand : Command {
    FrameAddrCommand() = default;
    ~FrameAddrCommand() final = default;

    FrameAddrCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "REG_ADDR"; }
    const char* getFormat() const final { return "(%d, %d)"; }
    std::string toString() const final { return toStringImpl(frame, value); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &value); }

    u32 frame = 0;
    s32 value = 0;
};

struct CallfCommand : Command {
    CallfCommand() = default;
    ~CallfCommand() final = default;

    CallfCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        func = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "CALL_REG"; }

    std::string toString() const final {
        std::stringstream ss;
        ss << getName() << "(" << frame << ", func_" << func << ")";
        return ss.str();
    }

    void fromString(const char* str) final {
        sscanf(str + strlen(getName()), " (%d, func_%d)", &frame, &func);
    }

    u32 frame = 0;
    u32 func = 0;
};

struct RetfCommand : Command {
    RetfCommand() = default;
    ~RetfCommand() final = default;

    RetfCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "RET_REG"; }
    const char* getFormat() const final { return "(%d, %d)"; }
    std::string toString() const final { return toStringImpl(frame, value); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &value); }

    u32 frame = 0;
    u32 value = 0;
};

struct CallCommand : Command {
    CallCommand() = default;
    ~CallCommand() final = default;

    CallCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        lbl = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "CALL"; }

    std::string toString() const final {
        std::stringstream ss;
        ss << getName() << "(" << frame << ","
           << "lbl_" << lbl << ")";
        return ss.str();
    }

    void fromString(const char* str) final {
        sscanf(str + strlen(getName()), " (%d, lbl_%d)", &frame, &lbl);
    }

    u32 frame = 0;
    u32 lbl = 0;
};

struct RetCommand : Command {
    RetCommand() = default;
    ~RetCommand() final = default;

    RetCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        func = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "RET"; }
    const char* getFormat() const final { return "(%d, %d)"; }
    std::string toString() const final { return toStringImpl(frame, func); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &func); }

    u32 frame = 0;
    u32 func = 0;
};

struct EndCommand : Command {
    EndCommand() = default;
    ~EndCommand() final = default;

    EndCommand(u32 raw) {}

    const char* getName() const final { return "END"; }
};

struct FramePushCommand : Command {
    FramePushCommand() = default;
    ~FramePushCommand() final = default;

    FramePushCommand(u32 raw) {
        frame = (raw >> 8) & 0xFF;
        value = (raw >> 16) & 0xFFFF;
    }

    const char* getName() const final { return "PUSH_REG"; }
    const char* getFormat() const final { return "(%d, %hd)"; }
    std::string toString() const final { return toStringImpl(frame, value); }
    void fromString(const char* str) final { fromStringImpl(str, &frame, &value); }

    u32 frame = 0;
    s16 value = 0;
};

struct SpAllocCommand : Command {
    SpAllocCommand() = default;
    ~SpAllocCommand() final = default;

    SpAllocCommand(u32 raw) { value = raw >> 8; }

    const char* getName() const final { return "SP_ALLOC"; }
    const char* getFormat() const final { return "(%d)"; }
    std::string toString() const final { return toStringImpl(value); }
    void fromString(const char* str) final { fromStringImpl(str, &value); }

    std::vector<u32> toBytes() const final {
        // assert(0);
        return {SpAlloc | (value << 8)};
    }

    u32 value = 0;
};

struct JumpCommand : Command {
    JumpCommand() = default;
    ~JumpCommand() final = default;
    JumpCommand(u32 raw) { dest = raw >> 16; }

    const char* getName() const final { return "GOTO"; }

    std::string toString() const final {
        std::stringstream ss;
        ss << getName() << " lbl_" << dest;
        return ss.str();
    }

    void fromString(const char* str) final { sscanf(str + strlen(getName()), " lbl_%d", &dest); }

    u32 dest = 0;
};

struct JumpIfCommand : Command {
    JumpIfCommand() = default;
    ~JumpIfCommand() final = default;

    JumpIfCommand(u32 raw) { dest = raw >> 16; }

    const char* getName() const final { return "FALSE GOTO"; }

    std::string toString() const final {
        std::stringstream ss;
        ss << getName() << " lbl_" << dest;
        return ss.str();
    }

    void fromString(const char* str) final { sscanf(str + strlen(getName()), " lbl_%d", &dest); }

    u32 dest = 0;
};

}  // namespace logic
