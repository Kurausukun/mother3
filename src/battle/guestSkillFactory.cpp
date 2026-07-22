#include "battle/guestSkillImpl.h"

extern void* (*sGuestSkillSpawners[])(u16 id, Unit* user);

void GuestSkillFactory::init() {
    for (u32 i = 0; i < 0x64; i++) {
        put(i, DefaultGuestSkillFactory::create);
    }
    put(0x21, FassadPunishizerFactory::create);
    put(0x13, AlecShakeWakeUpFactory::create);
    put(0x0D, AlecAttackFactory::create);
    put(0x24, GuestSkill24Factory::create);
}

void GuestSkillFactory::put(u16 id, void* (*spawn)(u16 id, Unit* user)) {
    sGuestSkillSpawners[id] = spawn;
}

void* GuestSkillFactory::create(u16 id, Unit* user) {
    return sGuestSkillSpawners[id](id, user);
}