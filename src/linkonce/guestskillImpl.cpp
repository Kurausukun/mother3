#include "battle/guestSkillImpl.h"
#include "global.h"

void* GuestSkill24Factory::create(u16 id, Unit* user) {
    return new GuestSkill24(id, user);
}

void* AlecAttackFactory::create(u16 id, Unit* user) {
    return new AlecAttack(id, user);
}

void* AlecShakeWakeUpFactory::create(u16 id, Unit* user) {
    return new AlecShakeWakeUp(id, user);
}

void* FassadPunishizerFactory::create(u16 id, Unit* user) {
    return new FassadPunishizer(id, user);
}

void* DefaultGuestSkillFactory::create(u16 id, Unit* user) {
    return new DefaultGuestSkill(id, (void*)user);
}

GuestSkill24::GuestSkill24(u16 id, Unit* user) : DefaultGuestSkill(id, user) {}
AlecAttack::AlecAttack(u16 id, Unit* user) : DefaultGuestSkill(id, user) {}
AlecShakeWakeUp::AlecShakeWakeUp(u16 id, Unit* user) : DefaultGuestSkill(id, user) {}
FassadPunishizer::FassadPunishizer(u16 id, Unit* user) : DefaultGuestSkill(id, user) {}
DefaultGuestSkill::DefaultGuestSkill(u16 id, void* user) : GuestSkill(id, (Unit*)user) {}