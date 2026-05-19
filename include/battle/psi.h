#ifndef BATTLE_PSI_H
#define BATTLE_PSI_H

#include "battle/action.h"

class Psi : public Action {
public:
    Psi() {}
    Psi(u16 id, Unit* user);
    virtual ~Psi();

    virtual void* getRTTI();

    virtual bool fire();
    virtual void action_150();

    static Msg getName(u16);
    virtual Action* action_1c0();
    virtual u16 id() const;
    virtual Msg name() const;
    virtual Msg action_1d8() const;
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
    virtual bool isOverworldUsable() const;
    virtual u32 type() const;
    virtual u16 ppCost() const;

private:
    const PsiInfo* mInfo;
};

RTTI_DECL(Psi);

#endif // BATTLE_PSI_H
