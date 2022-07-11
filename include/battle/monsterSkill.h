#ifndef BATTLE_MONSTERSKILL_H
#define BATTLE_MONSTERSKILL_H

#include "battle/action.h"

class MonsterSkill : public Action {
public:
    MonsterSkill();
    virtual ~MonsterSkill();
};

RTTI(MonsterSkill);

#endif  // BATTLE_MONSTERSKILL_H
