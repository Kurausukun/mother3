#ifndef BATTLE_RHYTHM_H
#define BATTLE_RHYTHM_H

#include "base.h"
#include "structs.h"
#include "battle/sound.h"

// (existing includes already bring in Base, Event, Singleton, RTTI macros, etc.)
#include "battle/sound.h"   // brings Base, Event, etc.

// ---------- RhythmIn / RhythmOut event classes ----------
class RhythmIn : public Event {
public:
    virtual ~RhythmIn();
    virtual void* getRTTI() asm("getRTTI__RhythmIn");
};

class RhythmOut : public Event {
public:
    virtual ~RhythmOut();
    virtual void* getRTTI();
};

// ---------- RTTI singletons ----------
RTTI_DECL(RhythmIn);
RTTI_DECL(RhythmOut);
RTTI_DECL(RhythmBgm);

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

struct RhythmBgm : Sound {
    RhythmBgm() : Sound() {}
    RhythmBgm(u16 songNum);
    virtual ~RhythmBgm();
    virtual void* getRTTI();

    u32 _38;
    const RhythmInfo* rhythmData;  // 0x3c
    u32 field_40;            // 0x40
    u32 field_44;            // 0x44
    u8 field_48;             // 0x48
    u32 field_4C;            // 0x4c
    u16 field_50;            // 0x50
    u16 _pad52;              // 0x52 padding
    u16 _pad54;              // 0x54 gap
    u16 _pad56;              // 0x56 gap
    u32 field_58;            // 0x58
    u8 field_5C;             // 0x5c
};

extern "C" const RhythmInfo* GetRhythmDataBySongNum(RhythmBgm* game, u16 songNum);

extern const RhythmInfo gRhythmData[];

#endif  // BATTLE_RHYTHM_H
