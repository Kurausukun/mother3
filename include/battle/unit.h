#ifndef BATTLE_UNIT_H
#define BATTLE_UNIT_H

#include "base.h"

inline s32 clampS32(s32 value, s32 min, s32 max) {
    if (value < min)
        return min;
    if (value > max)
        return max;
    return value;
}

struct UnitObject {
    virtual ~UnitObject() {}

    virtual void object_8() {}
    virtual void object_10() = 0;
    virtual void object_18() = 0;
    virtual void object_20() = 0;
    virtual void object_28() = 0;
    virtual u32 object_30() = 0;
    virtual void object_38() = 0;
    virtual void object_40() = 0;
    virtual void object_48() = 0;
    virtual u32 object_50() = 0;
    virtual void object_58() = 0;
    virtual u32 object_60() = 0;
    virtual void object_68() = 0;
    virtual void object_70() = 0;
};

struct ID {
    u32 dead;
};

struct UnitCmd;

class Unit : public Base, public UnitObject {
public:
    Unit();
    virtual ~Unit();

    void setClamped(s16* dest, s32 value) { *dest = clampS32(value, 0, 999); }

    s16 get48(u32 idx) const { return *(_48 + idx); }
    s16 get58(u32 idx) const { return *(_58 + idx); }

    virtual u8 unit_68();
    virtual s32 unit_70(Unit* u) const;

    virtual void unit_78(u32 a1);
    virtual void unit_80(u32 a1);
    virtual void unit_88(u32 a1);
    virtual void unit_90(u32 a1);
    virtual void unit_98(u32 a1);
    virtual void unit_a0(u32 a1);

    virtual void unit_a8();
    virtual void unit_b0();
    virtual void unit_b8();
    virtual bool isAlive();
    virtual bool isDead();
    virtual u8 unit_d0();

    virtual void unit_d8(u32 a1);
    virtual void unit_e0(u32 a1);
    virtual void unit_e8(u32 a1);
    virtual void unit_f0(u32 a1);
    virtual void unit_f8(u32 a1);
    virtual void unit_100(u32 a1);
    virtual void unit_108();

    virtual void setLevel(s32 level);
    virtual void setHP(s32 hp);
    virtual void setMaxHP(s32 hp);
    virtual void setPP(s32 pp);
    virtual void setMaxPP(s32 pp);

    virtual void setIQ(s32 a1);
    virtual void setSpeed(s32 a1);
    virtual void unit_148(s32 a1);
    virtual void unit_150(s32 a1);
    virtual void unit_158(s32 a1);
    virtual void unit_160(s32 idx, s32 value);
    virtual void unit_168(u16 idx, s32 value);
    virtual void unit_170(u32 value);

    virtual bool unit_178() = 0;
    virtual u32 id() = 0;
    virtual Unit* name(Unit*) = 0;

    virtual s32 level() const;
    virtual s32 getHP() const;
    virtual s32 unit_1a0() const;
    virtual s32 getMaxHP() const;
    virtual s32 getPP() const;
    virtual s32 unit_1b8() const;
    virtual s32 getMaxPP() const;

    virtual s32 getIQ() const;
    virtual s32 getSpeed() const;
    virtual s32 unit_1d8() const;
    virtual s32 unit_1e0() const;
    virtual s32 unit_1e8() const;

    virtual s32 unit_1f0(u32 idx) const;
    virtual s32 unit_1f8(u16 idx) const;
    virtual s32 unit_200() const;

    virtual bool unit_208() = 0;
    virtual bool unit_210() = 0;
    virtual bool unit_218() = 0;

    virtual UnitCmd* unit_220(u32 a1);
    virtual bool unit_228(u32 a1);
    virtual void unit_230();
    virtual s32 unit_238() const;
    virtual u16 unit_240(s32 a1);
    virtual UnitCmd* unit_248(s32 a1);
    virtual bool unit_250(u16 a1);
    virtual s32 unit_258(u16 a1);
    virtual s32 unit_260(u16 a1);
    virtual u32 unit_268(u32 a1);
    virtual u32 unit_270(u32 a1);
    virtual void removeStatus(u16 a1);
    virtual void unit_280();
    virtual s32 unit_288() const;
    virtual u16 unit_290(s32 a1);
    virtual UnitCmd* unit_298(s32 a1);
    virtual bool hasStatus(u16 a1);
    virtual s32 unit_2a8(u16 a1);
    virtual s32 setAilment(u16 a1);
    virtual s32 unit_2b8(u16 a1);

    void nullsub_106();
    void nullsub_27();
    void kill();
    void revive();
    bool setDead(u32 a1, u8 a2);
    void sub_08075840();
    void sub_08075400();
    bool flagStuff(u16 idx);

private:
    /* 0x24 */ u16 _24;
    /* 0x26 */ u16 _26;
    /* 0x28 */ u16 mLevel;
    /* 0x2c */ u32 mHP;
    /* 0x30 */ u32 mMaxHP;
    /* 0x34 */ s16 mPP;
    /* 0x36 */ s16 mMaxPP;
    /* 0x38 */ s16 mIQ;
    /* 0x3a */ s16 mSpeed;
    /* 0x3c */ s16 _3c;
    /* 0x3e */ s16 _3e;
    /* 0x40 */ s16 _40;
    /* 0x44 */ s32 _44;
    /* 0x48 */ s16 _48[6];
    /* 0x54 */ s32 _54;
    /* 0x58 */ s16 _58[64];
    /* 0xd8 */ u32 _d8;
    /* 0xdc */ Vector<UnitCmd*> _dc;
    /* 0xe8 */ Fit _e8;
    /* 0xf4 */ ID _f4;
};

struct Suspend : Unk {
    Suspend() {}
    inline virtual ~Suspend();

    virtual void* getInstance();
};

struct Resume : Unk {
    Resume() {}
    inline virtual ~Resume();

    virtual void* getInstance();
};

struct UnitMove : Unk {
    UnitMove() {}
    UnitMove(u32 t) : t(t) {}
    virtual ~UnitMove() {}

    u32 t;
};

struct UnitJoin : UnitMove {
    UnitJoin() : UnitMove(0) {}
    UnitJoin(u32 t) : UnitMove(t) {}
    inline virtual ~UnitJoin();

    virtual void* getInstance();

    u32 t;
};

struct UnitRevive : UnitMove {
    UnitRevive() : UnitMove(0) {}
    UnitRevive(u32 t) : UnitMove(t) {}
    inline virtual ~UnitRevive();

    virtual void* getInstance();

    u32 t;
};

struct UnitEscape : UnitMove {
    UnitEscape() : UnitMove(0) {}
    UnitEscape(u32 t) : UnitMove(t) {}
    inline virtual ~UnitEscape();

    virtual void* getInstance();

    u32 t;
};

struct UnitDie : UnitMove {
    UnitDie() : UnitMove(0) {}
    UnitDie(u32 t) : UnitMove(t) {}
    inline virtual ~UnitDie();

    virtual void* getInstance();

    u32 t;
};

struct UnitCmd : Base {
    virtual ~UnitCmd();

    virtual void x_68();
    virtual void x_70();
    virtual s32 x_78();
    virtual void x_80();
    virtual void x_88();
    virtual void x_90();
    virtual void x_98();
    virtual void x_a0();
    virtual void x_a8();
    virtual void x_b0();
    virtual void x_b8();
    virtual void x_c0();
    virtual void x_c8();
    virtual void x_d0();
    virtual void x_d8();
    virtual void x_e0();
    virtual s32 x_e8();
    virtual void x_f0();
    virtual void x_f8();
    virtual void x_100();
    virtual void x_108();
    virtual void x_110();
    virtual void x_118();
    virtual void x_120();
    virtual void x_128(Unit*) const;
    virtual void x_130();
    virtual u8 x_138();

    void* p;
    u8 _4[4];
};

struct Status {
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
        NoBackSprite,
    };
};

SINGLETON(Suspend);
SINGLETON(Resume);
SINGLETON(UnitJoin);
SINGLETON(UnitRevive);
SINGLETON(UnitEscape);
SINGLETON(UnitDie);

#endif  // BATTLE_UNIT_H
