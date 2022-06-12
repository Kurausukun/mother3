#ifndef BATTLE_H
#define BATTLE_H

#include "base.h"

class Monster;
class Unit;

class BgClass : public Base {
public:
    virtual void bgclass_68(s32);
};

class Class2 : public Base {
public:
    virtual void class2_68();
    virtual void class2_70();
    virtual void class2_78();
    virtual s32 class2_80();
    virtual Unit* class2_88(s32);
};

class Battle : public Base {
public:
    Battle();
    virtual ~Battle();

    virtual void battle_68();
    virtual void battle_70();
    virtual void battle_78();
    virtual void battle_80();
    virtual void battle_88();
    virtual void battle_90();
    virtual bool battle_98();
    virtual u8 battle_a0();
    virtual u8 battle_a8();
    virtual void battle_b0();
    virtual bool battle_b8(Unit*);
    virtual bool battle_c0();
    virtual u8 battle_c8(s32);
    virtual void battle_d0();
    virtual void battle_d8();
    virtual void battle_e0();
    virtual void battle_e8();
    virtual void battle_f0();
    virtual void battle_f8();
    virtual void battle_100();
    virtual void battle_108();
    virtual void battle_110();
    virtual void battle_118();
    virtual void battle_120();
    virtual void battle_128();
    virtual void battle_130();
    virtual void battle_138();
    virtual void battle_140();
    virtual void battle_148();
    virtual void battle_150();
    virtual void battle_158();
    virtual void battle_160();
    virtual void battle_168();
    virtual void battle_170();
    virtual void battle_178();
    virtual void battle_180();
    virtual void battle_188();
    virtual void battle_190();
    virtual void battle_198();
    virtual u8 battle_1a0();
    virtual void battle_1a8();
    virtual void battle_1b0();
    virtual void battle_1b8();
    virtual void battle_1c0();
    virtual void battle_1c8();
    virtual void battle_1d0();
    virtual void battle_1d8();
    virtual void battle_1e0();
    virtual u16 battle_1e8();
    virtual void battle_1f0();
    virtual void battle_1f8();
    virtual void battle_200();
    virtual void battle_208();
    virtual void battle_210();
    virtual void battle_218();
    virtual void battle_220();
    virtual void battle_228();
    virtual Class2* battle_230();

    void sub_0805E670(s32, u8);
    void sub_0805DC1C();
    void sub_0805DC6C();
    void sub_0805DDE4();
    Monster* sub_0805E390(Unit*);
    Monster* sub_0805E338(Unit*);

    s32 _20;
    s32 _24;
    s32 _28;
    s32 _2c;
    s32 _30;
    s32 _34;
    s32 _38;
    s32 mRoundNo;
    s32 _40;
    s32 _44;
    BgClass* _48;
};

class RoundBegin : public Unk {
public:
    RoundBegin() : t(0) {}
    RoundBegin(u16 t) : t(t) {}
    virtual ~RoundBegin() {}

    u16 t;
};

class RoundEnd : public Unk {
public:
    RoundEnd() : t(0) {}
    RoundEnd(u16 t) : t(t) {}
    virtual ~RoundEnd() {}

    u16 t;
};

struct UnitTurnBegin : public Unk {
    UnitTurnBegin() {}
    UnitTurnBegin(Unit* u) : u(u) {}
    virtual ~UnitTurnBegin() {}

    Unit* u;
};

struct UnitTurnEnd : public Unk {
    UnitTurnEnd() {}
    UnitTurnEnd(Unit* u) : u(u) {}
    virtual ~UnitTurnEnd() {}

    Unit* u;
};

SINGLETON(Battle);

extern "C" void setsleep(u32);

#endif // BATTLE_H
