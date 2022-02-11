#include "gba/gba.h"
#include "guest.h"
#include "structs.h"

static void sub_080002E0();
static void sub_080003D8();

struct struct_02004848 {
    template <class T>
    struct Flags {
        T _1 : 1;
        T _2 : 1;
        T _4 : 1;
        T _8 : 1;
        T _10 : 1;
        T _20 : 1;
        T _40 : 1;
        T _80 : 1;
    };

    u8 _0;
    union __attribute__((packed)) {  // FIXME
        Flags<s8> flags_s8;
        Flags<u8> flags_u8;
    };
};
extern struct_02004848 gUnknown_02004848;

struct struct_020050C0 {
    u8 filler[284];
    u8 _284;
} gUnknown_020050C0;
extern struct_020050C0 gUnknown_020050C0;

struct struct_020047E0 {
    u8 _0;
    u8 _1[3];
    u8 _4;
    u8 _5[5];
    u16 _a;
    u8 filler[0x30];
    u8 _3c;
};
extern struct_020047E0 gUnknown_020047E0;

extern "C" void sub_08000E0C();
extern "C" void sub_08000E30();
extern "C" void sub_08000DC0();
extern "C" void sub_08000838();
extern "C" void sub_080008E0();
extern "C" void sub_08003720();
extern "C" void sub_08000904();
extern "C" void DoReset();
extern "C" void sub_08000910();
extern "C" void sub_08000920();
extern "C" void sub_080004D8();
extern "C" void sub_08000600();
extern "C" void sub_080006A0();
extern "C" void sub_08000748();
extern "C" void sub_08000790();
extern "C" void sub_080007B0();
extern "C" void sub_080007CC();
extern "C" void sub_0803DBB8();
extern "C" void sub_08003EF8();
extern "C" void sub_080512CC(u32);
extern "C" void sub_080037F0(u32);
extern "C" void sub_08026C28();
extern "C" void init_battle();
extern "C" void sub_080037E4();
extern "C" void sub_08026CE4();
extern "C" void sub_08026CD0();
extern "C" void set_event_flag(u32, u32);
extern "C" void sub_08056740();
extern "C" void sub_0805850C();
extern "C" void sub_0805BA98();
extern "C" void sub_0805A2DC();
extern "C" void sub_080037D8();
extern "C" void sub_0805ACF4();
extern "C" void IntrMain();
extern "C" void sub_080037A8();
extern "C" void sub_080037BC();
extern "C" void sub_0800303C();
extern "C" void sub_08000944();
extern "C" void sub_08000BE8();
extern "C" u32 get_flag(u32);
extern "C" void sub_08000944();
extern "C" void sub_08000BE8();
extern "C" u32 sub_08001DB0(u32);
extern "C" void sub_08001B54(void*, u32, u32);
extern "C" u32 sub_08001C5C(u32, u32);
extern "C" void sub_08002420(void*, u32, s16);
extern "C" void sub_0800272C();
extern "C" void sub_0805B528();
extern "C" void sub_080019DC(void*, u32);
extern "C" void sub_08001ACC(void*, u32);

void sub_08001158(u16, u16);

extern u8 gUnknown_02005080;
extern u8 gUnknown_02005084;
extern u8 gUnknown_020051DC;
extern u8 gUnknown_020051E8;
extern u8 gUnknown_02004100;
extern u8 gUnknown_020047D0;
extern u8 gUnknown_020051E4;
extern u16 gUnknown_02004854;
extern u8 gUnknown_020051E0;
extern u8 gUnknown_080C17A0;
extern u8 gIntrHandlers;
extern u8 gIntrVector;
extern const char gUnknown_08CDB8A8[];
extern u8 gUnknown_03000008;
extern void* gUnknown_02015E38;

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
        u8* s = &gUnknown_02004848._0;
        s[1] |= 2;
    }

    sub_08003720();
    sub_08000904();
    sub_080002E0();
    DoReset();
}

void sub_080002E0() {
    do {
        switch (gUnknown_02004848._0) {
        case 0:
            sub_08000910();
            sub_080003D8();
            if (gUnknown_02005084 != 6) {
                sub_08000600();
            }
            gUnknown_02004848._0 = 2;
            gUnknown_02005080 = 0;
            break;
        case 1:
            sub_08000920();
            sub_080003D8();
            gUnknown_02004848._0 = 2;
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
        gUnknown_02004848._0 = 8;
        break;
    case 2:
        gUnknown_02004848._0 = 9;
        break;
    case 3:
        if (gSave._708 == 0) {
            gUnknown_02004848._0 = 10;
            gUnknown_020047D0 = 1;
        } else {
            gUnknown_02004100 = 13;
            sub_0803DBB8();
            switch (gUnknown_020051E8) {
            case 4:
                gUnknown_02004848._0 = 4;
                gUnknown_02005080 = 2;
                break;
            case 5:
                gUnknown_02004848._0 = 10;
                gUnknown_020047D0 = 1;
                break;
            }
        }
        break;
    case 4:
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 1;
        break;
    case 5:
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 2;
        break;
    case 6:
        gUnknown_02004848._0 = 11;
        break;
    }
}

void sub_080004D8() {
    if (gUnknown_020047E0._0 == 3) {
        gUnknown_020047E0._3c = 1;
        sub_080037F0(0);
        sub_08026C28();
        gUnknown_02004848._0 = 5;
        gUnknown_02005080 = 3;
        return;
    }

    init_battle();
    gUnknown_020047E0._4 = 0;

    if (gUnknown_020047E0._0 == 2) {
        gUnknown_02004848._0 = 9;
        gUnknown_02004100 = 4;
        sub_080037E4();
        return;
    }

    switch (gUnknown_020047E0._3c) {
    case 1:
        sub_08026C28();
        break;
    case 3:
        if (gUnknown_020047E0._0 == 1 && gUnknown_020047E0._a == 23) {
            sub_08026CD0();
        } else {
            if (gSave._708 == 0) {
                gUnknown_02004848._0 = 10;
                gUnknown_020047D0 = 1;
                sub_080037E4();
                return;
            }
            set_event_flag(789, 0);
            gUnknown_02004100 = 13;
            sub_0803DBB8();
            switch (gUnknown_020051E8) {
            case 4:
                gUnknown_02004848._0 = 4;
                gUnknown_02005080 = 2;
                return;
            case 5:
                gUnknown_02004848._0 = 10;
                gUnknown_020047D0 = 1;
                return;
            }
        }
        break;
    case 2:
        sub_08026CE4();
        break;
    }
    gUnknown_02004848._0 = 5;
    gUnknown_02005080 = 3;
}

void sub_08000600() {
    sub_0803DBB8();
    switch (gUnknown_020051E8) {
    case 0:
    case 2:
        gUnknown_02004848._0 = 6;
        gUnknown_02005080 = 4;
        break;
    case 1:
        gUnknown_02004848._0 = 6;
        gUnknown_02005080 = 0;
        break;
    case 5:
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 1;
        break;
    case 3:
        gUnknown_02004848._0 = 3;
        gUnknown_02005080 = 1;
        break;
    case 6:
        gUnknown_02004848._0 = 8;
        break;
    }
}

void sub_080006A0(void) {
    sub_08056740();
    switch (gUnknown_02005084) {
    case 0:
    case 6:
        gUnknown_02004848._0 = 0;
        gUnknown_02005080 = 6;
        gUnknown_02004100 = 11;
        break;
    case 1:
        gUnknown_02004848._0 = 9;
        gUnknown_02004100 = 8;
        break;
    case 2:
        gUnknown_02004848._0 = 12;
        break;
    case 4:
        gUnknown_02004848._0 = 9;
        gUnknown_02004100 = 9;
        break;
    case 5:
        gUnknown_02004848._0 = 7;
        gUnknown_02005080 = 5;
        break;
    }
}

void sub_08000748(void) {
    sub_0805850C();
    switch (gUnknown_02004854) {
    case 0:
        gUnknown_02004848._0 = 6;
        gUnknown_02005080 = 4;
        break;
    case 1:
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 1;
        break;
    }
}

void sub_08000790() {
    sub_0805BA98();
    gUnknown_02004848._0 = 10;
    gUnknown_020047D0 = 1;
}

void sub_080007B0(void) {
    sub_080037E4();
    sub_0805A2DC();
    sub_080037D8();
    gUnknown_02004848._0 = 14;
}

void sub_080007CC(void) {
    u32 tmp = gUnknown_02004848.flags_s8._1;
    if (tmp != 0) {
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 0;
        return;
    }

    sub_080037E4();
    sub_0805ACF4();
    sub_080037D8();

    switch (gUnknown_020051E0) {
    case 0:
        gUnknown_02004848.flags_s8._1 = 1;
        break;
    case 1:
        gUnknown_02004848.flags_s8._1 = 0;
        break;
    }

    gUnknown_02004848._0 = 10;
    gUnknown_020047D0 = 0;
}

void sub_08000838() {
    REG_IME = 0;
    REG_IE &= ~7;
    REG_DISPSTAT &= ~0x38;
    memcpy(&gIntrHandlers, &gUnknown_080C17A0, 56);
    DmaCopy32(3, IntrMain, &gIntrVector, 0x800);
    INTR_VECTOR = &gIntrVector;
    REG_IME = 1;
}

extern "C" void sub_080008AC() {
    sub_080037A8();
    sub_080037BC();

    REG_IME = 0;
    INTR_CHECK = 1;
    REG_IME = 1;
}

extern "C" void sub_080008D0() {
    REG_IF = 2;
}

extern "C" void sub_080008DC() {}

void sub_080008E0() {
    gUnknown_02004848._0 = 13;
    gUnknown_02004848.flags_s8._2 = 0;
    sub_0800303C(0x1105);
}

void sub_08000904() {
    sub_080512CC(1);
}

void sub_08000910() {
    sub_08000944();
    sub_08000BE8();
}

void sub_08000920() {
    u16 val = get_flag(157);
    sub_08000944();
    set_event_flag(157, val);
    sub_08000BE8();
}

void sub_08000944() {
    u16 i;

    for (i = 0; i < 5; ++i) {
        gSave._0[i] = 0;
    }
    gSave.dp_pocket = 0;
    gSave.dp_bank = 0;
    for (i = 0; i < 0x100; ++i) {
        gSave._10[i] = 0;
        gSave._110[i] = 0;
    }
    gSave._210 = 0;
    gSave._214 = 0;
    gSave._218 = 0;
    gSave._21c = 0;
    gSave._220 = 0;
    for (i = 0; i < 5; ++i) {
        gSave._222[i] = 0;
        gSave._22c[i] = 0;
        gSave._236[i] = 0;
    }
    for (i = 0; i < 0x100; ++i) {
        gSave.event_flags[i] = 0;
    }
    for (i = 0; i < 0x40; ++i) {
        gSave._340[i] = 0;
        gSave._380[i] = 0;
        gSave._3c0[i] = 0;
    }
    for (i = 0; i < 0x80; ++i) {
        gSave._400[i] = 0;
    }
    gSave._480 = 1;
    for (i = 0; i < 0x80; ++i) {
        gSave._482[i] = 0;
        gSave._582[i] = 100;
    }
    u16 tmp = sub_08001DB0(5);
    sub_08001B54(gSave._682, sizeof gSave._682, -1);
    sub_08002420(gSave._682, sub_08001C5C(5, 8), tmp);
    sub_08001B54(gSave._692, sizeof gSave._692, -1);
    sub_08002420(gSave._692, sub_08001C5C(5, 5), tmp);
    sub_08001B54(gSave._6a2, sizeof gSave._6a2, -1);
    sub_08001B54(gSave._6b4, sizeof gSave._6b4, -1);
    sub_08001B54(gSave._6c6, sizeof gSave._6c6, -1);
    sub_08001B54(gSave._6d8, sizeof gSave._6d8, -1);
    gSave._6f8 = 0;
    gSave._6fa = 0;
    gSave._6fc = 0;
    gSave._6fe = 0;
    gSave._700 = 0;
    gSave._702 = 0;
    gSave._704 = 0;
    gSave._706 = 0;
    gSave._708 = 0;
    gSave._70a = 0;
    gSave._70c = 0;
    gSave._70e = 0;
    gSave._71a = 0;
    gSave._71b = 0;
    gSave._71c = 0;
    gSave._71e = 0;
    gSave._734 = 0;
    gSave._735 = 0;
    gSave._736 = 0;
    for (i = 0; i < 10; ++i) {
        gSave._710[i] = 0;
        gSave._72a[i] = 0;
    }
    sub_0800272C();
    for (i = 0; i < 0x20; ++i) {
        gSave._74a[i] = 0;
        gSave._76a[i] = 0;
    }
    gSave._78a = 0;
    gSave._78b = 0;
    gSave._78c = 0;
    gSave._78d = 0;
    for (i = 0; i < 0x40; ++i) {
        gSave._78e[i] = 0;
    }
    for (i = 0; i < 0x10; ++i) {
        gSave._80e[i] = 0;
    }
    gSave._81e = 0;
}

void sub_08000BE8() {
    u32 tmp = sub_08001DB0(5);
    for (u16 i = 0; i < 0x10; ++i) {
        sub_08001B54(&gGuestStats[i].name, sizeof gGuestStats[i].name, -1);
        sub_08002420(&gGuestStats[i].name, sub_08001C5C(6, i), tmp);
    }
    gGuestStats[0].charNo = 0;
    gGuestStats[0].spriteNo = 0;
    gGuestStats[1].charNo = 1;
    gGuestStats[1].spriteNo = 1;
    gGuestStats[2].charNo = 2;
    gGuestStats[2].spriteNo = 3;
    gGuestStats[3].charNo = 3;
    gGuestStats[3].spriteNo = 15;
    gGuestStats[4].charNo = 4;
    gGuestStats[4].spriteNo = 11;
    gGuestStats[5].charNo = 5;
    gGuestStats[5].spriteNo = 9;
    gGuestStats[6].charNo = 6;
    gGuestStats[6].spriteNo = 18;
    gGuestStats[7].charNo = 7;
    gGuestStats[7].spriteNo = 14;
    gGuestStats[8].charNo = 8;
    gGuestStats[8].spriteNo = 32;
    gGuestStats[9].charNo = 9;
    gGuestStats[9].spriteNo = 116;
    gGuestStats[10].charNo = 10;
    gGuestStats[10].spriteNo = 86;
    gGuestStats[11].charNo = 11;
    gGuestStats[11].spriteNo = 88;
    gGuestStats[12].charNo = 12;
    gGuestStats[12].spriteNo = 17;
    gGuestStats[13].charNo = 13;
    gGuestStats[13].spriteNo = 5;
    gGuestStats[14].charNo = 0;
    gGuestStats[14].spriteNo = 0;
    gGuestStats[15].charNo = 0;
    gGuestStats[15].spriteNo = 0;
    sub_0805B528();
}

extern "C" u8 sub_08000D54() {
    return gUnknown_02004848.flags_u8._1;
}

extern "C" void sub_08000D64(volatile u16 a) {
    gUnknown_02004848.flags_s8._1 = a;
}

extern "C" void sub_08000D88(void) {
    char* dest = (char*)0x03000000;

    for (u16 i = 0; i < 8; ++i, ++dest) {
        u32 tmp = gUnknown_02004848.flags_u8._1;
        if (tmp) {
            *dest = gUnknown_08CDB8A8[i];
        } else {
            *dest = '\0';
        }
    }
}

extern "C" void sub_08000DC0() {
    char* dest = (char*)0x03000000;

    for (u16 i = 0; i < 8; ++i, ++dest) {
        if (*dest != gUnknown_08CDB8A8[i]) {
            gUnknown_02004848.flags_u8._1 = 0;
            return;
        }
    }
    gUnknown_02004848.flags_u8._1 = 1;
}

void sub_08000E0C(void) {
    sub_080019DC((void*)0x2000000, 0x40000);
    sub_080019DC(&gUnknown_03000008, 0x7D98);
}

void sub_08000E30() {
    sub_08001ACC((void*)0x6000000, 0x18000);
    sub_08001ACC((void*)0x5000000, 0x400);
    sub_08001ACC((void*)0x7000000, 0x400);
}

extern "C" ASM_FUNC("asm/non_matching/main/sub_08000E5C.inc", void sub_08000E5C(void* p));

extern "C" ASM_FUNC("asm/non_matching/main/sub_08000F04.inc", void sub_08000F04(void* p, u32 a));

ASM_FUNC("asm/non_matching/main/sub_08000FA0.inc", void sub_08000FA0(void* p, u32 a, u32 b));

ASM_FUNC("asm/non_matching/main/sub_08000FE4.inc", void sub_08000FE4(void* p, u32 a));

ASM_FUNC("asm/non_matching/main/sub_0800100C.inc", void sub_0800100C(void* p, u32 a));

void sub_08001138(void* a, u16 b) {
    gUnknown_02015E38 = a;
    sub_08001158(0, b - 1);
}

ASM_FUNC("asm/non_matching/main/sub_08001158.inc", void sub_08001158(u16 a, u16 b));
