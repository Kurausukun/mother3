#ifndef BATTLE_RHYTHM_H
#define BATTLE_RHYTHM_H

#include "base.h"
#include "battle/sound.h"
#include "battle/unit.h"
#include "structs.h"

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

class RhythmCombo : public Base {
public:
    RhythmCombo(s32, Object38_s16r2_t*);
    virtual ~RhythmCombo();

private:
    u8 filler[0x8c];
};

class RhythmIn : public Event {
public:
    virtual void* getRTTI();
};

RTTI_DECL(RhythmIn);

class RhythmOut : public Event {
public:
    virtual void* getRTTI();
};

RTTI_DECL(RhythmOut);

struct RhythmBgm : Sound {
    RhythmBgm() : Sound() {}
    RhythmBgm(u16 songNum);
    virtual ~RhythmBgm();
    virtual void* getRTTI();
    virtual u32 getTempo() override;
    virtual void sub_0807476C();
    virtual void sub_080747F4();
    virtual s32 sub_08074898();

    u16 sub_080747CC(u16 songNum);
    u16 sub_08074854(u16 songNum);
    const RhythmInfo* GetRhythmDataBySongNum(u16 songNum);
    void sub_0807489C();
    void sub_080748C8();

    u32 _38;
    const RhythmInfo* rhythmData;  // 0x3c
    u32 field_40;                  // 0x40
    u32 field_44;                  // 0x44
    u8 field_48;                   // 0x48
    u32 field_4C;                  // 0x4c
    u16 field_50;                  // 0x50
    u16 _pad52;                    // 0x52 padding
    u16 _pad54;                    // 0x54 gap
    u16 _pad56;                    // 0x56 gap
    u32 field_58;                  // 0x58
    u8 field_5C;                   // 0x5c
};

RTTI_DECL(RhythmBgm);

extern const RhythmInfo gRhythmData[];

#endif  // BATTLE_RHYTHM_H
