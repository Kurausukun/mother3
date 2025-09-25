#ifndef BATTLE_H
#define BATTLE_H

#include "base.h"
#include "singleton.h"

class Unit;
class Player;
class Monster;
class Guest;
class BattleFader;
class Combo;

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
    u8 _0[0x8];
    u8 _8;
    u8 _9[3];
    u16 _c;
    u16 _e;
};
extern BattleGroup gBattleGroupTable[];

struct PartyInfo : public Base {
    PartyInfo();
    virtual ~PartyInfo();

    virtual void party_info_68();
    virtual void party_info_70();
    virtual void party_info_78();
    virtual void party_info_80();
    virtual bool party_info_88();
    virtual void party_info_90();
    virtual s32 numPlayers() const;
    virtual Player* getPlayer(s32 idx) const;
    virtual s32 party_info_a8() const;
    virtual Player* party_info_b0(s32 idx) const;
    virtual void party_info_b8() const;
    virtual s32 party_info_c0() const;
    virtual Player* party_info_c8(s32 idx) const;
    virtual void party_info_d0();
    virtual void party_info_d8();
    virtual void party_info_e0();
    virtual void party_info_e8();
    virtual void party_info_f0();
    virtual u8 party_info_f8(u32);
    virtual void party_info_100();
};

struct GuestInfo : public Base {
    GuestInfo();
    virtual ~GuestInfo() override;

    virtual void guest_info_68();
    virtual bool guest_info_70();
    virtual void guest_info_78();
    virtual s32 guest_info_80() const;
    virtual Guest* guest_info_88(s32 idx) const;
};

struct TX {
    TX(u16 x, u16 y) : x(x), y(y) {}
    u16 x, y;
};

struct MonsterInfo : public Base {
    MonsterInfo();
    virtual ~MonsterInfo() override;

    virtual void monster_info_68();
    virtual void monster_info_70();
    virtual void monster_info_78();
    virtual void monster_info_80();
    virtual void monster_info_88();
    virtual void monster_info_90();
    virtual void monster_info_98();
    virtual void monster_info_a0();
    virtual bool monster_info_a8(s32, TX, TX, s32);
    virtual void monster_info_b0();
    virtual void monster_info_b8();
    virtual void monster_info_c0(Monster*);
    virtual bool monster_info_c8();
    virtual void monster_info_d0(u8, u8);
    virtual s32 monster_info_d8() const;
    virtual Monster* monster_info_e0(s32 idx) const;
    virtual s32 monster_info_e8() const;
    virtual Monster* monster_info_f0(s32 idx) const;
};

struct Encounter {
    u8 _0;
    u8 _1[3];
    u8 _4;
    u8 monster_count;
    u8 _6[4];
    u16 _a;
    s16 _c;
    u8 filler[0x2e];
    u8 result;
};
extern Encounter gEncounter;

struct XX {
    XX(Unit* u) : u(u) {}

    Unit* u;
};

struct Sequencer {
    Sequencer();
    virtual ~Sequencer() override;

    virtual void sequencer_10(s32, Unit*, s32, Unit**);
    virtual bool sequencer_18(s32, Unit*, s32, Unit**);
    virtual s32 sequencer_20();
    virtual s32 sequencer_28(s32);
    virtual void sequencer_30(s32);
    virtual void sequencer_38(s32);

    s32 _0;
    s32 _4;
    s32 _8;
    s32 _c;
};

class Battle : public Base {
public:
    Battle();
    virtual ~Battle() override;

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
    virtual void onWin();
    virtual void onEscape();
    virtual void onLose();
    virtual void battle_108();
    virtual void battle_110();
    virtual void battle_118();
    virtual void battle_120();
    virtual void battle_128();
    virtual void battle_130();
    virtual u16 battle_138();
    virtual BattleFader* battle_140();
    virtual BattleFader* battle_148();
    virtual BattleFader* battle_150();
    virtual s32 battle_158();
    virtual bool battle_160();
    virtual Struct160* battle_168();
    virtual bool isFightBoss();
    virtual BattleGroup* battle_178();
    virtual bool battle_180();
    virtual Struct160* battle_188();
    virtual bool battle_190();
    virtual bool battle_198();
    virtual bool battle_1a0();
    virtual bool battle_1a8();
    virtual bool isBattleWon();
    virtual s32 roundNo();
    virtual bool battle_1c0();
    virtual bool battle_1c8();
    virtual bool battle_1d0();
    virtual bool isBattleLost();
    virtual bool battle_1e0();
    virtual u16 battle_1e8();
    virtual u16 battle_1f0();
    virtual u16 battle_1f8();
    virtual u8* battle_200();
    virtual Combo* battle_208();
    virtual BgClass* battle_210();
    virtual PartyInfo* partyInfo();
    virtual GuestInfo* guestInfo();
    virtual MonsterInfo* monsterInfo();
    virtual Class2* battle_230();
    virtual Sequencer* battle_238();

    bool setBattleResult(s32, bool force);
    void sub_0805DC1C();
    void sub_0805DC6C();
    void sub_0805DDE4();
    Player* tryKillPlayer(Unit*);
    Player* getNextPlayer(Unit*);
    void sub_0805E808();
    bool sub_0805E9BC();

    s32 _20;
    s32 _24;
    BattleFader* _28;
    BattleFader* _2c;
    BattleFader* _30;
    s32 _34;
    s32 _38;
    s32 mRoundNo;
    s32 mBattleResult;
    Combo* _44;
    BgClass* _48;
    PartyInfo* mPartyInfo;
    GuestInfo* mGuestInfo;
    MonsterInfo* mMonsterInfo;
    Class2* _58;
    Sequencer* _5c;
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

SINGLETON_DECL(Battle);

extern "C" bool IsBossBattle();
extern "C" s32 randS32_(u32, u32);
extern "C" s32 randS32(s32, s32);
extern "C" void PlayAnimation(u16, Unit*, Unit*);
extern "C" void PlayAnimationForEach(u16, Unit*, s32, Unit**);
extern "C" void setsleep(u32);
extern "C" PartyInfo* getPartyInfo();
extern "C" GuestInfo* getGuestInfo();
extern "C" MonsterInfo* getMonsterInfo();
extern "C" bool battleWon();
extern "C" bool sub_080726B8();
s32 sub_08072A88();
Player* sub_08072AA4(s32);

#endif  // BATTLE_H
