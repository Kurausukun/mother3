#ifndef BATTLE_RHYTHM_H
#define BATTLE_RHYTHM_H

#include "base.h"

struct ComboRhythm {
    ComboRhythm(s16 a, s16 b) : a(a), b(b) {}

    s16 a;
    s16 b;
};

class AutoCombo : public Base {
public:
    AutoCombo(u32, const ComboRhythm&);
    virtual ~AutoCombo();

private:
    u8 filler[0x11a];
};

class AutoComboResult : public Base {
public:
    AutoComboResult(u32, const ComboRhythm&);
    virtual ~AutoComboResult();

private:
    u8 filler[0x11a];
};

#endif  // BATTLE_RHYTHM_H
