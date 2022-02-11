#ifndef CORE_BATTLE_H
#define CORE_BATTLE_H

#include "core/base.h"

class Battle : public Base {
public:
    Battle();
    virtual ~Battle();
};

class RoundBegin : public Unk {
public:
    RoundBegin() : t(0) {}
    RoundBegin(u32 t) : t(t) {}
    virtual ~RoundBegin() {}

    u16 t;
};

class RoundEnd : public Unk {
public:
    RoundEnd() : t(0) {}
    RoundEnd(u32 t) : t(t) {}
    virtual ~RoundEnd() {}

    u16 t;
};

SINGLETON(Battle);

#endif // CORE_BATTLE_H
