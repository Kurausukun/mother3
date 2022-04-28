#ifndef BATTLE_GUEST_H
#define BATTLE_GUEST_H

#include "battle/unit.h"
#include "battle/guestSkill.h"
#include "structs.h"

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
        num_active_listeners = 0;
        lifetime = 0;
    }
    virtual void object_40() {
        num_active_listeners = 0;
        lifetime = 0;
    }
    virtual void object_48() {
        num_active_listeners = 0;
        lifetime = 0;
    }
    virtual u32 object_50() { return 0; }
    virtual void object_58() {
        num_active_listeners = 0;
        lifetime = 0;
    }
    virtual u32 object_60() { return 0; }
    virtual void object_68() {}
    virtual void object_70() {}

    virtual void* getInstance();
    virtual u8 unit_d0();
    virtual bool unit_178();
    virtual u16 id() const;
    virtual Msg name() const;
    virtual s32 level() const;
    virtual bool unit_208();
    virtual bool unit_210();
    virtual bool unit_218();

    virtual Unit* guest_2c0();
    virtual bool guest_2c8(Base*);
    virtual void onRoundBegin();
    virtual void onRoundEnd();
    virtual void guest_2e0();
    virtual bool guest_2e8(Action* action);

    u16 mID;
    u16 _fa;
    CharStats* mStats;
    void* mLevelInfo;
};

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
