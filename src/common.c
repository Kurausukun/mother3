#include <stdbool.h>
#include "global.h"
#include "structs.h"

u16 get_progression_flag(s32);
bool8 ch_is_lucas(CharStats* ch);
bool8 ch_is_kumatora(CharStats* ch);
bool8 sub_0805C58C(u8* data, s32);
void sub_0805C548(u8*, s32, bool8);

u32 sub_0805C1A8(CharStats* ch, LevelStats* ls, s32 level);

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
