#ifndef BATTLE_PLAYER_SKILL_H
#define BATTLE_PLAYER_SKILL_H

#include "battle/action.h"

struct PlayerSkillID {
    enum {
        Bash = 0x01,
        Guard = 0x02,
        Run = 0x03,
        Duster_QuickFlip = 0x06,
        Duster_ReverseKick = 0x07,
        Lucas_CantAttackMaskedMan = 0x19,
        Flint_Swing = 0x20,
        Flint_PowerSmash = 0x21,
        Flint_StrengthenUp = 0x22,
        Flint_ToughenUp = 0x23,
        Duster_WallStaple = 0x25,
        Duster_SirenBeetle = 0x26,
        Duster_HypnoPendulum = 0x27,
        Duster_SmokeBomb = 0x28,
        Duster_ScaryMask = 0x29,
        Duster_TickleStick = 0x2A,
        Boney_Sniff = 0x2C,
        Salsa_Apologize = 0x2E,
        Salsa_MakeLaugh = 0x2F,
        Salsa_Dance = 0x30,
        Salsa_Mimic = 0x31,
    };
};

class PlayerSkill : public Action {
public:
    PlayerSkill() {}
    PlayerSkill(u16 id, Unit* user);
    virtual ~PlayerSkill();

    virtual void* getRTTI();

    static Msg getName(u16);
    virtual Action* action_1c0();
    virtual u16 id() const;
    virtual Msg name() const;
    virtual u32 action_1e0();
    virtual u32 effect() const;
    virtual u32 element() const;
    virtual u32 target() const;
    virtual u32 attackMult() const;
    virtual s32 healLo() const;
    virtual s32 healHi() const;
    virtual u16 ailment() const;
    virtual u32 ailmentChance() const;
    virtual u8 hasAction() const;
    virtual u32 priority() const;
    virtual Msg getUseMessage() const;
    virtual Msg getForceUseMessage() const;
    virtual bool hasDim() const;
    virtual u16 animNo() const;
    virtual u16 successAnimNo() const;
    virtual u16 critAnimNo() const;
    virtual u32 sfxNo() const;
    virtual s32 hitChance() const;
    virtual s32 critChance() const;
    virtual bool redirectable() const;
    virtual u16 userAttackSfx() const;
    virtual u16 userCritSfx() const;
    virtual u16 userMissSfx() const;

private:
    const PlayerSkillInfo* mInfo;
};

RTTI_DECL(PlayerSkill);

#endif  // BATTLE_PLAYER_SKILL_H
