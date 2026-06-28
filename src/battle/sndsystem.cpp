// Auto-generated source file

#include "battle/sndSystem.h"
#include "battle/irc.h"
#include "global.h"
#include "m4a.h"

extern Intr2 gUnknown_08101CBC;
extern Intr2 gUnknown_08101CC4;

SINGLETON_IMPL(SndSystem)

SndSystem::SndSystem() {
    m4aMPlayAllStop();

    _20 = 80;
    _22 = 1;

    IrcManager::get()->sub_08069AC0((u32)this, gUnknown_08101CBC);
    IrcManager::get()->sub_08069AF8(0xA0 - _20);
    IrcManager::get()->sub_08069A50((u32)this, gUnknown_08101CC4);
}

SndSystem::~SndSystem() {
    if (_22 == 1) {
        VBlankIntrWait();
        vsyncOff();
    }

    IrcManager::get()->sub_08069CF4((u32)this, gUnknown_08101CBC);
    IrcManager::get()->sub_08069C84((u32)this, gUnknown_08101CC4);
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

extern "C" void sndsystem_main() {
    m4aSoundMain();
}

extern "C" void sndsystem_vsync() {
    m4aSoundVSync();
}