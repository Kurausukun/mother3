#ifndef SCRIPT_H
#define SCRIPT_H

#include "global.h"

extern u16 (*gScriptCmdTable[])(s32* sp);

struct Script {
    u8 _0;
    u8 filler[0x67ab];
    u16 _67ac;
    u8 _67ae[0x16];
    u8 _67c4_1 : 6;
    u8 _67c4_40 : 1;
    u8 _67c5[0x1cbf];
    u32 _8484;
    u8 _8488[0xc];
    u8 _8494_1 : 1;
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
    u32 _9484;
    u32 _9488;
};

Script gScript;

#endif  // SCRIPT_H
