#ifndef BATTLE_GUESTSKILL_IMPL_H
#define BATTLE_GUESTSKILL_IMPL_H

#include "battle/guestSkill.h"
#include "factory.h"

class DefaultGuestSkill : public GuestSkill {
public:
    DefaultGuestSkill(u16 id, Unit* user) : GuestSkill(id, user) {}
    DefaultGuestSkill(u16 id, void* user);
    virtual ~DefaultGuestSkill() {}

    ASM_FUNC("asm/non_matching/guestskillImpl/sub_080A0D48.inc", virtual s32 hitChance() const);
};

class FassadPunishizer : public DefaultGuestSkill {
public:
    FassadPunishizer(u16 id, Unit* user);
    virtual ~FassadPunishizer() {}
    
    ASM_FUNC("asm/non_matching/guestskillImpl/sub_080A0C2C.inc", virtual void onDamage(Unit* target));
};

class AlecShakeWakeUp : public DefaultGuestSkill {
public:
    AlecShakeWakeUp(u16 id, Unit* user);
    virtual ~AlecShakeWakeUp() {}

    ASM_FUNC("asm/non_matching/guestskillImpl/sub_080A0BE0.inc", virtual void onDamage(Unit* target));
};

class AlecAttack : public DefaultGuestSkill {
public:
    AlecAttack(u16 id, Unit* user);
    virtual ~AlecAttack() {}

    ASM_FUNC("asm/non_matching/guestskillImpl/sub_080A0BA4.inc", virtual bool isResisted(Unit* target));
};

class GuestSkill24 : public DefaultGuestSkill {
public:
    GuestSkill24(u16 id, Unit* user);
    virtual ~GuestSkill24() {}

    ASM_FUNC("asm/non_matching/guestskillImpl/sub_080A0B54.inc", virtual Msg getUseMessage() const);
};

class GuestSkillFactory {
public:
    static void init();
    static void put(u16 id, void* (*spawn)(u16 id, Unit* user));
    static void* create(u16 id, Unit* user);
};

FACTORY(DefaultGuestSkill, u16, Unit*);
FACTORY(FassadPunishizer, u16, Unit*);
FACTORY(AlecShakeWakeUp, u16, Unit*);
FACTORY(AlecAttack, u16, Unit*);
FACTORY(GuestSkill24, u16, Unit*);

#endif  // BATTLE_GUESTSKILL_IMPL_H