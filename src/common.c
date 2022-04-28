#include <stdbool.h>
#include "global.h"
#include "structs.h"

u16 get_progression_flag(s32);
bool8 ch_is_lucas(CharStats* ch);
bool8 ch_is_kumatora(CharStats* ch);
bool8 sub_0805C58C(u8* data, s32);
void sub_0805C548(u8*, s32, bool8);

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
