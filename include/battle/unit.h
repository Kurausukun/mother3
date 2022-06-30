#ifndef BATTLE_UNIT_H
#define BATTLE_UNIT_H

#include "base.h"
#include "battle/status.h"

inline s32 clampS32(s32 value, s32 min, s32 max) {
    if (value < min)
        return min;
    if (value > max)
        return max;
    return value;
}

struct UnitObject {
    virtual ~UnitObject() {}

    virtual void object_8(s32 r0) {}
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

class Action;
struct UnitCmd;

class Unit : public Base, public UnitObject {
public:
    Unit();
    virtual ~Unit();

    void setClamped(s16* dest, s32 value) { *dest = clampS32(value, 0, 999); }

    s16 get48(u32 idx) const { return *(mWeaknesses + idx); }
    s16 get58(u32 idx) const { return *(_58 + idx); }

    virtual u8 unit_68();
    virtual s32 unit_70(Unit* u) const;

    virtual void unit_78(Action* a1);
    virtual void unit_80(Action* a1);
    virtual void unit_88(Action* a1);
    virtual void unit_90(Action* a1);
    virtual void unit_98(Action* a1);
    virtual void unit_a0(Action* a1);

    virtual void unit_a8();
    virtual void unit_b0();
    virtual void unit_b8();
    virtual bool isAlive();
    virtual bool isDead();
    virtual u8 unit_d0();

    virtual void unit_d8(Action* a1);
    virtual void unit_e0(Action* a1);
    virtual void unit_e8(Action* a1);
    virtual void unit_f0(Action* a1);
    virtual void unit_f8(Action* a1);
    virtual void unit_100(Action* a1);
    virtual void unit_108();

    virtual void setLevel(s32 value);
    virtual void setHP(s32 value);
    virtual void setMaxHP(s32 value);
    virtual void setPP(s32 value);
    virtual void setMaxPP(s32 value);
    virtual void setOffense(s32 value);
    virtual void setDefense(s32 value);
    virtual void setIQ(s32 value);
    virtual void setSpeed(s32 value);
    virtual void unit_158(s32 value);
    virtual void setElementDefense(s32 idx, s32 value);
    virtual void unit_168(u16 idx, s32 value);
    virtual void unit_170(u32 value);

    virtual bool unit_178() = 0;
    virtual u16 id() const = 0;
    virtual Msg name() const = 0;

    virtual s32 level() const;
    virtual s32 hpReal() const;
    virtual s32 hp() const;
    virtual s32 maxHP() const;
    virtual s32 ppReal() const;
    virtual s32 pp() const;
    virtual s32 maxPP() const;

    virtual s32 offense() const;
    virtual s32 defense() const;
    virtual s32 iq() const;
    virtual s32 speed() const;
    virtual s32 unit_1e8() const;

    virtual s32 getElementWeakness(u32 idx) const;
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
    virtual s32 removeOneStatus(s32 idx);
    virtual void removeStatus(Status::Type type);
    virtual void clearAllStatuses();
    virtual s32 statusCount() const;
    virtual Status::Type getStatusType(s32 idx);
    virtual Status* getStatus(s32 idx);
    virtual bool hasStatus(Status::Type type);
    virtual s32 getStatusIdx(Status::Type type);
    virtual Status* findStatus(Status::Type type);
    virtual s32 getStatusTypeCount(Status::Type type);

    void kill();
    void revive();

    bool setDead(u32 value, u8 force);
    void nullsub_106();
    void nullsub_27();
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
    /* 0x38 */ s16 mOffense;
    /* 0x3a */ s16 mDefense;
    /* 0x3c */ s16 mIQ;
    /* 0x3e */ s16 mSpeed;
    /* 0x40 */ s16 _40;
    /* 0x44 */ s32 mWeaknessCount;
    /* 0x48 */ s16 mWeaknesses[6];
    /* 0x54 */ s32 _54;
    /* 0x58 */ s16 _58[64];
    /* 0xd8 */ u32 _d8;
    /* 0xdc */ Vector<UnitCmd*> _dc;
    /* 0xe8 */ Vector<Status*> mStatuses;
    /* 0xf4 */ ID _f4;
};

struct Suspend : Unk {
    Suspend() {}
    inline virtual ~Suspend();

    virtual void* getRTTI();
};

struct Resume : Unk {
    Resume() {}
    inline virtual ~Resume();

    virtual void* getRTTI();
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

    virtual void* getRTTI();

    u32 t;
};

struct UnitRevive : UnitMove {
    UnitRevive() : UnitMove(0) {}
    UnitRevive(u32 t) : UnitMove(t) {}
    inline virtual ~UnitRevive();

    virtual void* getRTTI();

    u32 t;
};

struct UnitEscape : UnitMove {
    UnitEscape() : UnitMove(0) {}
    UnitEscape(u32 t) : UnitMove(t) {}
    inline virtual ~UnitEscape();

    virtual void* getRTTI();

    u32 t;
};

struct UnitDie : UnitMove {
    UnitDie() : UnitMove(0) {}
    UnitDie(u32 t) : UnitMove(t) {}
    inline virtual ~UnitDie();

    virtual void* getRTTI();

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
    virtual s32 x_e0();
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

struct ElementType {
    enum {
        None,
        Fire,
        Ice,
        Thunder,
        Explosion
    };
};

struct TargetType {
    enum {
        Self,
        ChooseOneAlly2,
        ChooseOneAlly3,
        AllAllies,
        AllAllies_,
        RandomAlly,
        TwoRandomAlly,
        ThreeRandomAlly,
        FourRandomAlly,
        FiveRandomAlly,
        SixRandomAlly,
        EightRandomAlly,
        ChooseOneAlly,
        ChooseOneEnemy,
        AllEnemies,
        RandomEnemy,
        TwoRandomEnemy,
        ThreeRandomEnemy,
        FourRandomEnemy,
        FiveRandomEnemy,
        RandomEnemy_,
        RandomAny,
        All,
        Special,
        FirstAlly,
        SecondAlly,
        ThirdAlly,
        FourthAlly
    };
};

RTTI(Suspend);
RTTI(Resume);
RTTI(UnitJoin);
RTTI(UnitRevive);
RTTI(UnitEscape);
RTTI(UnitDie);

#endif  // BATTLE_UNIT_H
