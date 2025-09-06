#ifndef BATTLE_FADER_H
#define BATTLE_FADER_H

#include "base.h"
#include "singleton.h"

struct BattleFader {
    BattleFader();
    ~BattleFader();

    struct A {
        virtual ~A() {}
    };

    void set(u32 r0);
    void set2(u32 r0);
    void set4(u32 r0);
    void setAll(u32 r0);
    void setB(u32 r0);
    void setB2(u32 r0);
    void setB4(u32 r0);
    void setBAll(u32 r0);
    u32 get();
    u32 get2();
    u32 get4();
    u32 getB();
    u32 getB2();
    u32 getB4();

    void sub_0806A67C(s32, u16*, u16*);
    void sub_0806A760();
    void sub_0806A80C();
    void sub_0806A8BC();

    s16 _0;
    s16 _2;
    s16 _4;
    s16 _6;
    s16 _8;
    s16 _a;
    u16 _c[0x20];
    u8 _4c[0x40];
    u8 _8c[0x40];
    u8 _cc;
    A _d0;
};

#endif  // BATTLE_FADER_H
