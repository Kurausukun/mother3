#ifndef OVERWORLD_SCRIPT_H
#define OVERWORLD_SCRIPT_H

#include "global.h"

extern u16 (*gScriptCmdTable[])(s32* sp);

struct Script {
    u8 _0;
    u8 _1[0xe];
    u8 _f;
    u8 _10;
    u8 _11;
    u8 _12[0x5980 - 0x12];
    u16 _5980;
    s16 _5982;
    s16 _5984;
    s16 _5986;
    u8 _5988[0x67ac - 0x5988];
    u16 _67ac;
    u8 _67ae[0x67b8 - 0x67ae];
    u16 cam_target;
    u8 _67ba[0x67c0 - 0x67ba];
    u16 _67c0;
    u16 _67c2;
    u8 _67c4_1 : 4;
    u8 _67c4_10 : 1;
    u8 _67c4_20 : 1;
    u8 _67c4_40 : 1;
    u8 _67c5[0x1ad4];
    u8 party_count;
    u8 _829a;
    u8 _829b;
    u8 _829c;
    u8 _829d[0x82ad - 0x829c];
    s8 _82ae;
    u8 _82af[0x82b4 - 0x82af];
    u16 _82b4;
    u8 _82b6 : 1;
    u8 _82b7;
    u8 _82b8_1 : 5;
    u8 _82b8_20 : 1;
    u8 _82b9[0x8450 - 0x82b9];
    s16 _8450;
    u8 _8452[0x846f - 0x8452];
    u8 _846f[0x8484 - 0x846f];
    u32 _8484;
    u8 _8488[0xc];
    u8 disable_collision : 1;
    u8 _8494_2 : 1;
    u8 _8494_4 : 1;
    u8 _8495;
    u8 _8496[0x2E];
    s32 stack[0x3EA];
    s32 _946c;
    u16* _9470;
    u16 _9474;
    u16 _0476;
    u16 _0478;
    u16 delay;
    s16 _947c;
    s16 _947e;
    u8 state_1 : 3;
    u8 state_8 : 1;
    u8 state_10 : 1;
    u8 state_20 : 1;
    u8 state_40 : 1;
    u8 state_80 : 1;
    u8 _9481;
    u8 _9482;
    u8 _9483;
    u8 _9484;
    u8 _9485;
    u8 _9486 : 1;
    u8 _9486_2 : 1;
    u8 _9487;
    u32 _9488;
};
Script gScript;

#endif  // OVERWORLD_SCRIPT_H
