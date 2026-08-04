#ifndef BATTLE_PSI_IMPL_H
#define BATTLE_PSI_IMPL_H

#include "battle/monster.h"
#include "battle/psi.h"
#include "enums.h"
#include "factory.h"

extern "C" s32 sub_0807066C(s32, s32);
extern "C" void playSound(u16);
extern "C" bool isMonsterVariant(Unit*, u32);
extern "C" void PlayAnimation(u16, Unit*, Unit*);

class DefaultPsi : public Psi {
public:
    DefaultPsi(u16 id, Unit* user);
    virtual ~DefaultPsi();

    virtual s32 hitChance() const override;
    virtual void tellResisted(Unit* target) override;
};

FACTORY(DefaultPsi, u16, Unit*);

#endif  // BATTLE_PSI_IMPL_H