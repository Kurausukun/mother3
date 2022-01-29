#include "gba/gba.h"
#include "structs.h"

extern "C" {
void sub_08000E0C();
void sub_08000E30();
void sub_08000DC0();
void sub_08000838();
void sub_080008E0();

void sub_08003720();
void sub_08000904();
void sub_080002E0();
void sub_08001718();

void sub_08000910();
void sub_08000920();
void sub_080003D8();
void sub_080004D8();
void sub_08000600();
void sub_080006A0();
void sub_08000748();
void sub_08000790();
void sub_080007B0();
void sub_080007CC();
void sub_0803DBB8();
void sub_08003EF8();
void sub_080512CC(u32);

struct struct_02004848 {
    u8 _0[2];
};
extern struct_02004848 gUnknown_02004848;

struct struct_020050C0 {
    u8 filler[284];
    u8 _284;
} gUnknown_020050C0;
extern struct_020050C0 gUnknown_020050C0;

extern u8 gUnknown_02005080;
extern u8 gUnknown_02005084;
extern u8 gUnknown_020051DC;
extern u8 gUnknown_020051E8;
extern u8 gUnknown_02004100;
extern u8 gUnknown_020047D0;
extern u8 gUnknown_020051E4;
}
extern "C" void AgbMain() {
    REG_WAITCNT = 0x45b4;
    REG_IE = 0x2000;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2000;

    sub_08000E0C();
    sub_08000E30();
    sub_08000DC0();
    sub_08000838();
    sub_080008E0();

    u32 keys = ~REG_KEYINPUT;
    if (((keys << 0x16) >> 0x16) == 0xf) {
        u8* s = gUnknown_02004848._0;
        s[1] |= 2;
    }

    sub_08003720();
    sub_08000904();
    sub_080002E0();
    sub_08001718();
}

void sub_080002E0() {
    do {
        switch (gUnknown_02004848._0[0]) {
        case 0:
            sub_08000910();
            sub_080003D8();
            if (gUnknown_02005084 != 6) {
                sub_08000600();
            }
            gUnknown_02004848._0[0] = 2;
            gUnknown_02005080 = 0;
            break;
        case 1:
            sub_08000920();
            sub_080003D8();
            gUnknown_02004848._0[0] = 2;
            gUnknown_02005080 = 0;
            break;
        case 2 ... 7:
            sub_080003D8();
            break;
        case 8:
            sub_080004D8();
            break;
        case 9:
            sub_08000600();
            break;
        case 10:
            sub_080006A0();
            break;
        case 11:
            sub_08000748();
            break;
        case 12:
            sub_08000790();
            break;
        case 13:
            sub_080007B0();
            break;
        case 14:
            sub_080007CC();
            if (gUnknown_020050C0._284 & 0x18) {
                gUnknown_02004100 = 10;
                sub_0803DBB8();
                sub_08000838();
                sub_080512CC(0);
            }
            break;
        }
        sub_08000838();
    } while (true);
}

void sub_080003D8(void) {
    sub_08003EF8();
    switch (gUnknown_020051E4) {
    case 0:
        break;
    case 1:
        gUnknown_02004848._0[0] = 8;
        break;
    case 2:
        gUnknown_02004848._0[0] = 9;
        break;
    case 3:
        if (gSave._708 == 0) {
            gUnknown_02004848._0[0] = 10;
            gUnknown_020047D0 = 1;
        } else {
            gUnknown_02004100 = 13;
            sub_0803DBB8();
            switch (gUnknown_020051E8) {
            case 4:
                gUnknown_02004848._0[0] = 4;
                gUnknown_02005080 = 2;
                break;
            case 5:
                gUnknown_02004848._0[0] = 10;
                gUnknown_020047D0 = 1;
                break;
            }
        }
        break;
    case 4:
        gUnknown_02004848._0[0] = 10;
        gUnknown_020047D0 = 1;
        break;
    case 5:
        gUnknown_02004848._0[0] = 10;
        gUnknown_020047D0 = 2;
        break;
    case 6:
        gUnknown_02004848._0[0] = 11;
        break;
    }
}
