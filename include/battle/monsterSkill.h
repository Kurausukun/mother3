#ifndef BATTLE_MONSTERSKILL_H
#define BATTLE_MONSTERSKILL_H

#include "battle/action.h"

class MonsterSkill : public Action {
public:
    MonsterSkill() {}
    MonsterSkill(u16, Unit*);
    virtual ~MonsterSkill();

    virtual void* getRTTI();

    virtual bool fire();
    virtual void playSfx();
    virtual void action_150();

    static Msg getName(u16);
    virtual Msg action_1d8() const;
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
    virtual u16 ppCost() const;
    virtual u8 recolorValue() const;

private:
    const MonsterSkillInfo* mInfo;
};

RTTI_DECL(MonsterSkill);

#endif  // BATTLE_MONSTERSKILL_H
