#include "salsaLogicCommands.hpp"
#include "salsaLogicPolyCommands.hpp"

namespace logic {

Script::Script(SalsaStream* stream, s32 size) {
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

Command* parseCommand(std::string cmd) {
    Command* c = nullptr;
    cmd = trim_whitespace(cmd);

    if (cmd.find("cmd") == 0) {
        c = new ExtendedCommand();
    } else if (cmd.find("LOAD_REG") == 0) {
        c = new Frame2StackCommand();
    } else if (cmd.find("PUSH_REG") == 0) {
        c = new FramePushCommand();
    } else if (cmd.find("PUSH") == 0) {
        c = new PushImmCommand();
    } else if (cmd.find("RET_REG") == 0) {
        c = new RetfCommand();
    } else if (cmd.find("SP_ALLOC") == 0) {
        c = new SpAllocCommand();
    } else if (cmd.find("LOAD_REG") == 0) {
        c = new Frame2StackCommand();
    } else if (cmd.find("PUSH_REG") == 0) {
        c = new FramePushCommand();
    } else if (cmd.find("REG_ADDR") == 0) {
        c = new FrameAddrCommand();
    } else if (cmd.find("CALL_REG") == 0) {
        c = new CallfCommand();
    } else if (cmd.find("FALSE GOTO") == 0) {
        c = new JumpIfCommand();
    } else if (cmd.find("RET") == 0) {
        c = new RetCommand();
    } else if (cmd.find("STORE_REG") == 0) {
        c = new Stack2FrameCommand();
    } else if (cmd.find("GOTO") == 0) {
        c = new JumpCommand();
    } else if (cmd.find("CALL") == 0) {
        c = new CallCommand();
    } else if (cmd.find("END") == 0) {
        c = new EndCommand();
    } else {
        c = new MathCommand();
    }
    c->fromString(cmd.c_str());
    return c;
}

bool MsgCommentHelper::loaded = false;
std::vector<std::string> MsgCommentHelper::comments;

}  // namespace logic
