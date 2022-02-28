#ifndef BATTLE_GUEST_H
#define BATTLE_GUEST_H

#include "battle/unit.h"
#include "battle/guestSkill.h"

struct CharStats;

struct GuestID {
    enum {
        Empty,
        Flint,
        Lucas,
        Duster,
        Kumatora,
        Boney,
        Salsa,
        Wess,
        Thomas,
        Ionia,
        Fuel,
        Alec,
        Fassad,
        Claus,
    };
};

class Guest : public Unit {
public:
    Guest() {}
    Guest(u16 id);
    virtual ~Guest();

    void setupStats();

    virtual void object_8() {}
    virtual void object_10() {}
    virtual void object_18() {}
    virtual void object_20() {}
    virtual void object_28() {}
    virtual u32 object_30() { return 0; }
    virtual void object_38() {
        _0 = 0;
        _2 = 0;
    }
    virtual void object_40() {
        _0 = 0;
        _2 = 0;
    }
    virtual void object_48() {
        _0 = 0;
        _2 = 0;
    }
    virtual u32 object_50() { return 0; }
    virtual void object_58() {
        _0 = 0;
        _2 = 0;
    }
    virtual u32 object_60() { return 0; }
    virtual void object_68() {}
    virtual void object_70() {}

    virtual void* getInstance();
    virtual u8 unit_d0();
    virtual bool unit_178();
    virtual u32 unit_180();
    virtual Unit* unit_188(Unit* u);
    virtual s32 level() const;
    virtual bool unit_208();
    virtual bool unit_210();
    virtual bool unit_218();

    virtual Unit* guest_2c0();
    virtual bool guest_2c8(Base*);
    virtual void guest_2d0();
    virtual void guest_2d8();
    virtual void guest_2e0();
    virtual bool guest_2e8(Skill* skill);

    u16 _f8;
    u16 _fa;
    CharStats* mStats;
    void* mLevelInfo;
};

struct CharStats {
    u8 charNo;
    u8 spriteNo;
    u8 name[16];
    u8 level;
    u32 xp;
    u32 curHP;
    s16 curPP;
    u32 maxHP;
    s16 maxPP;
    u8 offense;
    u8 defense;
    u8 iq;
    u8 speed;
    u8 _2c;
    u8 _2d;
    u8 _2e;
    u8 ailments;
    u8 weapon;
    u8 body;
    u8 head;
    u8 other[4];
    u32 equip_lyt;
    u8 inventory[16];
    u16 item_timers[16];
};
extern CharStats gCharStats[];

struct LevelInfo {
    u8 filler[324];
};
extern LevelInfo gLevelStatTable[];

extern "C" {
CharStats* get_char_stats(u32 idx);
void sub_0802A7F8(CharStats*, u32);
void sub_0802A8D4(CharStats*);
u16 sub_0802A3D0(CharStats*, u32);
void sub_0802A74C(CharStats*, s16*);
void sub_0802A670(CharStats*, s16*);
}

SINGLETON(Guest);

#endif  // BATTLE_GUEST_H
