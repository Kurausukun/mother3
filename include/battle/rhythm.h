#ifndef BATTLE_RHYTHM_H
#define BATTLE_RHYTHM_H

#include "base.h"
#include "structs.h"
#include "battle/sound.h"

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

struct RhythmGame : Sound {
    RhythmGame(u16 songNum);
    virtual ~RhythmGame();

    u32 _38;  
    const RhythmInfo* rhythmData;  // 0x3c
    u32 field_40;            // 0x40
    u32 field_44;            // 0x44
    u8 field_48;             // 0x48
    u32 field_4C;            // 0x4c
    u16 field_50;            // 0x50
    u16 _pad52;              // 0x52 padding
    u32 _pad54;              // 0x54 gap
    u32 field_58;            // 0x58
    u8 field_5C;             // 0x5c
};

extern "C" const RhythmInfo* GetRhythmDataBySongNum(RhythmGame* game, u16 songNum);

extern const RhythmInfo gRhythmData[];

#endif  // BATTLE_RHYTHM_H
