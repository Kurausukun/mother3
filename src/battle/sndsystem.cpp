// Auto-generated source file

#include "battle/sndSystem.h"
#include "battle/irc.h"
#include "global.h"
#include "m4a.h"

extern Intr2 callback_main__9SndSystem;
extern Intr2 callback_vsync__9SndSystem;

MANAGER_IMPL(SndSystem)

SndSystem::SndSystem() {
    m4aMPlayAllStop();

    _20 = 80;
    _22 = 1;

    IrcManager::get()->sub_08069AC0((u32)this, callback_main__9SndSystem);
    IrcManager::get()->sub_08069AF8(0xA0 - _20);
    IrcManager::get()->sub_08069A50((u32)this, callback_vsync__9SndSystem);
}

SndSystem::~SndSystem() {
    if (_22 == 1) {
        VBlankIntrWait();
        vsyncOff();
    }

    IrcManager::get()->sub_08069CF4((u32)this, callback_main__9SndSystem);
    IrcManager::get()->sub_08069C84((u32)this, callback_vsync__9SndSystem);
}

void SndSystem::vsyncOn() {
    m4aSoundVSyncOn();
}

void SndSystem::vsyncOff() {
    m4aSoundVSyncOff();
}

void SndSystem::setUnk20(u16 arg1) {
    _20 = arg1;
    IrcManager::get()->sub_08069AF8(0xA0 - _20);
}

void SndSystem::setUnk22(u8 arg1) {
    _22 = arg1;
}

u16 SndSystem::getUnk20() {
    return _20;
}

u8 SndSystem::getUnk22() {
    return _22;
}

void SndSystem::main() {
    m4aSoundMain();
}

void SndSystem::vsync() {
    m4aSoundVSync();
}
