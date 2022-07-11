#ifndef BATTLE_STATUS_H
#define BATTLE_STATUS_H

#include "base.h"

class Status : public Base {
public:
    typedef u16 Type;

    Status();
    virtual ~Status();

    virtual void status_68();
    virtual void status_70();
    virtual s32 status_78();
    virtual void status_80();
    virtual void status_88();
    virtual void status_90();
    virtual void status_98();
    virtual void status_a0();
    virtual void status_a8();
    virtual void status_b0();
    virtual void status_b8();
    virtual void status_c0();
    virtual void status_c8();
    virtual void status_d0();
    virtual void status_d8();
    virtual Status::Type getStatusType();
    virtual void status_e8();
    virtual void status_f0();
    virtual void status_f8();
    virtual void status_100();
    virtual void status_108();
    virtual void status_110();
    virtual void status_118();
    virtual void status_120();
    virtual Msg activeMsg();
    virtual void status_130();
    virtual u8 removeOnDeath();

    enum {
        /* 0x0 */ None,
        /* 0x1 */ Poison,
        /* 0x2 */ Numb,
        /* 0x3 */ Sleep,
        /* 0x4 */ Strange,
        /* 0x5 */ Crying,
        /* 0x6 */ Forgetful,
        /* 0x7 */ Nauseous,
        /* 0x8 */ Fleas,
        /* 0x9 */ OnFire,
        /* 0xA */ Frozen,
        /* 0xB */ Smelly,
        /* 0xC */ DCMC,
        /* 0xD */ Stapled,
        /* 0xE */ Apologetic,
        /* 0xF */ Laughing,
        /* 0x10 */ Defense,
        /* 0x11 */ NoExp,
        /* 0x12 */ OffDownWeak,
        /* 0x13 */ OffDownStrong,
        /* 0x14 */ DefDownWeak,
        /* 0x15 */ DefDownStrong,
        /* 0x16 */ Shield,
        /* 0x17 */ Counter,
        /* 0x18 */ Electrocuted,
        /* 0x19 */ PsiShield,
        /* 0x1A */ PsiCounter,
        /* 0x1B */ OffUpWeak,
        /* 0x1C */ OffUpStrong,
        /* 0x1D */ DefUpWeak,
        /* 0x1E */ DefUpStrong,
        /* 0x1F */ EscapeFail,
        /* 0x20 */ Dance,
        /* 0x21 */ OffDownMid,
        /* 0x22 */ DefDownMid,
        /* 0x23 */ TimeBomb,
        /* 0x24 */ ParamsUp,
        /* 0x25 */ ParamsDown,
        /* 0x26 */ Refresh,
        /* 0x27 */ Fell,
        /* 0x28 */ MonkeyDanceOff,
        /* 0x29 */ MonkeyDanceDef,
        /* 0x2A */ MonkeyDanceSP,
        /* 0x2B */ MonkeyDanceIQ,
        /* 0x2C */ MonkeyDanceOff2,
        /* 0x2D */ MonkeyDanceDef2,
        /* 0x2E */ MonkeyDanceSP2,
        /* 0x2F */ MonkeyDanceIQ2,
        /* 0x30 */ Endure,
        /* 0x31 */ OffUpMid,
        /* 0x32 */ DefUpMid,
        /* 0x33 */ NoBackSprite
    };
};

#endif  // BATTLE_STATUS_H
