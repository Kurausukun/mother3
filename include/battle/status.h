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
    virtual Msg status_128();
    virtual void status_130();
    virtual u8 removeOnDeath();

    enum {
        None,
        Poison,
        Numb,
        Sleep,
        Strange,
        Crying,
        Forgetful,
        Nauseous,
        Fleas,
        OnFire,
        Frozen,
        Smelly,
        DCMC,
        Stapled,
        Apologetic,
        Laughing,
        Defense,
        NoExp,
        OffDownWeak,
        OffDownStrong,
        DefDownWeak,
        DefDownStrong,
        Shield,
        Counter,
        Electrocuted,
        PsiShield,
        PsiCounter,
        OffUpWeak,
        OffUpStrong,
        DefUpWeak,
        DefUpStrong,
        EscapeFail,
        Dance,
        OffDownMid,
        DefDownMid,
        TimeBomb,
        ParamsUp,
        ParamsDown,
        Refresh,
        Fell,
        MonkeyDanceOff,
        MonkeyDanceDef,
        MonkeyDanceSP,
        MonkeyDanceIQ,
        MonkeyDanceOff2,
        MonkeyDanceDef2,
        MonkeyDanceSP2,
        MonkeyDanceIQ2,
        Endure,
        OffUpMid,
        DefUpMid,
        NoBackSprite
    };
};

#endif // BATTLE_STATUS_H
