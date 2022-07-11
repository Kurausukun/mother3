#ifndef BATTLE_GUEST_H
#define BATTLE_GUEST_H

#include "battle/guestSkill.h"
#include "battle/unit.h"
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
        Claus
    };
};

class Guest : public Unit {
public:
    Guest() {}
    Guest(u16 id);
    virtual ~Guest() override;

    void setupStats();

    void object_8(s32 r0) override {}
    void object_10() override {}
    void object_18() override {}
    void object_20() override {}
    void object_28() override {}
    u32 object_30() override { return 0; }
    void object_38() override {
        num_active_listeners = 0;
        lifetime = 0;
    }
    void object_40() override {
        num_active_listeners = 0;
        lifetime = 0;
    }
    void object_48() override {
        num_active_listeners = 0;
        lifetime = 0;
    }
    u32 object_50() override { return 0; }
    void object_58() override {
        num_active_listeners = 0;
        lifetime = 0;
    }
    u32 object_60() override { return 0; }
    void object_68() override {}
    void object_70() override {}

    void* getRTTI() override;
    u8 onTurn() override;
    u16 unit_178() override;
    u16 id() const override;
    Msg name() const override;
    s32 level() const override;
    u16 attackSfx() override;
    u16 critSfx() override;
    u16 missSfx() override;

    virtual Action* guest_2c0();
    virtual bool guest_2c8(Action*);
    virtual void onRoundBegin();
    virtual void onRoundEnd();
    virtual void guest_2e0();
    virtual bool guest_2e8(Action* action);

    u16 mID;
    u16 _fa;
    CharStats* mStats;
    void* mLevelInfo;
};

extern "C" {
CharStats* get_char_stats(u32 idx);
void sub_0802A7F8(CharStats*, u32);
void sub_0802A8D4(CharStats*);
u16 sub_0802A3D0(CharStats*, u32);
void sub_0802A74C(CharStats*, s16*);
void sub_0802A670(CharStats*, s16*);
}

RTTI(Guest);

#endif  // BATTLE_GUEST_H
