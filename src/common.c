#include <stdbool.h>
#include "global.h"
#include "structs.h"

u16 get_progression_flag(s32);
bool8 ch_is_lucas(CharStats* ch);
bool8 ch_is_kumatora(CharStats* ch);
bool8 sub_0805C58C(u8* data, s32);
void sub_0805C548(u8*, s32, bool8);

u32 sub_0805C1A8(CharStats* ch, LevelStats* ls, s32 level);

typedef struct {
    u32 a, b;
} S1;

typedef struct {
    u32 a;
    S1 b;
    u32 c;
} S2;

u32 sub_0805C0A0(s32 r0) {
    return Div(r0, 10) * 10;
}

u32 sub_0805C0B4(s32 r0) {
    return (Div(r0, 10) + 1) * 10;
}

S1 sub_0805C0CC(s32 r0, S2* r1, s32 num) {
    return ((S2*)((u8*)r1 - 8))[1 + Div(num, 10)].b;
}

S1 sub_0805C0F0(s32 r0, S2* r1, s32 num) {
    return r1[1 + Div(num, 10)].b;
}

NONMATCH("asm/non_matching/common/sub_0805C114.inc",
         s32 sub_0805C114(s32 r0, s32 r1, s32 r2, s32 r3, s32 r4, s32 r5)) {
    u16 tmp;
    s32 tmp2;

    if (r1 == r3) {
        return r3;
    }
    tmp = (r2 - r0 != 0 ? Div(tmp, r2 - r0) : r2 - r4);
    tmp2 = tmp * (r1 - r3);
    tmp2 = sub_0805D234(tmp2, tmp2 + sub_0805C168(r4));
    r3 = r5;
    if (tmp2 < r5)
        r3 = tmp;
    return r3;
}
END_NONMATCH

u32 sub_0805C168(s32 num) {
    return Div(num + 1, 20);
}

u32 sub_0805C178(s32 ch_no, s32 level) {
    return sub_0805C1A8(&gCharStats[ch_no], &gLevelStatTable[ch_no], level);
}

u32 sub_0805C1A8(CharStats* ch, LevelStats* ls, s32 level) {
    int total = 0;
    int i;
    for (i = 0; i < level; i++) {
        total += gExpTable[ls->ch_no].deltas[i];
    }
    return total;
}

bool8 ch_has_psi(CharStats* ch) {
    if (ch_is_lucas(ch) == true) {
        return get_progression_flag(4) > 0x11;
    }
    if (ch_is_kumatora(ch) == true) {
        return true;
    }
    return false;
}

s32 sub_0805C21C(CharStats* ch) {
    if (ch_is_lucas(ch) == true) {
        return 80;
    }
    if (ch_is_kumatora(ch) == true) {
        return 80;
    }
    return 0;
}

void sub_0805C248(CharStats* ch, u16 r1, bool8 r2) {
    if (ch_is_lucas(ch) == true) {
        sub_0805C548(gSave._710, r1, r2 == true);
    } else if (ch_is_kumatora(ch) == true) {
        sub_0805C548(gSave._72a, r1, r2 == true);
    }
}

bool8 sub_0805C2AC(CharStats* ch, u16 r1) {
    if (ch_is_lucas(ch) == true) {
        return sub_0805C58C(gSave._710, r1) == true;
    }
    if (ch_is_kumatora(ch) == true) {
        return sub_0805C58C(gSave._72a, r1) == true;
    }
    return false;
}

void sub_0805C300(CharStats* ch, u16 r1, bool8 r2) {
    if (ch_is_lucas(ch) == true) {
        sub_0805C548(gSave._720, r1, r2 == true);
    } else if (ch_is_kumatora(ch) == true) {
        sub_0805C548(gSave._738 + 2, r1, r2 == true);
    }
}

bool8 sub_0805C364(CharStats* ch, u16 r1) {
    if (ch_is_lucas(ch) == true) {
        return sub_0805C58C(gSave._720, r1) == true;
    }
    if (ch_is_kumatora(ch) == true) {
        return sub_0805C58C(gSave._738 + 2, r1) == true;
    }
    return false;
}

void sub_0805C3B8(CharStats* ch) {
    if (ch_is_lucas(ch) == true) {
        int i;
        for (i = 0; i < sub_0805C21C(ch); i++) {
            if (sub_0805C58C(gSave._710, i) == true) {
                sub_0805C548(gSave._720, i, true);
                sub_0805C548(gSave._710, i, false);
            }
        }
    } else if (ch_is_kumatora(ch) == true) {
        int i;
        for (i = 0; i < sub_0805C21C(ch); i++) {
            if (sub_0805C58C(gSave._72a, i) == true) {
                sub_0805C548(gSave._738 + 2, i, true);
                sub_0805C548(gSave._72a, i, false);
            }
        }
    }
}

void sub_0805C458(CharStats* ch, s32 r1) {
    if (ch_is_lucas(ch) == true) {
        LevelStats* ls = &gLevelStatTable[ch->charNo];
        int i;
        for (i = 0; i < 32; i++) {
            if (ls->psi_table[i].psi_no != 0 && r1 >= ls->psi_table[i].level) {
                sub_0805C548(gSave._720, ls->psi_table[i].psi_no, true);
                sub_0805C548(gSave._710, ls->psi_table[i].psi_no, false);
            }
        }
    } else if (ch_is_kumatora(ch) == true) {
        LevelStats* ls = &gLevelStatTable[ch->charNo];
        int i;
        for (i = 0; i < 32; i++) {
            if (ls->psi_table[i].psi_no != 0 && r1 >= ls->psi_table[i].level) {
                sub_0805C548(gSave._738 + 2, ls->psi_table[i].psi_no, true);
                sub_0805C548(gSave._72a, ls->psi_table[i].psi_no, false);
            }
        }
    }
}

bool8 ch_is_lucas(CharStats* ch) {
    return ch != NULL && ch->charNo == 2;
}

bool8 ch_is_kumatora(CharStats* ch) {
    return ch != NULL && ch->charNo == 4;
}

void sub_0805C548(u8* ptr, s32 idx, bool8 on) {
    if (on == true) {
        s32 offset = idx / 8;
        u8* tgt = ptr + offset;
        u32 bit = 1 << (idx % 8);
        *tgt |= bit;
    } else {
        s32 offset = idx / 8;
        u8* tgt = ptr + offset;
        u32 bit = 1 << (idx % 8);
        *tgt &= ~bit;
    }
}

bool8 sub_0805C58C(u8* ptr, s32 idx) {
    u32 bit_set = *(ptr + idx / 8) >> (idx % 8) & 1;
    if (bit_set) {
        return true;
    }
    return false;
}

ASM_FUNC("asm/non_matching/common/sub_0805C5B8.inc",
         u8* sub_0805C5B8(u8* r0, CharStats* ch, u16 r2, u32 r3));

void sub_0805C7F0(CharStats* ch, void* psi_data, CharStats* ch2) {
    ch2->curHP = ch2->maxHP;
}

void sub_0805C7F8(CharStats* ch, void* psi_data, CharStats* ch2) {
    u16 i;
    for (i = 1; i < 9; i++) {
        u16 bit = (1 << (i - 1));
        if (ch2->ailments & bit) {
            ch2->ailments &= ~bit;
            break;
        }
    }
}

void sub_0805C82C(CharStats* ch, void* psi_data, CharStats* ch2) {
    u16 i;
    for (i = 1; i < 9; i++) {
        ch2->ailments &= ~(1 << (i - 1));
    }
}

void sub_0805C850(CharStats* ch, void* psi_data, CharStats* ch2) {
    if (ch2->curHP < 1) {
        ch2->curHP = ch2->maxHP;
    } else {
        u16 i;
        for (i = 1; i < 9; i++) {
            ch2->ailments &= ~(1 << (i - 1));
        }
    }
}

void sub_0805C888(CharStats* ch, void* psi_data, CharStats* ch2) {
    sub_0805C850(ch, psi_data, ch2);
}

u32 sub_0805C894(u16 idx) {
    return gGoodsInfo[idx].action.target;
}

NAKED void sub_0805C8AC() {
    asm_unified("\n\
push {r4, r5, r6, r7, lr}\n\
mov r7, sl\n\
mov r6, sb\n\
mov r5, r8\n\
push {r5, r6, r7}\n\
sub sp, #0x80\n\
str r0, [sp, #0x7c]\n\
adds r7, r1, #0\n\
lsls r2, r2, #0x10\n\
lsrs r6, r2, #0x10\n\
movs r0, #0\n\
str r0, [sp]\n\
cmp r3, #0\n\
beq _0805C8DA\n\
movs r0, #1\n\
str r3, [sp, #4]\n\
str r0, [sp]\n\
add r0, sp, #0x18\n\
mov sl, r0\n\
movs r1, #0x3c\n\
adds r1, r1, r7\n\
mov sb, r1\n\
b _0805C92A\n\
_0805C8DA:\n\
movs r4, #0\n\
ldr r2, _0805C9AC @ =gSave\n\
mov ip, r2\n\
add r3, sp, #0x18\n\
mov sl, r3\n\
movs r0, #0x3c\n\
adds r0, r0, r7\n\
mov sb, r0\n\
ldr r1, _0805C9B0 @ =gLevelStatTable\n\
mov r8, r1\n\
ldr r5, _0805C9B4 @ =gCharStats\n\
_0805C8F0:\n\
mov r2, ip\n\
adds r0, r4, r2\n\
ldrb r1, [r0]\n\
lsls r0, r1, #2\n\
adds r0, r0, r1\n\
lsls r0, r0, #4\n\
adds r0, r0, r1\n\
lsls r0, r0, #2\n\
add r0, r8\n\
adds r0, #0xbd\n\
ldrb r0, [r0]\n\
cmp r0, #1\n\
bne _0805C924\n\
movs r0, #0x6c\n\
adds r2, r1, #0\n\
muls r2, r0, r2\n\
adds r2, r2, r5\n\
ldr r1, [sp]\n\
adds r3, r1, #1\n\
cmp r3, #5\n\
bgt _0805C924\n\
lsls r1, r1, #2\n\
add r0, sp, #4\n\
adds r0, r0, r1\n\
str r2, [r0]\n\
str r3, [sp]\n\
_0805C924:\n\
adds r4, #1\n\
cmp r4, #4\n\
ble _0805C8F0\n\
_0805C92A:\n\
ldr r0, [sp]\n\
mov r3, sl\n\
strb r0, [r3]\n\
movs r5, #0\n\
ldr r1, [sp]\n\
cmp r5, r1\n\
bge _0805C95A\n\
mov r4, sl\n\
adds r4, #4\n\
add r0, sp, #4\n\
mov r8, r0\n\
_0805C940:\n\
mov r1, r8\n\
adds r1, #4\n\
mov r8, r1\n\
subs r1, #4\n\
ldm r1!, {r0}\n\
adds r1, r4, #0\n\
bl sub_080687C0\n\
adds r4, #0x10\n\
adds r5, #1\n\
ldr r0, [sp]\n\
cmp r5, r0\n\
blt _0805C940\n\
_0805C95A:\n\
movs r2, #0\n\
ldr r1, [sp]\n\
_0805C95E:\n\
mov r3, sb\n\
adds r0, r3, r2\n\
ldrb r0, [r0]\n\
cmp r0, r6\n\
beq _0805C96A\n\
b _0805CB24\n\
_0805C96A:\n\
movs r4, #0\n\
cmp r4, r1\n\
blt _0805C972\n\
b _0805CB2C\n\
_0805C972:\n\
ldr r0, _0805C9B8 @ =gGoodsInfo\n\
movs r1, #0x6c\n\
muls r1, r6, r1\n\
adds r0, #0x48\n\
adds r1, r1, r0\n\
ldr r1, [r1]\n\
lsls r3, r4, #2\n\
cmp r1, #2\n\
beq _0805C996\n\
cmp r1, #4\n\
beq _0805C996\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r0, [r0]\n\
ldr r0, [r0, #0x18]\n\
cmp r0, #0\n\
bgt _0805C996\n\
b _0805CB14\n\
_0805C996:\n\
adds r0, r6, #0\n\
subs r0, #0x69\n\
cmp r0, #0x2b\n\
bls _0805C9A0\n\
b _0805CAFC\n\
_0805C9A0:\n\
lsls r0, r0, #2\n\
ldr r1, _0805C9BC @ =_0805C9C0\n\
adds r0, r0, r1\n\
ldr r0, [r0]\n\
mov pc, r0\n\
.align 2, 0\n\
_0805C9AC: .4byte gSave\n\
_0805C9B0: .4byte gLevelStatTable\n\
_0805C9B4: .4byte gCharStats\n\
_0805C9B8: .4byte gGoodsInfo\n\
_0805C9BC: .4byte _0805C9C0\n\
_0805C9C0: @ jump table\n\
.4byte _0805CA70 @ case 0\n\
.4byte _0805CAFC @ case 1\n\
.4byte _0805CAFC @ case 2\n\
.4byte _0805CAFC @ case 3\n\
.4byte _0805CAFC @ case 4\n\
.4byte _0805CAFC @ case 5\n\
.4byte _0805CAFC @ case 6\n\
.4byte _0805CAFC @ case 7\n\
.4byte _0805CAFC @ case 8\n\
.4byte _0805CA8C @ case 9\n\
.4byte _0805CA8C @ case 10\n\
.4byte _0805CAFC @ case 11\n\
.4byte _0805CAFC @ case 12\n\
.4byte _0805CAFC @ case 13\n\
.4byte _0805CAFC @ case 14\n\
.4byte _0805CAFC @ case 15\n\
.4byte _0805CAFC @ case 16\n\
.4byte _0805CAFC @ case 17\n\
.4byte _0805CAFC @ case 18\n\
.4byte _0805CAFC @ case 19\n\
.4byte _0805CAFC @ case 20\n\
.4byte _0805CAFC @ case 21\n\
.4byte _0805CAFC @ case 22\n\
.4byte _0805CAFC @ case 23\n\
.4byte _0805CAFC @ case 24\n\
.4byte _0805CAFC @ case 25\n\
.4byte _0805CAFC @ case 26\n\
.4byte _0805CAFC @ case 27\n\
.4byte _0805CAFC @ case 28\n\
.4byte _0805CAFC @ case 29\n\
.4byte _0805CAFC @ case 30\n\
.4byte _0805CAFC @ case 31\n\
.4byte _0805CAFC @ case 32\n\
.4byte _0805CAFC @ case 33\n\
.4byte _0805CAFC @ case 34\n\
.4byte _0805CAFC @ case 35\n\
.4byte _0805CAFC @ case 36\n\
.4byte _0805CAFC @ case 37\n\
.4byte _0805CAA8 @ case 38\n\
.4byte _0805CAFC @ case 39\n\
.4byte _0805CAFC @ case 40\n\
.4byte _0805CAFC @ case 41\n\
.4byte _0805CAC4 @ case 42\n\
.4byte _0805CAE0 @ case 43\n\
_0805CA70:\n\
movs r0, #0x6c\n\
adds r1, r6, #0\n\
muls r1, r0, r1\n\
ldr r0, _0805CA88 @ =gUnknown_080E5148\n\
adds r1, r1, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r2, [r0]\n\
adds r0, r7, #0\n\
bl sub_0805CB78\n\
b _0805CB14\n\
.align 2, 0\n\
_0805CA88: .4byte gUnknown_080E5148\n\
_0805CA8C:\n\
movs r0, #0x6c\n\
adds r1, r6, #0\n\
muls r1, r0, r1\n\
ldr r0, _0805CAA4 @ =gUnknown_080E5148\n\
adds r1, r1, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r2, [r0]\n\
adds r0, r7, #0\n\
bl sub_0805CC10\n\
b _0805CB14\n\
.align 2, 0\n\
_0805CAA4: .4byte gUnknown_080E5148\n\
_0805CAA8:\n\
movs r0, #0x6c\n\
adds r1, r6, #0\n\
muls r1, r0, r1\n\
ldr r0, _0805CAC0 @ =gUnknown_080E5148\n\
adds r1, r1, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r2, [r0]\n\
adds r0, r7, #0\n\
bl sub_0805CC4C\n\
b _0805CB14\n\
.align 2, 0\n\
_0805CAC0: .4byte gUnknown_080E5148\n\
_0805CAC4:\n\
movs r0, #0x6c\n\
adds r1, r6, #0\n\
muls r1, r0, r1\n\
ldr r0, _0805CADC @ =gUnknown_080E5148\n\
adds r1, r1, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r2, [r0]\n\
adds r0, r7, #0\n\
bl sub_0805CC5C\n\
b _0805CB14\n\
.align 2, 0\n\
_0805CADC: .4byte gUnknown_080E5148\n\
_0805CAE0:\n\
movs r0, #0x6c\n\
adds r1, r6, #0\n\
muls r1, r0, r1\n\
ldr r0, _0805CAF8 @ =gUnknown_080E5148\n\
adds r1, r1, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r2, [r0]\n\
adds r0, r7, #0\n\
bl sub_0805CCA4\n\
b _0805CB14\n\
.align 2, 0\n\
_0805CAF8: .4byte gUnknown_080E5148\n\
_0805CAFC:\n\
movs r0, #0x6c\n\
adds r2, r6, #0\n\
muls r2, r0, r2\n\
ldr r0, _0805CB20 @ =gUnknown_080E5148\n\
adds r2, r2, r0\n\
adds r0, r3, #4\n\
add r0, sp\n\
ldr r3, [r0]\n\
add r0, sp, #0x6c\n\
adds r1, r7, #0\n\
bl sub_080687DC\n\
_0805CB14:\n\
adds r4, #1\n\
ldr r1, [sp]\n\
cmp r4, r1\n\
bge _0805CB1E\n\
b _0805C972\n\
_0805CB1E:\n\
b _0805CB2C\n\
.align 2, 0\n\
_0805CB20: .4byte gUnknown_080E5148\n\
_0805CB24:\n\
adds r2, #1\n\
cmp r2, #0xf\n\
bgt _0805CB2C\n\
b _0805C95E\n\
_0805CB2C:\n\
movs r5, #0\n\
cmp r5, r1\n\
bge _0805CB58\n\
movs r0, #0x6c\n\
adds r7, r6, #0\n\
muls r7, r0, r7\n\
mov r4, sl\n\
adds r4, #4\n\
add r6, sp, #4\n\
ldr r0, _0805CB74 @ =gUnknown_080E5148\n\
mov r8, r0\n\
_0805CB42:\n\
ldm r6!, {r0}\n\
mov r2, r8\n\
adds r1, r7, r2\n\
adds r2, r4, #0\n\
bl sub_080688B0\n\
adds r4, #0x10\n\
adds r5, #1\n\
ldr r0, [sp]\n\
cmp r5, r0\n\
blt _0805CB42\n\
_0805CB58:\n\
ldr r0, [sp, #0x7c]\n\
mov r1, sl\n\
movs r2, #0x54\n\
bl memcpy\n\
ldr r0, [sp, #0x7c]\n\
add sp, #0x80\n\
pop {r3, r4, r5}\n\
mov r8, r3\n\
mov sb, r4\n\
mov sl, r5\n\
pop {r4, r5, r6, r7}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805CB74: .4byte gUnknown_080E5148\n\
");
}
NAKED void sub_0805CB78() {
    asm_unified("\n\
push {r4, lr}\n\
adds r4, r2, #0\n\
movs r2, #0\n\
ldrb r0, [r4]\n\
subs r0, #1\n\
cmp r0, #5\n\
bhi _0805CBC4\n\
lsls r0, r0, #2\n\
ldr r1, _0805CB90 @ =_0805CB94\n\
adds r0, r0, r1\n\
ldr r0, [r0]\n\
mov pc, r0\n\
.align 2, 0\n\
_0805CB90: .4byte _0805CB94\n\
_0805CB94: @ jump table\n\
.4byte _0805CBBE @ case 0\n\
.4byte _0805CBAC @ case 1\n\
.4byte _0805CBBE @ case 2\n\
.4byte _0805CBC2 @ case 3\n\
.4byte _0805CBC2 @ case 4\n\
.4byte _0805CBC2 @ case 5\n\
_0805CBAC:\n\
adds r0, r4, #0\n\
bl sub_0805CBE0\n\
movs r1, #1\n\
ands r1, r0\n\
movs r2, #0x3c\n\
cmp r1, #0\n\
bne _0805CBC4\n\
b _0805CBC2\n\
_0805CBBE:\n\
movs r2, #0x3c\n\
b _0805CBC4\n\
_0805CBC2:\n\
movs r2, #0x14\n\
_0805CBC4:\n\
ldr r0, [r4, #0x18]\n\
adds r0, r0, r2\n\
ldr r2, [r4, #0x20]\n\
movs r1, #0\n\
cmp r0, #0\n\
blt _0805CBD8\n\
adds r1, r0, #0\n\
cmp r1, r2\n\
ble _0805CBD8\n\
adds r1, r2, #0\n\
_0805CBD8:\n\
str r1, [r4, #0x18]\n\
pop {r4}\n\
pop {r0}\n\
bx r0\n\
");
}
NAKED void sub_0805CBE0() {
    asm_unified("\n\
push {r4, r5, lr}\n\
adds r4, r0, #0\n\
movs r3, #0\n\
movs r2, #0\n\
ldrh r0, [r4, #2]\n\
ldr r1, _0805CC0C @ =0x0000FFFF\n\
cmp r0, r1\n\
beq _0805CC04\n\
adds r5, r1, #0\n\
adds r1, r4, #2\n\
_0805CBF4:\n\
adds r3, #1\n\
adds r1, #2\n\
adds r2, #1\n\
cmp r2, #7\n\
bgt _0805CC04\n\
ldrh r0, [r1]\n\
cmp r0, r5\n\
bne _0805CBF4\n\
_0805CC04:\n\
adds r0, r3, #0\n\
pop {r4, r5}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805CC0C: .4byte 0x0000FFFF\n\
");
}
NAKED void sub_0805CC10() {
    asm_unified("\n\
push {r4, r5, lr}\n\
sub sp, #0x10\n\
adds r4, r0, #0\n\
adds r5, r1, #0\n\
adds r3, r2, #0\n\
ldrb r0, [r3]\n\
cmp r0, #5\n\
bne _0805CC2C\n\
mov r0, sp\n\
adds r1, r4, #0\n\
adds r2, r5, #0\n\
bl sub_080687DC\n\
b _0805CC42\n\
_0805CC2C:\n\
ldr r0, [r3, #0x18]\n\
adds r0, #6\n\
ldr r2, [r3, #0x20]\n\
movs r1, #0\n\
cmp r0, #0\n\
blt _0805CC40\n\
adds r1, r0, #0\n\
cmp r1, r2\n\
ble _0805CC40\n\
adds r1, r2, #0\n\
_0805CC40:\n\
str r1, [r3, #0x18]\n\
_0805CC42:\n\
add sp, #0x10\n\
pop {r4, r5}\n\
pop {r0}\n\
bx r0\n\
.align 2, 0\n\
");
}
NAKED void sub_0805CC4C() {
    asm_unified("\n\
ldrh r1, [r2, #0x30]\n\
ldr r0, _0805CC58 @ =0x0000FFF7\n\
ands r0, r1\n\
strh r0, [r2, #0x30]\n\
bx lr\n\
.align 2, 0\n\
_0805CC58: .4byte 0x0000FFF7\n\
");
}
NAKED void sub_0805CC5C() {
    asm_unified("\n\
push {r4, r5, lr}\n\
adds r4, r2, #0\n\
ldr r0, [r4, #0x18]\n\
cmp r0, #0\n\
bgt _0805CC7C\n\
ldr r0, [r4, #0x20]\n\
cmp r0, #0\n\
bge _0805CC6E\n\
adds r0, #3\n\
_0805CC6E:\n\
asrs r1, r0, #2\n\
movs r0, #1\n\
cmp r0, r1\n\
bge _0805CC78\n\
adds r0, r1, #0\n\
_0805CC78:\n\
str r0, [r4, #0x18]\n\
b _0805CC9C\n\
_0805CC7C:\n\
movs r3, #1\n\
movs r5, #1\n\
ldrh r2, [r4, #0x30]\n\
_0805CC82:\n\
subs r0, r3, #1\n\
adds r1, r5, #0\n\
lsls r1, r0\n\
adds r0, r2, #0\n\
bics r0, r1\n\
adds r1, r0, #0\n\
adds r2, r1, #0\n\
adds r0, r3, #1\n\
lsls r0, r0, #0x10\n\
lsrs r3, r0, #0x10\n\
cmp r3, #8\n\
bls _0805CC82\n\
strh r1, [r4, #0x30]\n\
_0805CC9C:\n\
pop {r4, r5}\n\
pop {r0}\n\
bx r0\n\
.align 2, 0\n\
");
}
NAKED void sub_0805CCA4() {
    asm_unified("\n\
push {r4, r5, lr}\n\
adds r4, r2, #0\n\
ldr r0, [r4, #0x18]\n\
cmp r0, #0\n\
bgt _0805CCB4\n\
ldr r0, [r4, #0x20]\n\
str r0, [r4, #0x18]\n\
b _0805CCD4\n\
_0805CCB4:\n\
movs r3, #1\n\
movs r5, #1\n\
ldrh r2, [r4, #0x30]\n\
_0805CCBA:\n\
subs r0, r3, #1\n\
adds r1, r5, #0\n\
lsls r1, r0\n\
adds r0, r2, #0\n\
bics r0, r1\n\
adds r1, r0, #0\n\
adds r2, r1, #0\n\
adds r0, r3, #1\n\
lsls r0, r0, #0x10\n\
lsrs r3, r0, #0x10\n\
cmp r3, #8\n\
bls _0805CCBA\n\
strh r1, [r4, #0x30]\n\
_0805CCD4:\n\
pop {r4, r5}\n\
pop {r0}\n\
bx r0\n\
.align 2, 0\n\
");
}
NAKED void sub_0805CCDC() {
    asm_unified("\n\
push {r4, r5, lr}\n\
adds r4, r0, #0\n\
adds r3, r1, #0\n\
adds r5, r4, #0\n\
adds r5, #0x3c\n\
adds r1, r5, r3\n\
ldrb r0, [r1]\n\
cmp r0, #0\n\
beq _0805CD28\n\
ldr r2, _0805CD24 @ =gGoodsInfo\n\
ldrb r1, [r1]\n\
movs r0, #0x6c\n\
muls r0, r1, r0\n\
adds r0, r0, r2\n\
adds r0, #0x6a\n\
ldrb r0, [r0]\n\
cmp r0, #1\n\
bne _0805CD28\n\
adds r1, r3, #0\n\
adds r2, r1, #1\n\
adds r4, #0x4b\n\
cmp r2, #0xf\n\
bgt _0805CD1C\n\
adds r3, r5, #0\n\
_0805CD0C:\n\
adds r0, r3, r1\n\
adds r1, r3, r2\n\
ldrb r1, [r1]\n\
strb r1, [r0]\n\
adds r1, r2, #0\n\
adds r2, #1\n\
cmp r2, #0xf\n\
ble _0805CD0C\n\
_0805CD1C:\n\
movs r0, #0\n\
strb r0, [r4]\n\
movs r0, #1\n\
b _0805CD2A\n\
.align 2, 0\n\
_0805CD24: .4byte gGoodsInfo\n\
_0805CD28:\n\
movs r0, #0\n\
_0805CD2A:\n\
pop {r4, r5}\n\
pop {r1}\n\
bx r1\n\
");
}
NAKED void sub_0805CD30() {
    asm_unified("\n\
push {r4, r5, r6, lr}\n\
adds r4, r1, #0\n\
lsls r0, r0, #0x10\n\
lsrs r3, r0, #0x10\n\
lsls r4, r4, #0x10\n\
lsrs r4, r4, #0x10\n\
lsls r2, r2, #0x18\n\
lsrs r6, r2, #0x18\n\
adds r5, r6, #0\n\
adds r0, r3, #0\n\
bl sub_0805CE34\n\
adds r3, r0, #0\n\
cmp r4, #0\n\
bne _0805CD88\n\
cmp r6, #1\n\
bne _0805CD74\n\
ldr r0, _0805CD6C @ =gSave\n\
lsls r2, r3, #0xd\n\
lsrs r2, r2, #0x10\n\
ldr r1, _0805CD70 @ =0x0000074A\n\
adds r0, r0, r1\n\
adds r2, r2, r0\n\
movs r0, #7\n\
ands r3, r0\n\
adds r0, r6, #0\n\
lsls r0, r3\n\
ldrb r1, [r2]\n\
orrs r0, r1\n\
b _0805CDC8\n\
.align 2, 0\n\
_0805CD6C: .4byte gSave\n\
_0805CD70: .4byte 0x0000074A\n\
_0805CD74:\n\
ldr r0, _0805CD80 @ =gSave\n\
lsls r2, r3, #0xd\n\
lsrs r2, r2, #0x10\n\
ldr r1, _0805CD84 @ =0x0000074A\n\
b _0805CDB8\n\
.align 2, 0\n\
_0805CD80: .4byte gSave\n\
_0805CD84: .4byte 0x0000074A\n\
_0805CD88:\n\
cmp r5, #1\n\
bne _0805CDB0\n\
ldr r0, _0805CDA8 @ =gSave\n\
lsls r1, r3, #0xd\n\
lsrs r1, r1, #0x10\n\
ldr r2, _0805CDAC @ =0x0000076A\n\
adds r0, r0, r2\n\
adds r1, r1, r0\n\
movs r0, #7\n\
ands r3, r0\n\
lsls r5, r3\n\
ldrb r0, [r1]\n\
orrs r5, r0\n\
strb r5, [r1]\n\
b _0805CDCA\n\
.align 2, 0\n\
_0805CDA8: .4byte gSave\n\
_0805CDAC: .4byte 0x0000076A\n\
_0805CDB0:\n\
ldr r0, _0805CDD0 @ =gSave\n\
lsls r2, r3, #0xd\n\
lsrs r2, r2, #0x10\n\
ldr r1, _0805CDD4 @ =0x0000076A\n\
_0805CDB8:\n\
adds r0, r0, r1\n\
adds r2, r2, r0\n\
movs r0, #7\n\
ands r3, r0\n\
movs r1, #1\n\
lsls r1, r3\n\
ldrb r0, [r2]\n\
bics r0, r1\n\
_0805CDC8:\n\
strb r0, [r2]\n\
_0805CDCA:\n\
pop {r4, r5, r6}\n\
pop {r0}\n\
bx r0\n\
.align 2, 0\n\
_0805CDD0: .4byte gSave\n\
_0805CDD4: .4byte 0x0000076A\n\
");
}
NAKED void sub_0805CDD8() {
    asm_unified("\n\
push {r4, lr}\n\
adds r4, r1, #0\n\
lsls r0, r0, #0x10\n\
lsrs r2, r0, #0x10\n\
lsls r4, r4, #0x10\n\
lsrs r4, r4, #0x10\n\
adds r0, r2, #0\n\
bl sub_0805CE34\n\
adds r2, r0, #0\n\
cmp r4, #0\n\
bne _0805CE04\n\
ldr r1, _0805CDFC @ =gSave\n\
lsls r0, r2, #0xd\n\
lsrs r0, r0, #0x10\n\
ldr r3, _0805CE00 @ =0x0000074A\n\
b _0805CE0C\n\
.align 2, 0\n\
_0805CDFC: .4byte gSave\n\
_0805CE00: .4byte 0x0000074A\n\
_0805CE04:\n\
ldr r1, _0805CE24 @ =gSave\n\
lsls r0, r2, #0xd\n\
lsrs r0, r0, #0x10\n\
ldr r3, _0805CE28 @ =0x0000076A\n\
_0805CE0C:\n\
adds r1, r1, r3\n\
adds r0, r0, r1\n\
ldrb r0, [r0]\n\
movs r1, #7\n\
ands r2, r1\n\
asrs r0, r2\n\
movs r1, #1\n\
ands r0, r1\n\
cmp r0, #0\n\
bne _0805CE2C\n\
movs r0, #0\n\
b _0805CE2E\n\
.align 2, 0\n\
_0805CE24: .4byte gSave\n\
_0805CE28: .4byte 0x0000076A\n\
_0805CE2C:\n\
movs r0, #1\n\
_0805CE2E:\n\
pop {r4}\n\
pop {r1}\n\
bx r1\n\
");
}
NAKED void sub_0805CE34() {
    asm_unified("\n\
push {lr}\n\
lsls r0, r0, #0x10\n\
lsrs r0, r0, #0x10\n\
cmp r0, #0x1d\n\
beq _0805CE50\n\
cmp r0, #0x1d\n\
bgt _0805CE48\n\
cmp r0, #0x15\n\
beq _0805CE54\n\
b _0805CE56\n\
_0805CE48:\n\
cmp r0, #0x1e\n\
bne _0805CE56\n\
movs r0, #0x5e\n\
b _0805CE56\n\
_0805CE50:\n\
movs r0, #0xaa\n\
b _0805CE56\n\
_0805CE54:\n\
movs r0, #0x8d\n\
_0805CE56:\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
");
}
NAKED void sub_0805CE5C() {
    asm_unified("\n\
lsls r0, r0, #0x10\n\
lsrs r0, r0, #0x10\n\
ldr r2, _0805CE70 @ =gMonsterData\n\
lsls r1, r0, #3\n\
adds r1, r1, r0\n\
lsls r1, r1, #4\n\
adds r1, r1, r2\n\
adds r1, #0x74\n\
ldrb r0, [r1]\n\
bx lr\n\
.align 2, 0\n\
_0805CE70: .4byte gMonsterData\n\
");
}
NAKED void sub_0805CE74() {
    asm_unified("\n\
push {r4, r5, r6, r7, lr}\n\
mov r7, sl\n\
mov r6, sb\n\
mov r5, r8\n\
push {r5, r6, r7}\n\
sub sp, #0x5c\n\
ldr r7, _0805CF7C @ =gUnknown_02005090\n\
ldrh r5, [r7]\n\
lsls r0, r5, #3\n\
adds r0, r0, r5\n\
lsls r0, r0, #4\n\
ldr r1, _0805CF80 @ =gMonsterData\n\
adds r0, r0, r1\n\
str r0, [sp, #0x54]\n\
add r0, sp, #0xc\n\
bl sub_0805D2A4\n\
add r0, sp, #0x14\n\
mov sl, r0\n\
ldr r1, _0805CF84 @ =_vt.6ResPtr\n\
mov sb, r1\n\
str r1, [sp, #0x1c]\n\
movs r0, #0\n\
str r0, [sp, #0x14]\n\
mov r2, sl\n\
str r0, [r2, #4]\n\
add r3, sp, #0x20\n\
mov r8, r3\n\
str r1, [sp, #0x28]\n\
str r0, [sp, #0x20]\n\
str r0, [r3, #4]\n\
mov r6, sp\n\
adds r6, #0x2c\n\
str r6, [sp, #0x58]\n\
str r1, [sp, #0x34]\n\
str r0, [sp, #0x2c]\n\
str r0, [r6, #4]\n\
add r4, sp, #0x38\n\
ldr r0, _0805CF88 @ =gUnknown_09C90960\n\
movs r1, #1\n\
rsbs r1, r1, #0\n\
mov r2, sb\n\
str r2, [sp, #0x40]\n\
str r0, [sp, #0x38]\n\
str r1, [r4, #4]\n\
add r0, sp, #0xc\n\
adds r1, r4, #0\n\
bl sub_0805D2D4\n\
mov r3, sb\n\
str r3, [sp, #0x40]\n\
mov r6, sl\n\
ldr r0, [r6, #8]\n\
str r0, [sp, #0x44]\n\
movs r0, #0xa9\n\
lsls r0, r0, #2\n\
adds r2, r5, r0\n\
adds r0, r4, #0\n\
add r1, sp, #0xc\n\
bl LoadRes\n\
mov r1, sl\n\
adds r0, r4, #0\n\
ldm r0!, {r2, r3, r6}\n\
stm r1!, {r2, r3, r6}\n\
ldr r0, [sp, #0x44]\n\
mov r1, sl\n\
str r0, [r1, #8]\n\
mov r2, sb\n\
str r2, [sp, #0x40]\n\
mov r3, r8\n\
ldr r0, [r3, #8]\n\
str r0, [sp, #0x44]\n\
adds r2, r5, #0\n\
adds r2, #8\n\
adds r0, r4, #0\n\
add r1, sp, #0xc\n\
bl LoadRes\n\
mov r1, r8\n\
adds r0, r4, #0\n\
ldm r0!, {r2, r3, r6}\n\
stm r1!, {r2, r3, r6}\n\
ldr r0, [sp, #0x44]\n\
mov r6, r8\n\
str r0, [r6, #8]\n\
mov r0, sb\n\
str r0, [sp, #0x40]\n\
ldr r1, [sp, #0x58]\n\
ldr r0, [r1, #8]\n\
str r0, [sp, #0x44]\n\
ldr r3, _0805CF8C @ =0x00000179\n\
adds r2, r5, r3\n\
adds r0, r4, #0\n\
add r1, sp, #0xc\n\
bl LoadRes\n\
ldr r0, [sp, #0x58]\n\
ldm r4!, {r1, r2, r6}\n\
stm r0!, {r1, r2, r6}\n\
ldr r0, [sp, #0x44]\n\
ldr r3, [sp, #0x58]\n\
str r0, [r3, #8]\n\
mov r6, sb\n\
str r6, [sp, #0x40]\n\
ldrh r0, [r7, #2]\n\
ldr r6, [sp, #0x58]\n\
cmp r0, #0\n\
bne _0805CF90\n\
movs r0, #0xa\n\
ldrsh r3, [r7, r0]\n\
movs r2, #0xc\n\
ldrsh r1, [r7, r2]\n\
ldr r0, [sp, #0x54]\n\
adds r0, #0x70\n\
ldrb r0, [r0]\n\
lsls r0, r0, #0x18\n\
asrs r0, r0, #0x18\n\
add r2, sp, #0x4c\n\
adds r1, r1, r0\n\
strh r3, [r2]\n\
strh r1, [r2, #2]\n\
ldrh r3, [r7, #8]\n\
ldrh r0, [r7, #4]\n\
str r0, [sp]\n\
ldrh r0, [r7, #6]\n\
str r0, [sp, #4]\n\
ldr r0, [r7, #0x1c]\n\
str r0, [sp, #8]\n\
mov r0, sl\n\
movs r1, #0\n\
b _0805CFBC\n\
.align 2, 0\n\
_0805CF7C: .4byte gUnknown_02005090\n\
_0805CF80: .4byte gMonsterData\n\
_0805CF84: .4byte _vt.6ResPtr\n\
_0805CF88: .4byte gUnknown_09C90960\n\
_0805CF8C: .4byte 0x00000179\n\
_0805CF90:\n\
movs r0, #0xa\n\
ldrsh r3, [r7, r0]\n\
movs r2, #0xc\n\
ldrsh r1, [r7, r2]\n\
ldr r0, [sp, #0x54]\n\
adds r0, #0x71\n\
ldrb r0, [r0]\n\
lsls r0, r0, #0x18\n\
asrs r0, r0, #0x18\n\
add r2, sp, #0x50\n\
adds r1, r1, r0\n\
strh r3, [r2]\n\
strh r1, [r2, #2]\n\
ldrh r3, [r7, #8]\n\
ldrh r0, [r7, #4]\n\
str r0, [sp]\n\
ldrh r0, [r7, #6]\n\
str r0, [sp, #4]\n\
ldr r0, [r7, #0x1c]\n\
str r0, [sp, #8]\n\
mov r0, sl\n\
movs r1, #1\n\
_0805CFBC:\n\
bl sub_0805D06C\n\
strh r0, [r7, #0x10]\n\
ldr r4, _0805CFF8 @ =gUnknown_02005090\n\
ldr r1, [r4, #0x14]\n\
mov r0, r8\n\
bl sub_0805D140\n\
strh r0, [r4, #0xe]\n\
lsrs r7, r5, #3\n\
movs r0, #7\n\
ands r5, r0\n\
movs r2, #1\n\
lsls r2, r5\n\
ldrh r0, [r4, #2]\n\
cmp r0, #0\n\
bne _0805D004\n\
ldr r0, _0805CFFC @ =gSave\n\
ldr r3, _0805D000 @ =0x0000074A\n\
adds r0, r0, r3\n\
adds r0, r7, r0\n\
ldrb r1, [r0]\n\
ands r1, r2\n\
cmp r1, #0\n\
bne _0805D004\n\
add r0, sp, #0x48\n\
strh r1, [r0]\n\
ldr r1, [r4, #0x18]\n\
b _0805D024\n\
.align 2, 0\n\
_0805CFF8: .4byte gUnknown_02005090\n\
_0805CFFC: .4byte gSave\n\
_0805D000: .4byte 0x0000074A\n\
_0805D004:\n\
ldr r0, _0805D02C @ =gUnknown_02005090\n\
ldrh r1, [r0, #2]\n\
adds r3, r0, #0\n\
cmp r1, #1\n\
bne _0805D03C\n\
ldr r0, _0805D030 @ =gSave\n\
ldr r1, _0805D034 @ =0x0000076A\n\
adds r0, r0, r1\n\
adds r0, r7, r0\n\
ldrb r1, [r0]\n\
ands r1, r2\n\
cmp r1, #0\n\
bne _0805D03C\n\
add r0, sp, #0x48\n\
strh r1, [r0]\n\
ldr r1, [r3, #0x18]\n\
_0805D024:\n\
ldr r2, _0805D038 @ =0x01000010\n\
bl CpuSet\n\
b _0805D044\n\
.align 2, 0\n\
_0805D02C: .4byte gUnknown_02005090\n\
_0805D030: .4byte gSave\n\
_0805D034: .4byte 0x0000076A\n\
_0805D038: .4byte 0x01000010\n\
_0805D03C:\n\
ldr r1, [r3, #0x18]\n\
adds r0, r6, #0\n\
bl sub_0805D154\n\
_0805D044:\n\
ldr r0, _0805D068 @ =_vt.6ResPtr\n\
str r0, [sp, #0x34]\n\
str r0, [sp, #0x28]\n\
str r0, [sp, #0x1c]\n\
add r0, sp, #0xc\n\
movs r1, #2\n\
bl sub_0805D2B4\n\
movs r0, #1\n\
add sp, #0x5c\n\
pop {r3, r4, r5}\n\
mov r8, r3\n\
mov sb, r4\n\
mov sl, r5\n\
pop {r4, r5, r6, r7}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805D068: .4byte _vt.6ResPtr\n\
");
}
NAKED void sub_0805D06C() {
    asm_unified("\n\
push {r4, r5, r6, r7, lr}\n\
mov r7, sl\n\
mov r6, sb\n\
mov r5, r8\n\
push {r5, r6, r7}\n\
sub sp, #4\n\
mov ip, r2\n\
adds r5, r3, #0\n\
ldr r3, [sp, #0x2c]\n\
lsls r1, r1, #0x10\n\
ldr r2, [r0]\n\
adds r0, r2, #0\n\
adds r0, #8\n\
lsrs r1, r1, #0xf\n\
adds r1, r1, r0\n\
ldrh r0, [r1]\n\
adds r6, r2, r0\n\
ldrh r0, [r6]\n\
lsls r0, r0, #3\n\
adds r0, #4\n\
adds r4, r6, r0\n\
movs r7, #0\n\
ldrh r0, [r6, #2]\n\
cmp r7, r0\n\
bge _0805D11E\n\
movs r0, #3\n\
ands r5, r0\n\
lsls r5, r5, #2\n\
mov r8, r5\n\
movs r1, #0xd\n\
rsbs r1, r1, #0\n\
mov sl, r1\n\
ldr r2, _0805D130 @ =0xFFFFFC00\n\
mov sb, r2\n\
ldr r0, [sp, #0x28]\n\
lsls r0, r0, #4\n\
str r0, [sp]\n\
_0805D0B6:\n\
ldr r0, [r4]\n\
str r0, [r3]\n\
ldr r0, [r4, #4]\n\
str r0, [r3, #4]\n\
ldrh r2, [r3, #2]\n\
lsls r1, r2, #0x17\n\
lsrs r1, r1, #0x17\n\
mov r5, ip\n\
ldrh r5, [r5]\n\
adds r1, r1, r5\n\
ldr r5, _0805D134 @ =0x000001FF\n\
adds r0, r5, #0\n\
ands r1, r0\n\
ldr r0, _0805D138 @ =0xFFFFFE00\n\
ands r0, r2\n\
orrs r0, r1\n\
strh r0, [r3, #2]\n\
mov r1, ip\n\
ldrb r0, [r1, #2]\n\
ldrb r2, [r3]\n\
adds r0, r0, r2\n\
strb r0, [r3]\n\
ldrb r1, [r3, #5]\n\
mov r0, sl\n\
ands r0, r1\n\
mov r5, r8\n\
orrs r0, r5\n\
strb r0, [r3, #5]\n\
ldrh r2, [r3, #4]\n\
lsls r1, r2, #0x16\n\
lsrs r1, r1, #0x16\n\
ldr r0, [sp, #0x24]\n\
adds r1, r1, r0\n\
ldr r5, _0805D13C @ =0x000003FF\n\
adds r0, r5, #0\n\
ands r1, r0\n\
mov r0, sb\n\
ands r0, r2\n\
orrs r0, r1\n\
strh r0, [r3, #4]\n\
ldrb r1, [r3, #5]\n\
movs r0, #0xf\n\
ands r0, r1\n\
ldr r1, [sp]\n\
orrs r0, r1\n\
strb r0, [r3, #5]\n\
adds r4, #8\n\
adds r3, #8\n\
adds r7, #1\n\
ldrh r2, [r6, #2]\n\
cmp r7, r2\n\
blt _0805D0B6\n\
_0805D11E:\n\
ldrh r0, [r6, #2]\n\
add sp, #4\n\
pop {r3, r4, r5}\n\
mov r8, r3\n\
mov sb, r4\n\
mov sl, r5\n\
pop {r4, r5, r6, r7}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805D130: .4byte 0xFFFFFC00\n\
_0805D134: .4byte 0x000001FF\n\
_0805D138: .4byte 0xFFFFFE00\n\
_0805D13C: .4byte 0x000003FF\n\
");
}
NAKED void sub_0805D140() {
    asm_unified("\n\
push {r4, lr}\n\
ldr r4, [r0]\n\
adds r0, r4, #0\n\
adds r0, #0xc\n\
bl sub_08090F8C\n\
ldrh r0, [r4, #8]\n\
pop {r4}\n\
pop {r1}\n\
bx r1\n\
");
}
NAKED void sub_0805D154() {
    asm_unified("\n\
push {r4, lr}\n\
adds r4, r0, #0\n\
ldr r0, [r4]\n\
ldr r3, [r4, #4]\n\
movs r2, #0x20\n\
cmp r2, r3\n\
bls _0805D164\n\
adds r2, r3, #0\n\
_0805D164:\n\
lsls r2, r2, #0xa\n\
lsrs r2, r2, #0xb\n\
bl CpuSet\n\
ldr r0, [r4, #4]\n\
lsrs r0, r0, #5\n\
pop {r4}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
");
}
NAKED void sub_0805D178() {
    asm_unified("\n\
push {lr}\n\
cmp r0, #0\n\
bge _0805D180\n\
rsbs r0, r0, #0\n\
_0805D180:\n\
cmp r1, #0\n\
bge _0805D186\n\
rsbs r1, r1, #0\n\
_0805D186:\n\
cmp r0, r1\n\
blt _0805D190\n\
adds r3, r0, #0\n\
adds r0, r1, #0\n\
b _0805D192\n\
_0805D190:\n\
adds r3, r1, #0\n\
_0805D192:\n\
asrs r2, r0, #1\n\
adds r2, r0, r2\n\
asrs r0, r3, #5\n\
subs r0, r3, r0\n\
asrs r1, r3, #7\n\
subs r0, r0, r1\n\
asrs r1, r2, #2\n\
adds r0, r0, r1\n\
asrs r2, r2, #6\n\
adds r0, r0, r2\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
");
}
NAKED void sub_0805D1AC() {
    asm_unified("\n\
push {r4, lr}\n\
adds r4, r2, #0\n\
adds r2, r0, #0\n\
cmp r2, #0\n\
bge _0805D1B8\n\
rsbs r2, r2, #0\n\
_0805D1B8:\n\
adds r3, r1, #0\n\
cmp r3, #0\n\
bge _0805D1C0\n\
rsbs r3, r3, #0\n\
_0805D1C0:\n\
cmp r4, #0\n\
bge _0805D1C6\n\
rsbs r4, r4, #0\n\
_0805D1C6:\n\
cmp r2, r3\n\
bge _0805D1D0\n\
adds r0, r2, #0\n\
adds r2, r3, #0\n\
adds r3, r0, #0\n\
_0805D1D0:\n\
cmp r3, r4\n\
bge _0805D1DA\n\
adds r0, r3, #0\n\
adds r3, r4, #0\n\
adds r4, r0, #0\n\
_0805D1DA:\n\
cmp r2, r3\n\
bge _0805D1E4\n\
adds r0, r2, #0\n\
adds r2, r3, #0\n\
adds r3, r0, #0\n\
_0805D1E4:\n\
asrs r0, r2, #1\n\
asrs r1, r2, #2\n\
adds r0, r0, r1\n\
asrs r1, r2, #3\n\
adds r0, r0, r1\n\
asrs r1, r2, #4\n\
adds r0, r0, r1\n\
asrs r1, r3, #2\n\
asrs r2, r3, #3\n\
adds r1, r1, r2\n\
asrs r2, r3, #6\n\
adds r1, r1, r2\n\
adds r0, r0, r1\n\
asrs r1, r4, #2\n\
asrs r2, r4, #5\n\
adds r1, r1, r2\n\
asrs r2, r4, #6\n\
adds r1, r1, r2\n\
adds r0, r0, r1\n\
pop {r4}\n\
pop {r1}\n\
bx r1\n\
");
}
NAKED void sub_0805D210() {
    asm_unified("\n\
ldr r1, _0805D218 @ =gUnknown_02001C58\n\
str r0, [r1]\n\
bx lr\n\
.align 2, 0\n\
_0805D218: .4byte gUnknown_02001C58\n\
");
}
NAKED void sub_0805D21C() {
    asm_unified("\n\
ldr r2, _0805D230 @ =gUnknown_02001C58\n\
ldr r1, [r2]\n\
adds r1, #8\n\
lsls r0, r1, #3\n\
adds r0, r0, r1\n\
lsls r0, r0, #3\n\
subs r0, r0, r1\n\
adds r0, #0x25\n\
str r0, [r2]\n\
bx lr\n\
.align 2, 0\n\
_0805D230: .4byte gUnknown_02001C58\n\
");
}
NAKED void sub_0805D234() {
    asm_unified("\n\
push {r4, lr}\n\
ldr r4, _0805D25C @ =gUnknown_02001C58\n\
ldr r3, [r4]\n\
adds r3, #5\n\
lsls r2, r3, #4\n\
adds r2, r2, r3\n\
lsls r2, r2, #2\n\
subs r2, r2, r3\n\
adds r2, #0x1f\n\
str r2, [r4]\n\
subs r3, r0, #1\n\
subs r1, r1, r3\n\
lsls r2, r2, #0x18\n\
lsrs r2, r2, #0x18\n\
muls r1, r2, r1\n\
asrs r1, r1, #8\n\
adds r0, r0, r1\n\
pop {r4}\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805D25C: .4byte gUnknown_02001C58\n\
");
}
NAKED void sub_0805D260() {
    asm_unified("\n\
push {lr}\n\
adds r2, r0, #0\n\
movs r3, #0\n\
cmp r1, #1\n\
ble _0805D276\n\
_0805D26A:\n\
ldrh r0, [r2]\n\
adds r3, r3, r0\n\
adds r2, #2\n\
subs r1, #4\n\
cmp r1, #1\n\
bgt _0805D26A\n\
_0805D276:\n\
cmp r1, #0\n\
bge _0805D284\n\
ldrh r1, [r2]\n\
movs r0, #0xff\n\
lsls r0, r0, #8\n\
ands r0, r1\n\
adds r3, r3, r0\n\
_0805D284:\n\
ldr r2, _0805D2A0 @ =0x0000FFFF\n\
adds r0, r3, #0\n\
ands r0, r2\n\
lsrs r1, r3, #0x10\n\
adds r3, r0, r1\n\
adds r0, r3, #0\n\
ands r0, r2\n\
lsrs r1, r3, #0x10\n\
adds r3, r0, r1\n\
mvns r0, r3\n\
lsls r0, r0, #0x10\n\
lsrs r0, r0, #0x10\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805D2A0: .4byte 0x0000FFFF\n\
");
}
NAKED void sub_0805D2A4() {
    asm_unified("\n\
ldr r1, _0805D2B0 @ =vt_09F44F18\n\
str r1, [r0, #4]\n\
movs r1, #0\n\
str r1, [r0]\n\
bx lr\n\
.align 2, 0\n\
_0805D2B0: .4byte vt_09F44F18\n\
");
}
NAKED void sub_0805D2B4() {
    asm_unified("\n\
push {lr}\n\
adds r2, r0, #0\n\
ldr r0, _0805D2D0 @ =vt_09F44F18\n\
str r0, [r2, #4]\n\
movs r0, #1\n\
ands r0, r1\n\
cmp r0, #0\n\
beq _0805D2CA\n\
adds r0, r2, #0\n\
bl __builtin_delete\n\
_0805D2CA:\n\
pop {r0}\n\
bx r0\n\
.align 2, 0\n\
_0805D2D0: .4byte vt_09F44F18\n\
");
}
NAKED void sub_0805D2D4() {
    asm_unified("\n\
ldr r1, [r1]\n\
str r1, [r0]\n\
movs r0, #1\n\
bx lr\n\
");
}
NAKED void sub_0805D2DC() {
    asm_unified("\n\
push {lr}\n\
ldr r0, [r0]\n\
cmp r0, #0\n\
beq _0805D2E8\n\
ldrh r0, [r0, #4]\n\
b _0805D2EA\n\
_0805D2E8:\n\
movs r0, #0\n\
_0805D2EA:\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
");
}
