#ifndef BATTLE_STATUS_H
#define BATTLE_STATUS_H

#include "base.h"
#include "gba/types.h"

class Unit;

struct StatusData {
    u8 type;
    u8 turn_limit;
    u16 _2;
    bool8 remove_on_death;
    bool8 _5;
    u16 pad;
};

extern const StatusData gStatusData[];

extern "C" Msg tellStatus(s32 type);

class Status : public Base {
public:
    typedef u16 Type;

    Status(u16 type, Unit* unit);
    virtual ~Status();

    Msg tell(s32 type);
    /* 0x68 */ virtual bool onRoundBegin();
    /* 0x70 */ virtual bool onUnitTurnBegin(Unit* unit);
    /* 0x78 */ virtual void onUnitTurnEnd(Unit* unit);
    /* 0x80 */ virtual void onRoundEnd();
    /* 0x88 */ virtual Msg fmtStatusMsg(u16 msg);
    /* 0x90 */ virtual bool status_90();
    /* 0x98 */ virtual bool status_98();
    /* 0xA0 */ virtual bool status_a0();
    /* 0xA8 */ virtual bool disableAllStatuses();
    /* 0xB0 */ virtual bool status_b0();
    /* 0xB8 */ virtual void cleanup();
    /* 0xC0 */ virtual void setRoundLimit(u16 rounds);
    /* 0xC8 */ virtual void setRounds(u16 rounds);
    /* 0xD0 */ virtual void setTurnLimit(u16 turns);
    /* 0xD8 */ virtual void setTurns(u16 turns);
    /* 0xE0 */ virtual Type type() const;
    /* 0xE8 */ virtual Unit* unit() const;
    /* 0xF0 */ virtual Msg name() const;
    /* 0xF8 */ virtual s32 roundLimit();
    /* 0x100 */ virtual s32 rounds();
    /* 0x108 */ virtual s32 turnLimit();
    /* 0x110 */ virtual s32 turns();
    /* 0x118 */ virtual u16 status_data_2();
    /* 0x120 */ virtual Msg inflictedMsg();
    /* 0x128 */ virtual Msg activeMsg();
    /* 0x130 */ virtual Msg woreOffMsg();
    /* 0x138 */ virtual bool removeOnDeath();
    /* 0x140 */ virtual bool status_bool_5();

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

    /* 0x20 */ u32 _20;
    /* 0x24 */ const StatusData* mData;
    /* 0x28 */ Unit* mUnit;
    /* 0x2C */ s16 mRoundLimit;
    /* 0x2E */ s16 mRounds;
    /* 0x30 */ s16 mTurnLimit;
    /* 0x32 */ s16 mTurns;
};  // size: 0x34

#endif  // BATTLE_STATUS_H
