#ifndef BATTLE_PSI_IMPL_H
#define BATTLE_PSI_IMPL_H

#include "battle/psi.h"
#include "factory.h"

extern "C" s32 sub_0807066C(s32, s32);

class DefaultPsi : public Psi {
public:
    DefaultPsi(u16 id, Unit* user);
    virtual ~DefaultPsi();

    s32 hitChance() const override;
};

FACTORY(DefaultPsi, u16, Unit*);

#endif  // BATTLE_PSI_IMPL_H