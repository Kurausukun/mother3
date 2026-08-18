#ifndef BATTLE_PSI_IMPL_H
#define BATTLE_PSI_IMPL_H

#include "battle/monster.h"
#include "battle/psi.h"
#include "enums.h"
#include "factory.h"

extern "C" s32 sub_0807066C(s32, s32);
extern "C" void playSound(u16);
extern "C" bool isMonsterVariant(Unit*, u16);
extern "C" void PlayAnimation(u16, Unit*, Unit*);

class DefaultPsi : public Psi {
public:
    DefaultPsi(u16 id, Unit* user);
    virtual ~DefaultPsi();

    virtual void tellResisted(Unit* target) override;
    virtual s32 hitChance() const override;
};

class PkThunderAB : public DefaultPsi {
public:
    PkThunderAB(u16 id, Unit* user);
    virtual ~PkThunderAB();

    virtual void playAnim() override;
    virtual void action_a0(Unit* target) override;
    virtual u8 calcDidHit(Unit* target) override;
    virtual void tellMissed(Unit* target) override;
    virtual void onPlayAnim(Unit* target, bool crit) override;
};

class PkThunderGO : public DefaultPsi {
public:
    PkThunderGO(u16 id, Unit* user);
    virtual ~PkThunderGO();

    virtual void playAnim() override;
    virtual void action_a0(Unit* target) override;
    virtual u8 calcDidHit(Unit* target) override;
    virtual void tellMissed(Unit* target) override;
    virtual void onPlayAnim(Unit* target, bool crit) override;
};

FACTORY(DefaultPsi, u16, Unit*);
FACTORY(PkThunderAB, u16, Unit*);
FACTORY(PkThunderGO, u16, Unit*);

#endif  // BATTLE_PSI_IMPL_H