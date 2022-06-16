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
    virtual void class2_a0();
    virtual void class2_a8();
    virtual void class2_b0();
    virtual s32 class2_b8();
};

struct Struct160 {
    u8 _0[0xe];
    u16 _e;
    u16 _10;
    u8 _12[0x7e];
};
extern Struct160 gUnknown_080C7D28[];

struct BattleGroup {
    u8 _0[0xc];
    u16 _c;
    u16 _e;
};
extern BattleGroup gBattleGroupTable[];

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
    virtual u8 battle_c8(u8);
    virtual bool battle_d0();
    virtual bool battle_d8();
    virtual bool battle_e0();
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
    virtual u16 battle_138();
    virtual s32 battle_140();
    virtual s32 battle_148();
    virtual s32 battle_150();
    virtual s32 battle_158();
    virtual bool battle_160();
    virtual Struct160* battle_168();
    virtual bool battle_170();
    virtual BattleGroup* battle_178();
    virtual bool battle_180();
    virtual Struct160* battle_188();
    virtual bool battle_190();
    virtual bool battle_198();
    virtual bool battle_1a0();
    virtual bool battle_1a8();
    virtual bool battle_1b0();
    virtual s32 battle_1b8();
    virtual bool battle_1c0();
    virtual bool battle_1c8();
    virtual bool battle_1d0();
    virtual bool battle_1d8();
    virtual bool battle_1e0();
    virtual u16 battle_1e8();
    virtual u16 battle_1f0();
    virtual u16 battle_1f8();
    virtual u8* battle_200();
    virtual s32 battle_208();
    virtual BgClass* battle_210();
    virtual s32 battle_218();
    virtual s32 battle_220();
    virtual s32 battle_228();
    virtual Class2* battle_230();
    virtual s32 battle_238();

    bool sub_0805E670(s32, bool);
    void sub_0805DC1C();
    void sub_0805DC6C();
    void sub_0805DDE4();
    Monster* sub_0805E390(Unit*);
    Monster* sub_0805E338(Unit*);
    void sub_0805E808();
    bool sub_0805E9BC();

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
    s32 _4c;
    s32 _50;
    s32 _54;
    Class2* _58;
    s32 _5c;
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

struct ShowDownAsWin : public Unk {
    ShowDownAsWin() {}
    virtual ~ShowDownAsWin() {}
};

struct ShowDownAsLose : public Unk {
    ShowDownAsLose() {}
    virtual ~ShowDownAsLose() {}
};

struct ShowDownAsEscape : public Unk {
    ShowDownAsEscape() {}
    virtual ~ShowDownAsEscape() {}
};

SINGLETON_MGR(Battle);

extern "C" void setsleep(u32);

#endif // BATTLE_H
