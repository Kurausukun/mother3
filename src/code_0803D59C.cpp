// Auto-generated source file
#include "audio.h"
#include "battle.h"
#include "battle/guest.h"
#include "battle/irc.h"
#include "battle/monster.h"
#include "enums.h"
#include "functions.h"
#include "gba/gba.h"
#include "global.h"
#include "structs.h"

typedef struct Struct_02015E00 {
    u8 _0;            /* 0x00 */
    u8 _1;            /* 0x01 */
    s16 _2;           /* 0x02 */
    s16 _4;           /* 0x04 */
    u8 _6[0x8 - 0x6]; /* 0x06 */
    u32 _8;           /* 0x08 */
    u8 _c_0 : 1;      /* 0x0c */
    u8 _c_1 : 1;
} Struct_02015E00;

extern Struct_02015E00 gUnknown_02015E00;

extern IrqTable gIntrHandlers;
extern const IrqTable gUnknown_080C7668;
extern const IrqTable gUnknown_080C7628;
extern const IrqTable gUnknown_080C7DB0;
extern const IrqTable gUnknown_080C5FA0;
extern u16 gUnknown_03004B00;
extern u8 gUnknown_09C5FD2C;
extern u8 gUnknown_02015DC0;
extern const u8 gUnknown_09C8DE98;  // Some sort of "archive" with sprites, palettes, etc.
extern u8 gMenuTextPalette;
extern const u8 gTitleScreenGfx;
extern InputState gInputState;
extern MonsterData gMonsterData[];
extern MenuHandlerFunc gMenuFuncTable[0x13];
extern u8 gMenuData[];
extern u8 gUnknown_0200F920[];
extern u8 gUnknown_02004100[];
extern TileInfo gUnknown_02016078[];
extern MenuHandlerFunc gUnknown_09B8FF14[];
extern u8 gUnknown_0201AEF8[];
extern u8 gUnknown_0201A520;
extern u16 gUnknown_080C6AF6[];
extern u32 gUnknown_02018CD8[];
extern Unk09B8FE24Func gUnknown_09B8FE24[];

extern "C" void* Blob_GetEntry(const void* src, int index);
extern "C" void LZ77UnCompVram(const void* src, const void* dest);
extern "C" void copyText(u16*, u16*, s16);

extern "C" void sub_08056584(int, int);
extern "C" void sub_0803FAC8();
extern "C" void sub_0803FB60();
extern "C" void sub_0803E3D8();
extern "C" void sub_0805AFCC();
extern "C" void sub_080018F4();
extern "C" void sub_0800160C(Unknown_02016078* dest, void* src, int index, u32 size);
extern "C" void sub_08001A14(void* src, void* dest, u32 size);
extern "C" void sub_08001A38(void* dest, u32 size, int value);
extern "C" void sub_08000E5C(void*);
extern "C" void nullsub_11();
extern "C" void pollInput(InputState*);
extern "C" void sub_08058614();
extern "C" void sub_08058630();
extern "C" void sub_08059500(InputState*);
extern "C" void sub_08059548(void*);
extern "C" void sub_080596A0(void*);
extern "C" void checkSoftReset(InputState*);
extern "C" void play_sound(u16);
extern "C" void sub_080506CC(u16);
extern "C" void sub_08054108();
extern "C" void sub_08053804(u16*, InputState*, u16, u16, u16, u16);
extern "C" void handleTryAgain(MenuState*);
extern "C" void sub_0804E078(InputState*, MenuState*);
extern "C" void sub_0804E16C(void*);
extern "C" void sub_080506A4();
extern "C" u16 sub_08050734(InputState*);
extern "C" u16 getNonPlayablePartyMemberIndex(u16);
extern "C" void setItemGuySubmenu(MenuState*);
extern "C" u16 navigate1DMenuChecked(u16*, InputState*, u16, u16, u16, u16, u16);
extern "C" void sub_080012BC(void*, void*, s32, s32);
extern "C" void sub_08053148(CharStats*);
extern "C" CharStats* getBufferedCharStats(u16);
extern "C" void sub_080524EC(CharStats*);
extern "C" void sub_080531C8(CharStats*);
extern "C" void handleShopTransactionSelection(MenuState*);
extern "C" void handleItemGuyTransactionSelection(MenuState*);
extern "C" void sub_0804EEE8(MenuState*);
extern "C" void advanceMemoEntry(MenuState*);
extern "C" u16 navigateScrolling2DMenu(u16*, u16*, InputState*, u16, u16, u16, u16);
extern "C" void sub_0804DC5C(InputState*, MenuState*);
extern "C" void sub_0804DE00(InputState*, MenuState*);
extern "C" void sub_0804DFE4(InputState*, MenuState*);
extern "C" void backspaceMenuText();
extern "C" void setShopSubmenu(MenuState*);
extern "C" void sub_0804A448(u16);
extern "C" void sub_0804A1C0(u16);
extern "C" void sub_0804A508(s32);
extern "C" u16* sub_08001378(void*, s32, s32, s32);
extern "C" void sub_0804A218(u16);
extern "C" void sub_0804A2E0(u16);
extern "C" void sub_0804A398();
extern "C" void sub_0804A3F0();
extern "C" void sub_08049AF8(void*);
extern "C" void sub_0804F6C8(MenuState*);
extern "C" u16 navigateScrollingMenu(MenuState*, u16*, InputState*, u16, u16);
extern "C" s32 Divide(s32 a, s32 b);
extern "C" u16 sub_08002FD4(u16, u16);
extern "C" u16 sub_08053AC8(void*, InputState*, u16, u16, u16, u16);
extern "C" void sub_0804EA28(MenuState*);
extern "C" void sub_0804EAA4(MenuState*);
extern "C" u16 navigateTabbedMenu(void*, InputState*, u16, u16, u16);
extern "C" void sub_08052DBC(CharStats*);
extern "C" void sub_08052F9C(CharStats*);
extern "C" void sub_08052FC8(CharStats*);
extern "C" void sub_08052A64();
extern "C" void sub_08052964();
extern "C" void sub_0804C51C();
extern "C" void sub_0804C5B0(u16);
extern "C" void sub_08055788();
extern "C" u16 sub_080552E4(CharStats*);
extern "C" void sub_0803F424(u16, u16, s32);
extern "C" void sub_0803F1AC(CharStats* stats, struct_2018D00* unk);
extern "C" void refreshEquipLyt(CharStats*);
extern "C" void clearEquipForEmptyItems(CharStats*);
extern "C" void sub_0803F1A0(CharStats*, struct_2018D00*);
extern "C" void sub_0803F260(CharStats*, struct_2018D00*);
extern "C" struct_2018D00* sub_08054FF0(u16);
extern "C" u16 isLucasOrKumatora(u8);
extern "C" u16 isEquipLytSet(CharStats*, u16);
extern "C" u16 isCharStatsOverworldPlayable(CharStats* stats);
extern "C" u16 sub_0805592C();
extern "C" void sub_08047CDC(u16*, u16, u16, s16, u16, u16);
extern "C" u16* getMenuText(u16);
extern "C" void sub_0804A188();
extern "C" void sub_0804A550();
extern "C" void memFill(void*, u16, s16);
extern "C" u16* getMemoEntryText(u16);
extern "C" u16* getNthMemoPage(u16*, u16);
extern "C" void sub_08048108(void*, void*);

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D678.inc", void sub_0803D678());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D6C8.inc", void sub_0803D6C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D718.inc", void sub_0803D718());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D7CC.inc", void sub_0803D7CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D878.inc", void sub_0803D878());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803D9A8.inc", void sub_0803D9A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DAAC.inc", void sub_0803DAAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DBB8.inc", void sub_0803DBB8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DCE4.inc", void sub_0803DCE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD1C.inc", void sub_0803DD1C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD3C.inc", void sub_0803DD3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DD5C.inc", void sub_0803DD5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DDD8.inc", void sub_0803DDD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DE08.inc", void sub_0803DE08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DE38.inc", void sub_0803DE38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DF48.inc", void sub_0803DF48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803DF94.inc", void sub_0803DF94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E0EC.inc", void sub_0803E0EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E16C.inc", void sub_0803E16C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E260.inc", void sub_0803E260());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E2B0.inc", void sub_0803E2B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E2E4.inc", void sub_0803E2E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_75.inc", void nullsub_75());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_7.inc", void nullsub_7());

extern "C" void sub_0803E304() {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C5FA0, sizeof(gUnknown_080C5FA0));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E358.inc", void sub_0803E358());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3B4.inc", void sub_0803E3B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3C0.inc", void sub_0803E3C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_76.inc", void nullsub_76());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3D8.inc", void sub_0803E3D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E3EC.inc", void sub_0803E3EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_77.inc", void nullsub_77());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E408.inc", void sub_0803E408());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E46C.inc", void sub_0803E46C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_78.inc", void nullsub_78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_79.inc", void nullsub_79());

extern "C" void sub_0803E4B8(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_DISPSTAT &= 0xFF;
    REG_DISPSTAT |= 0xA000;
    gIntrHandlers.vcount = sub_0803E3D8;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E50C.inc", void sub_0803E50C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E578.inc", void sub_0803E578());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E6EC.inc", void sub_0803E6EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E738.inc", void sub_0803E738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E834.inc", void sub_0803E834());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E844.inc", void sub_0803E844());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803E908.inc", void sub_0803E908());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EA4C.inc", void sub_0803EA4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EAEC.inc", void sub_0803EAEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EB78.inc", void sub_0803EB78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EC28.inc", void sub_0803EC28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EC80.inc", void sub_0803EC80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803ECC0.inc", void sub_0803ECC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE20.inc", void sub_0803EE20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE34.inc", void sub_0803EE34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EE78.inc", void sub_0803EE78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803EEA0.inc", void sub_0803EEA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F038.inc", void sub_0803F038());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F068.inc", void sub_0803F068());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F0A4.inc", void sub_0803F0A4());

extern "C" void sub_0803F124() {
    for (u16 i = 0; i < gSomeBlend.partyCount; i++) {
        CharStats* stats = getBufferedCharStats(i);
        struct_2018D00* unk = sub_08054FF0(i);

        unk->maxHP = stats->maxHP;
        unk->maxPP = stats->maxPP;

        sub_0803F1A0(stats, unk);
        sub_0803F260(stats, unk);

        if (stats->curHP > unk->_8) {
            stats->curHP = unk->_8;
        }

        if (stats->curPP > unk->_10) {
            stats->curPP = unk->_10;
        }

        refreshEquipLyt(stats);
        clearEquipForEmptyItems(stats);
    }
}

extern "C" void sub_0803F1A0(CharStats* stats, struct_2018D00* unk) {
    sub_0803F1AC(stats, unk);
}

extern "C" void sub_0803F1AC(CharStats* stats, struct_2018D00* unk) {
    unk->hpMod = 0;
    unk->ppMod = 0;
    unk->offenseMod = 0;
    unk->defenseMod = 0;
    unk->iqMod = 0;
    unk->speedMod = 0;
    unk->kindnessMod = 0;

    for (u16 i = 0; i < 4; i++) {
        unk->hpMod += gGoodsInfo[stats->equipment[i]].hp_mod;
        unk->ppMod += gGoodsInfo[stats->equipment[i]].pp_mod;
        unk->offenseMod += gGoodsInfo[stats->equipment[i]].off_mod;
        unk->defenseMod += gGoodsInfo[stats->equipment[i]].def_mod;
        unk->iqMod += gGoodsInfo[stats->equipment[i]].iq_mod;
        unk->speedMod += gGoodsInfo[stats->equipment[i]].spd_mod;
        unk->kindnessMod += gGoodsInfo[stats->equipment[i]].kindness_mod;
    }
}

extern "C" void sub_0803F260(CharStats* stats, struct_2018D00* unk) {
    s32 tmp = stats->maxHP + unk->hpMod;
    if (tmp > 999) {
        tmp = 999;
    }
    unk->_0 = tmp;

    unk->_c = min(stats->maxPP + unk->ppMod, 999);

    if (!isLucasOrKumatora(stats->charNo)) {
        unk->ppMod = 0;
        unk->_c = 0;
    }

    unk->_12 = min(unk->offenseMod + stats->offense, 0xFF);
    unk->_18 = min(unk->defenseMod + stats->defense, 0xFF);
    unk->_1e = min(unk->iqMod + stats->iq, 0xFF);
    unk->_24 = min(unk->speedMod + stats->speed, 0xFF);
    unk->_2a = min(unk->kindnessMod + stats->kindness, 0xFF);

    if (unk->_0 <= 0) {
        unk->_0 = 1;
    }

    if (unk->_c < 0) {
        unk->_c = 0;
    }

    if (unk->_12 < 0) {
        unk->_12 = 0;
    }

    if (unk->_18 < 0) {
        unk->_18 = 0;
    }

    if (unk->_1e < 0) {
        unk->_1e = 0;
    }

    if (unk->_24 < 0) {
        unk->_24 = 0;
    }

    if (unk->_2a < 0) {
        unk->_2a = 0;
    }

    unk->_8 = unk->_0;
    unk->_10 = unk->_c;
    unk->_16 = unk->_12;
    unk->_1c = unk->_18;
    unk->_22 = unk->_1e;
    unk->_28 = unk->_24;
    unk->_2e = unk->_2a;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F36C.inc", void sub_0803F36C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F3B0.inc", void sub_0803F3B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F424.inc", void sub_0803F424(u16, u16, s32));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F5CC.inc", void sub_0803F5CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F774.inc", void sub_0803F774());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803F8F8.inc", void sub_0803F8F8(u16));

extern "C" void sub_0803FA8C() {
    sub_0803FAC8();
    sub_0803FB60();
    sub_0800160C(&gSomeBlend._50, &gMenuTextPalette, 0, 0x20);
    sub_0800160C(&gSomeBlend._50, &gMenuTextPalette, 0x1E, 0x20);
    sub_08056584(0, 1);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FAC8.inc", void sub_0803FAC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FB60.inc", void sub_0803FB60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FC74.inc", void sub_0803FC74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FC94.inc", void sub_0803FC94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FCC4.inc", void sub_0803FCC4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FD14.inc", void sub_0803FD14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FD48.inc", void sub_0803FD48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FE48.inc", void sub_0803FE48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FE7C.inc", void sub_0803FE7C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FEB0.inc", void sub_0803FEB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FEF4.inc", void sub_0803FEF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FF50.inc", void sub_0803FF50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0803FFF4.inc", void sub_0803FFF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040024.inc", void sub_08040024());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040090.inc", void sub_08040090());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080400D4.inc", void sub_080400D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040164.inc", void sub_08040164());

extern "C" void sub_080401BC() {
    if (gUnknown_0200F920[0] == 6)
        return;

    if (gUnknown_02004100[2] != 0) {
        gUnknown_02004100[2] = 0;
    } else {
        storeMusicPlayerVolumes();
    }

    gUnknown_03004B00 = 0;
    snd_vsync_on();

    switch (gUnknown_0200F920[0]) {
    case 0:
    case 1:
    case 2:
        musicPlayerStop_bgm(0);
        musicPlayerStop_bgm(1);
        startSong(0x3D6);
        startSong(0x3D7);
        startSong(0x3D8);
        startSong(0x3D9);
        startSong(0x3DA);
        startSong(0x3DB);
        startSong(0x3DC);
        startSong(0x3DD);
        startSong(SONG_AS_YOU_WISH);
        return;
    case 3:
        snd_restart();
        startSong(SONG_SAVE);
        return;
    case 4:
    case 5:
        startSong(SONG_FUN_NAMING);
        break;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040298.inc", void sub_08040298());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804037C.inc", void sub_0804037C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080407AC.inc", void sub_080407AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080407E4.inc", void sub_080407E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080409B8.inc", void sub_080409B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040B20.inc", void sub_08040B20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040B58.inc", void sub_08040B58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040FAC.inc", void sub_08040FAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08040FE4.inc", void sub_08040FE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041118.inc", void sub_08041118());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041150.inc", void sub_08041150());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080414E4.inc", void sub_080414E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804151C.inc", void sub_0804151C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080415E4.inc", void sub_080415E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804165C.inc", void sub_0804165C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080417F8.inc", void sub_080417F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041864.inc", void sub_08041864());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080418F8.inc", void sub_080418F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041C5C.inc", void sub_08041C5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041F14.inc", void sub_08041F14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08041F80.inc", void sub_08041F80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042014.inc", void sub_08042014());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080422B4.inc", void sub_080422B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804254C.inc", void sub_0804254C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042838.inc", void sub_08042838());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042A6C.inc", void sub_08042A6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042B88.inc", void sub_08042B88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042D48.inc", void sub_08042D48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08042F50.inc", void sub_08042F50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080430B4.inc", void sub_080430B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080431FC.inc", void sub_080431FC());
//extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804337C.inc", void sub_0804337C());
extern "C" u16* getMenuText(u16);                               /* extern */
extern "C" void sub_08046A28(void*, s16, s16, s32, s32);             /* extern */
extern "C" void sub_08046BA8(u32, s16, s16, s32, s32, s32, s32, s32, s32, s32); //VERIFY THIS SIGNATURE
extern "C" void sub_08047CDC(u16*, u16, u16, s16, u16, u16);
extern "C" u16* getCharName(u16);                               /* extern */
extern s32 gUnknown_080C65D0;
extern s32 gUnknown_080C65E4;

typedef struct arg0struct {
    u8 unk0;
    u8 pad1[0x12 - 0x1];
    u8 unk12;
} arg0struct;

typedef struct sub_0804337C_struct {
    u8 pad0[0x8 - 0x0];
    s32 unk8;
    u8 padC [0x10 - 0xc];
    s16 unk10;
    u8 pad12 [0x16 - 0x12];
    s16 unk16;
    u8 pad18 [0x1c - 0x18];
    s16 unk1C;
    u8 pad1E [0x22 - 0x1e];
    s16 unk22;
    u8 pad24 [0x28 - 0x24];
    s16 unk28;
} arg1struct;

#define FIELD_BLOCK(field, yoff, flag) \
    sub_08046BA8(arg1->field, sparg3 + 0x48, sparg4 + (yoff), 3, 1, 0x270, 0xB, 0, 0, 2); \
    if (arg1->field != arg2->field) { \
        if (arg1->field < arg2->field) { \
            sub_08046A28(&gUnknown_080C65D0, sparg3 + 0x5E, sparg4 + (yoff), 0x20, 1); \
        } else { \
            sub_08046A28(&gUnknown_080C65E4, sparg3 + 0x5E, sparg4 + (yoff), 0x20, 1); \
        } \
        sub_08046BA8(arg2->field, sparg3 + 0x66, sparg4 + (yoff), flag, 1, 0x270, 0xB, 0, 0, 2); \
    }

extern "C" void sub_0804337C(arg0struct* arg0, sub_0804337C_struct* arg1, sub_0804337C_struct* arg2, s16 arg3, s16 arg4) {

    s16 sparg3 = arg3;
    s16 sparg4 = arg4;
    sub_08047CDC(getCharName(arg0->unk0), sparg3 + 0x08, sparg4 + 0x20, 9, 0xF, 1);
    sub_08046BA8(arg0->unk12, sparg3 + 0x48, sparg4 + 0x2C, 3, 1, 0x270, 0xB, 0, 0, 2);

    FIELD_BLOCK(unk8, 0x38, 3); //TODO: use breakpoints to name these
    FIELD_BLOCK(unk10, 0x44, 3);
    FIELD_BLOCK(unk16, 0x50, 2);
    FIELD_BLOCK(unk1C, 0x5c, 2);
    FIELD_BLOCK(unk22, 0x68, 2);
    FIELD_BLOCK(unk28, 0x74, 2);

    sub_08047CDC(getMenuText(0x52), 0x86U, 0x20U, -1, 1, 1);
    sub_08047CDC(getMenuText(0x54), 0x86U, 0x38U, -1, 1, 1);
    sub_08047CDC(getMenuText(0x53), 0x86U, 0x50U, -1, 1, 1);
    sub_08047CDC(getMenuText(0x55), 0x86U, 0x68U, -1, 1, 1);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804389C.inc", void sub_0804389C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08043EB4.inc", void sub_08043EB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080441BC.inc", void sub_080441BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080442D8.inc", void sub_080442D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080443A4.inc", void sub_080443A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044414.inc", void sub_08044414());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080444AC.inc", void sub_080444AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044560.inc", void sub_08044560());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044598.inc", void sub_08044598());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080445DC.inc", void sub_080445DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044614.inc", void sub_08044614());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080446E8.inc", void sub_080446E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080447A4.inc", void sub_080447A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044860.inc", void sub_08044860());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080449C0.inc", void sub_080449C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044AD8.inc", void sub_08044AD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044C8C.inc", void sub_08044C8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044DA8.inc", void sub_08044DA8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044E84.inc", void sub_08044E84());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08044F00.inc", void sub_08044F00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045390.inc", void sub_08045390());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080453D4.inc", void sub_080453D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080454F0.inc", void sub_080454F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804557C.inc", void sub_0804557C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080457D0.inc", void sub_080457D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045854.inc", void sub_08045854());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080458B8.inc", void sub_080458B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804598C.inc", void sub_0804598C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_080.inc", void nullsub_080());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_081.inc", void nullsub_081());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_082.inc", void nullsub_082());

extern "C" void sub_08045C34() {
    sub_08047CDC(getMenuText(0x18), gSomeBlend._4234 + 0x14, gSomeBlend._4236 + 0xC, -1, 0xF, 0);
    sub_08047CDC(getMenuText(3), gSomeBlend._4234 + 0x34, gSomeBlend._4236 + 0x1E, -1, 0xF, 0);
    sub_08047CDC(getMenuText(4), gSomeBlend._4234 + 0x68, gSomeBlend._4236 + 0x1E, -1, 0xF, 0);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045CD0.inc", void sub_08045CD0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045D50.inc", void sub_08045D50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045E04.inc", void sub_08045E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045EA8.inc", void sub_08045EA8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08045F88.inc", void sub_08045F88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080460C8.inc", void sub_080460C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080461DC.inc", void sub_080461DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804626C.inc", void sub_0804626C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804631C.inc", void sub_0804631C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080463F8.inc", void sub_080463F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080464A8.inc", void sub_080464A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046510.inc", void sub_08046510());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080465F8.inc", void sub_080465F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080467C0.inc", void sub_080467C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046974.inc", void sub_08046974());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080469CC.inc", void sub_080469CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046A28.inc", void sub_08046A28(void*, s16, s16, s32, s32));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046A64.inc", void sub_08046A64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046AF8.inc", void sub_08046AF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046BA8.inc", void sub_08046BA8(u32, s16, s16, s32, s32, s32, s32, s32, s32, s32));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046CE8.inc", void sub_08046CE8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D0C.inc", void sub_08046D0C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D2C.inc", void sub_08046D2C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046D90.inc", void sub_08046D90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046EF0.inc", void sub_08046EF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08046FD8.inc", void sub_08046FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080470A8.inc", void sub_080470A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080471B4.inc", void sub_080471B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080472BC.inc", void sub_080472BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080473EC.inc", void sub_080473EC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080475A4.inc", void sub_080475A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080476A0.inc", void sub_080476A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080476C0.inc", void sub_080476C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_42.inc", void nullsub_42());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_43.inc", void nullsub_43());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804774C.inc", void sub_0804774C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080477BC.inc", void sub_080477BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_44.inc", void nullsub_44());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_45.inc", void nullsub_45());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047834.inc", void sub_08047834());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047900.inc", void sub_08047900());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080479DC.inc", void sub_080479DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047A28.inc", void sub_08047A28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_083.inc", void nullsub_083());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_084.inc", void nullsub_084());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047A78.inc", void sub_08047A78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047B0C.inc", void sub_08047B0C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047B9C.inc", void sub_08047B9C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047C3C.inc", void sub_08047C3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047CDC.inc", void sub_08047CDC(u16*, u16, u16, s16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047D90.inc", void sub_08047D90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047E04.inc", void sub_08047E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047E48.inc", void sub_08047E48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047EA4.inc", void sub_08047EA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047F28.inc", void sub_08047F28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08047FD4.inc", void sub_08047FD4());

extern "C" void loadMemoEntryPage(u16 entry, u16 pageNum) {
    u16 buffer[0xA0];
    gSomeBlend.memoTextBuffer[0] = 0xFFFF;

    u16* memoText = getMemoEntryText(entry + 0x52);
    u16* page = getNthMemoPage(memoText, pageNum);

    if (!page) {
        return;
    }

    u16* nextPage = getNthMemoPage(memoText, pageNum + 1);

    if (!nextPage) {
        return;
    }

    u16 pageLengthBytes = (nextPage - page) * 2;
    CpuSmartSet(page, buffer, pageLengthBytes);

    buffer[pageLengthBytes / 2] = 0xFFFF;

    memFill(&gSomeBlend.memoTextBuffer, sizeof buffer, -1);
    sub_08048108(&gSomeBlend.memoTextBuffer, buffer);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048108.inc", void sub_08048108(void*, void*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048158.inc", void sub_08048158());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080481DC.inc", void sub_080481DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048214.inc", void sub_08048214());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048308.inc", void sub_08048308());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080483E0.inc", void sub_080483E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080484A8.inc", void sub_080484A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080484FC.inc", void sub_080484FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048534.inc", u16 sub_08048534(u8));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048550.inc", void sub_08048550());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080485C4.inc", void sub_080485C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804863C.inc", void sub_0804863C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804865C.inc", void sub_0804865C());

extern "C" u16* getMenuText(u16 index) {
    u16* textOffsets = (u16*)Blob_GetEntry(&gMenuData, 0x58);

    if (textOffsets) {
        // Offsets are in bytes. So even though it's a u16 table, we have to index it as a u8[]
        return (u16*)(&((u8*)Blob_GetEntry(&gMenuData, 0x59))[textOffsets[index]]);
    }

    return NULL;
}

extern "C" u16* getMemoEntryText(u16 index) {
    u16* textOffsets = (u16*)Blob_GetEntry(gMenuData, 0x5A);

    if (textOffsets) {
        // Offsets are in bytes. So even though it's a u16 table, we have to index it as a u8[]
        return (u16*)(&((u8*)Blob_GetEntry(gMenuData, 0x5B))[textOffsets[index]]);
    }

    return NULL;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048710.inc", void sub_08048710());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/bufferedTextLength.inc", u16 bufferedTextLength(u16*, s16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080487A0.inc", void sub_080487A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080487D4.inc", void sub_080487D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048878.inc", void sub_08048878());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080489F8.inc", void sub_080489F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048B58.inc", void sub_08048B58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048C5C.inc", void sub_08048C5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048CE4.inc", void sub_08048CE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048EF8.inc", void sub_08048EF8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048F74.inc", void sub_08048F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08048FEC.inc", void sub_08048FEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080490D0.inc", void sub_080490D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049160.inc", void sub_08049160());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080491F0.inc", void sub_080491F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049280.inc", void sub_08049280());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080492D0.inc", void sub_080492D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080495C8.inc", void sub_080495C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080496F8.inc", void sub_080496F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049740.inc", void sub_08049740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080497D0.inc", void sub_080497D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049838.inc", void sub_08049838());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049894.inc", void sub_08049894());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498B0.inc", void sub_080498B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498C4.inc", void sub_080498C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080498E4.inc", void sub_080498E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049954.inc", void sub_08049954());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080499A4.inc", void sub_080499A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080499D0.inc", void sub_080499D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049AF8.inc", void sub_08049AF8(void*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049B70.inc", void sub_08049B70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049C70.inc", void sub_08049C70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08049D5C.inc", void sub_08049D5C());

extern "C" void sub_08049DC4() {
    if (gSomeBlend.currentMenu < 0x13) {
        gUnknown_09B8FE24[gSomeBlend.currentMenu]();
    }

    sub_0804A188();
    sub_0804A550();
}

extern "C" void sub_08049DF8() {
    if (gSomeBlend._4261 != 0) {
        sub_0804A1C0(8);
        gSomeBlend._4261 = 0;
    }
}

extern "C" void sub_08049E20() {
    if (gSomeBlend._4261 != 1) {
        sub_0804A1C0(0x10);
        gSomeBlend._4261 = 1;
    }
}

extern "C" void sub_08049E48() {
    if (gSomeBlend._4261 != 2) {
        sub_0804A1C0(8);
        gSomeBlend._4261 = 2;
    }
}

extern "C" void sub_08049E70() {
    if (gSomeBlend._4261 != 3) {
        sub_0804A1C0(9);
        gSomeBlend._4261 = 3;
    }
}

extern "C" void sub_08049E98() {
    if (gSomeBlend._4261 != 4) {
        sub_0804A1C0(8);
        gSomeBlend._4261 = 4;
    }
}

extern "C" void sub_08049EC0() {
    if (gSomeBlend._4261 != 5) {
        sub_0804A1C0(0x15);
        gSomeBlend._4261 = 5;
    }
}

extern "C" void sub_08049EE8() {
    if (gSomeBlend._4261 != 6) {
        sub_0804A1C0(0x16);
        gSomeBlend._4261 = 6;
    }
}

extern "C" void sub_08049F10() {
    if (gSomeBlend._4261 != 7) {
        sub_0804A1C0(0x17);
        gSomeBlend._4261 = 7;
    }
}

extern "C" void sub_08049F38() {
    if (gSomeBlend._4261 != 8) {
        sub_0804A1C0(0x11);
        gSomeBlend._4261 = 8;
    }
}

extern "C" void sub_08049F60() {
    if (gSomeBlend._4261 != 9) {
        sub_0804A1C0(0x12);
        gSomeBlend._4261 = 9;
    }
}

extern "C" void sub_08049F88() {
    if (gSomeBlend._4261 != 0xA) {
        sub_0804A1C0(0x14);
        gSomeBlend._4261 = 0xA;
    }
}

extern "C" void sub_08049FB0() {
    if (gSomeBlend._4261 != 0xC) {
        sub_0804A1C0(0x14);
        gSomeBlend._4261 = 0xC;
    }
}

extern "C" void sub_08049FD8() {
    if (gSomeBlend._4261 != 0xD) {
        sub_0804A1C0(0x11);
        gSomeBlend._4261 = 0xD;
    }
}

extern "C" void sub_0804A000() {
    if (gSomeBlend._4261 != 0xE) {
        sub_0804A1C0(0x12);
        gSomeBlend._4261 = 0xE;
    }
}

extern "C" void sub_0804A028() {
    if (gSomeBlend._4261 != 0xF) {
        sub_0804A1C0(0x13);
        gSomeBlend._4261 = 0xF;
    }
}

extern "C" void sub_0804A050() {
    if (gSomeBlend._4261 != 0x10) {
        sub_0804A1C0(0x13);
        gSomeBlend._4261 = 0x10;
    }
}

extern "C" void sub_0804A078() {
    if (gSomeBlend._4261 != 0x11) {
        sub_0804A218(gSomeBlend.menus[0x10].cursorPos);
        gSomeBlend._4261 = 0x11;
    }
}

extern "C" void sub_0804A0A8() {
    if (gSomeBlend._4261 != 0x12) {
        switch (gSomeBlend._4a30) {
        case 8:
            sub_0804A2E0(0x51);
            break;
        case 9:
            sub_0804A2E0(0x4F);
            sub_0804A448(0x50);
            break;
        case 13:
            sub_0804A2E0(0x47);
            sub_0804A448(0x4D);
            sub_0804A398();
            break;
        case 14:
            sub_0804A2E0(0x48);
            sub_0804A448(0x4E);
            sub_0804A3F0();
            break;
        default:
            sub_0804A2E0(0x47);
            if (gUnknown_0200F920[0] == 5) {
                sub_0804A448(gUnknown_02004100[1] + 0x4A);
            } else {
                sub_0804A448(0x49);
            }
            break;
        }
        gSomeBlend._4261 = 0x12;
    }
}

extern "C" void sub_0804A15C() {
    if (gSomeBlend._4261 != 0x13) {
        sub_0804A1C0(0x54);
        sub_0804A508(0x55);
        gSomeBlend._4261 = 0x13;
    }
}

extern "C" void sub_0804A188() {
    if ((s8)gSomeBlend._44f2_10 != 0) {
        sub_0804A448(gSomeBlend._4263 + 0x18);
        gSomeBlend._44f2_10 = 0;
    }
}

extern "C" void sub_0804A1C0(u16 index) {
    if (gSomeBlend._4262 != index) {
        gSomeBlend._4262 = index;
        CpuSmartSet(Blob_GetEntry(gMenuData, index), sub_08001378(&gSomeBlend._50, 2, 0, 0), 0x800);
        gSomeBlend._50._2C44 = 1;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A218.inc", void sub_0804A218(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A2E0.inc", void sub_0804A2E0(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A398.inc", void sub_0804A398());

extern "C" void sub_0804A3F0() {
    u16* tile = sub_08001378(&gUnknown_02016078, 2, 1, 0x12);

    for (u16 i = 0; i < 0x12; i++) {
        ((TileInfo*)&tile[i])->tile_num = 0x2C3;
    }

    gSomeBlend._50._2C44 = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A448.inc", void sub_0804A448(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A508.inc", void sub_0804A508(s32));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A550.inc", void sub_0804A550());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A628.inc", void sub_0804A628());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A6F4.inc", void sub_0804A6F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A738.inc", void sub_0804A738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A7B8.inc", void sub_0804A7B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804A8B4.inc", void sub_0804A8B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AA38.inc", void sub_0804AA38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AB00.inc", void sub_0804AB00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AB48.inc", void sub_0804AB48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804ADC8.inc", void sub_0804ADC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AE4C.inc", void sub_0804AE4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804AFC8.inc", void sub_0804AFC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B08C.inc", void sub_0804B08C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B218.inc", void sub_0804B218());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B334.inc", void sub_0804B334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B3F8.inc", void sub_0804B3F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B4B0.inc", void sub_0804B4B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_085.inc", void nullsub_085());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B660.inc", void sub_0804B660());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B6E8.inc", void sub_0804B6E8(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B744.inc", void sub_0804B744());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B790.inc", void sub_0804B790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B804.inc", void sub_0804B804());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B84C.inc", void sub_0804B84C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B87C.inc", void sub_0804B87C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B940.inc", void sub_0804B940());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804B97C.inc", void sub_0804B97C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA28.inc", void sub_0804BA28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA3C.inc", void sub_0804BA3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA60.inc", void sub_0804BA60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BA6C.inc", void sub_0804BA6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB10.inc", void sub_0804BB10(void*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB28.inc", void sub_0804BB28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BB58.inc", void sub_0804BB58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BD34.inc", void sub_0804BD34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804BD84.inc", void sub_0804BD84());

extern "C" void setMenuGoods() {
    gSomeBlend.currentMenu = MENU_GOODS;
    MenuState* menu = &gSomeBlend.menus[MENU_GOODS];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->numItems = gSomeBlend.partyCount + 1;

    if (menu->currentTab < gSomeBlend.partyCount) {
        sub_080524EC(getBufferedCharStats(menu->currentTab));
    }

    sub_08052964();
}

extern "C" void setMenuEquip() {
    gSomeBlend.currentMenu = MENU_EQUIP;
    MenuState* menu = &gSomeBlend.menus[MENU_EQUIP];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->numItems = gSomeBlend.partyCount;
    sub_080524EC(getBufferedCharStats(menu->currentTab));
}

extern "C" void setMenuPSI() {
    gSomeBlend.currentMenu = MENU_PSI;
    MenuState* menu = &gSomeBlend.menus[MENU_PSI];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->numItems = gSomeBlend.partyCount;
}

extern "C" void setMenuStatus() {
    gSomeBlend.currentMenu = MENU_STATUS;
    MenuState* menu = &gSomeBlend.menus[MENU_STATUS];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->numItems = gSomeBlend.partyCount;
    sub_08052DBC(getBufferedCharStats(menu->currentTab));
}

extern "C" void setMenuSkills() {
    gSomeBlend.currentMenu = MENU_SKILLS;
    MenuState* menu = &gSomeBlend.menus[MENU_SKILLS];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->scrollOffset = 0;
    menu->numItems = gSomeBlend.partyCount;
    gSomeBlend._44f3_8 = 0;
}

extern "C" void setMenuMemoSelect() {
    gSomeBlend.currentMenu = MENU_MEMO_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_MEMO_SELECT];
    menu->currentTab = 0;
    sub_08052A64();
    menu->numItems = gSomeBlend._427e;
}

extern "C" void setMenuMemoView() {
    gSomeBlend.currentMenu = MENU_MEMO_VIEW;
    MenuState* menu = &gSomeBlend.menus[MENU_MEMO_VIEW];
    u8* unk = (u8*)&gSomeBlend._3bfc[gSomeBlend.menus[MENU_MEMO_SELECT].cursorPos];
    menu->cursorPos = 0;
    menu->currentTab = *unk;
    menu->scrollOffset = 0;
    menu->numItems = sub_08048534(*unk);
    loadMemoEntryPage(menu->currentTab, menu->cursorPos);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C050.inc", void sub_0804C050());

extern "C" void setMenuShopTransactionSelect() {
    gSomeBlend.currentMenu = MENU_SHOP_TRANSACTION_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_SHOP_TRANSACTION_SELECT];
    menu->currentTab = 0;
    menu->numItems = 3;
    gSomeBlend._44f2_10 = 1;
    gSomeBlend._4263 = 1;
}

extern "C" void setMenuShopCharacterSelect() {
    gSomeBlend.currentMenu = MENU_SHOP_CHARACTER_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_SHOP_CHARACTER_SELECT];
    menu->currentTab = 0;
    menu->numItems = gSomeBlend.playablePartyCount;
}

extern "C" void setShopBuyMenu() {
    gSomeBlend.currentMenu = MENU_SHOP_ITEM_SELECT_BUY;
    MenuState* menu = &gSomeBlend.menus[MENU_SHOP_ITEM_SELECT_BUY];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->scrollOffset = 0;
    CharStats* stats = getBufferedCharStats(menu->currentTab);
    sub_080524EC(stats);
    sub_08052F9C(stats);
    menu->numItems = gSomeBlend._4280;
}

extern "C" void setShopSellMenu() {
    gSomeBlend.currentMenu = MENU_SHOP_ITEM_SELECT_SELL;
    MenuState* menu = &gSomeBlend.menus[MENU_SHOP_ITEM_SELECT_SELL];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->scrollOffset = 0;
    sub_08052FC8(getBufferedCharStats(menu->currentTab));
}

extern "C" void setMenuItemGuyTransactionSelect() {
    gSomeBlend.currentMenu = MENU_ITEM_GUY_TRANSACTION_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_ITEM_GUY_TRANSACTION_SELECT];
    menu->currentTab = 0;
    menu->numItems = 3;
    gSomeBlend._c5b5_80 = 1;
    gSomeBlend._44f2_10 = 1;
    gSomeBlend._4263 = 1;
}

extern "C" void setMenuItemGuyCharacterSelect() {
    gSomeBlend.currentMenu = MENU_ITEM_GUY_CHARACTER_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_ITEM_GUY_CHARACTER_SELECT];
    menu->currentTab = 0;
    menu->numItems = gSomeBlend.playablePartyCount;
}

extern "C" void setItemGuyDepositMenu() {
    gSomeBlend.currentMenu = MENU_ITEM_GUY_ITEM_SELECT_DEPOSIT;
    MenuState* menu = &gSomeBlend.menus[gSomeBlend.currentMenu];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->scrollOffset = 0;
    sub_08053148(getBufferedCharStats(menu->currentTab));
}

extern "C" void setItemGuyWithdrawMenu() {
    gSomeBlend.currentMenu = MENU_ITEM_GUY_ITEM_SELECT_WITHDRAW;
    MenuState* menu = &gSomeBlend.menus[gSomeBlend.currentMenu];
    menu->cursorPos = 0;
    menu->currentTab = gSomeBlend._4264;
    menu->scrollOffset = 0;
    CharStats* stats = getBufferedCharStats(menu->currentTab);
    sub_080524EC(stats);
    sub_080531C8(stats);
}

extern "C" void setMenuSaveSelect() {
    gSomeBlend.currentMenu = MENU_SAVE_SELECT;
    MenuState* menu = &gSomeBlend.menus[MENU_SAVE_SELECT];
    menu->cursorPos = gUnknown_020050C0.entries[0].data[2];
    menu->currentTab = 0;
}

extern "C" void setMenuNewGame() {
    gSomeBlend.currentMenu = MENU_NEW_GAME;
    MenuState* menu = &gSomeBlend.menus[MENU_NEW_GAME];
    menu->cursorPos = 0;
    menu->currentTab = 0;

    if (gUnknown_0200F920[0] == 4) {
        sub_0804C51C();
        sub_0803F774();
    } else if (gUnknown_02004100[1] == 4) {
        sub_0804C5B0(0xE);
        sub_0803F8F8(0xA);
    } else {
        sub_0804C5B0(gUnknown_02004100[1] + 0xA);
        sub_0803F8F8(gUnknown_02004100[1] + 6);
    }

    sub_08055788();

    if (gUnknown_0200F920[0] == 4) {
        sub_0804BB10(&gSomeBlend._44f8);
        sub_0804B6E8(0);
    } else {
        gSomeBlend._4501_1 = 0;
        gSomeBlend._4501_2 = 1;
    }
}

extern "C" void setMenuTryAgain() {
    gSomeBlend.currentMenu = MENU_TRY_AGAIN;
    MenuState* menu = &gSomeBlend.menus[MENU_TRY_AGAIN];
    menu->cursorPos = 0;
    menu->currentTab = 0;
    CharStats* stats = getBufferedCharStats(menu->currentTab);
    u16 unk = sub_080552E4(stats);

    if (stats->charNo == PartyMemberID::Lucas && stats->spriteNo == 3) {
        sub_0803F424(0x2CB, 0, -1);
    } else {
        sub_0803F424(gUnknown_080C6AF6[unk], 0, -1);
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C51C.inc", void sub_0804C51C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C5B0.inc", void sub_0804C5B0(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C68C.inc", void sub_0804C68C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_23.inc", void nullsub_23());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C8C0.inc", void sub_0804C8C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804C944.inc", void sub_0804C944());

extern "C" void exec_menu(InputState* input) {
    sub_080506A4();

    if (sub_08050734(input) != 0) {
        return;
    }

    if ((s8)gSomeBlend._44f2_2 != 0) {
        gSomeBlend._44f2_1 = 1;
    } else {
        gSomeBlend._44f2_1 = input->gotInput;
    }

    if ((s8)gSomeBlend._41da_1 != 0) {
        sub_0804E16C(input);
        return;
    }

    if (gSomeBlend._41c6_1) {
        sub_0804E078(input, &gSomeBlend._3060);
        return;
    }

    if (gSomeBlend.currentMenu < 0x13) {
        gMenuFuncTable[gSomeBlend.currentMenu](input, &gSomeBlend.menus[gSomeBlend.currentMenu]);
    }
}

extern "C" void menuGoods(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        if (menu->currentTab >= gSomeBlend.partyCount) {
            if (gSomeBlend._426a != 0) {
                sub_0804EAA4(menu);
            }
            return;
        }

        if (gSomeBlend._426c == 0) {
            return;
        }

        sub_0804EA28(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    }

    if (navigateTabbedMenu(&menu->currentTab, input, 0, menu->numItems - 1, 0) !=
        CURSOR_NO_CHANGE) {
        gSomeBlend._4264 = (s8)menu->currentTab;
        setMenuGoods();
        sub_080012BC(&gSomeBlend._50, &gSomeBlend._423c, 1, 1);
        sub_08046D90();
        return;
    }

    if (menu->currentTab >= gSomeBlend.partyCount) {
        if (gSomeBlend._426a == 0) {
            return;
        }

        if (gSomeBlend._426a < 0x11) {
            if (sub_08053AC8(&menu->cursorPos, input, 2, TWO_COLUMN_MENU_HEIGHT(gSomeBlend._426a),
                             gSomeBlend._426a,
                             menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
                sub_08046D90();
                gSomeBlend._c5ad_1 = 1;
            }
            return;
        }

        if (navigateScrolling2DMenu(&menu->cursorPos, &menu->scrollOffset, input, 2,
                                    TWO_COLUMN_MENU_HEIGHT(gSomeBlend._426a), gSomeBlend._426a,
                                    menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
            sub_08046D90();
            gSomeBlend._c5ad_1 = 1;
        }
        return;
    }

    if (gSomeBlend._426c == 0) {
        return;
    }

    if (sub_08053AC8(&menu->cursorPos, input, 2, TWO_COLUMN_MENU_HEIGHT(gSomeBlend._426c),
                     gSomeBlend._426c, menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
        sub_08046D90();
        gSomeBlend._c5ad_1 = 1;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuEquip.inc", void menuEquip());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804CCF4.inc", void sub_0804CCF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuPSI.inc", void menuPSI());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuStatus.inc", void menuStatus());

extern "C" void menuSkills(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        setMenuStatus();
        sub_080012BC(&gSomeBlend._50, &gSomeBlend._423c, 1, 1);
        sub_08046D90();
        sub_08049AF8(gSomeBlend._4ed0);
        gSomeBlend._44f3_8 = 1;
        return;
    }

    if (navigateTabbedMenu(&menu->currentTab, input, 0, menu->numItems - 1, 0) !=
        CURSOR_NO_CHANGE) {
        gSomeBlend._4264 = menu->currentTab;
        menu->cursorPos = 0;
        menu->scrollOffset = 0;
        sub_080012BC(&gSomeBlend._50, &gSomeBlend._423c, 1, 1);
        sub_08052DBC(getBufferedCharStats(menu->currentTab));
        sub_08046D90();
        gSomeBlend._44f3_8 = 1;
        return;
    }

    if (gSomeBlend._427a == 0) {
        return;
    }

    if (gSomeBlend._427a < 0x11) {
        if (sub_08053AC8(&menu->cursorPos, input, 2, TWO_COLUMN_MENU_HEIGHT(gSomeBlend._427a),
                         gSomeBlend._427a, menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
            sub_08046D90();
            gSomeBlend._c5ad_1 = 1;
        }
        return;
    }

    if (navigateScrolling2DMenu(&menu->cursorPos, &menu->scrollOffset, input, 2,
                                TWO_COLUMN_MENU_HEIGHT(gSomeBlend._427a), gSomeBlend._427a,
                                menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
        sub_08046D90();
        gSomeBlend._c5ad_1 = 1;
    }
}

extern "C" void menuMemoSelect(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        if (gSomeBlend._427e != 0) {
            sub_0804EEE8(menu);
        }
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    }

    if (gSomeBlend._427e == 0) {
        return;
    }

    if (navigateScrolling2DMenu(&menu->cursorPos, &menu->scrollOffset, input, 2,
                                TWO_COLUMN_MENU_HEIGHT(menu->numItems), menu->numItems,
                                menu->numItemsVisible) == CURSOR_MOVED_AND_SCROLLED) {
        sub_08046D90();
        gSomeBlend._c5ad_1 = 1;
    }
}

extern "C" void menuMemoView(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON || input->justPressed & DPAD_DOWN) {
        advanceMemoEntry(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        setMenuMemoSelect();
        sub_080012BC(&gSomeBlend._50, &gSomeBlend._424c, 1, 1);
        sub_08046D90();
        gSomeBlend._41e6_1 = 0;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuBattleMemory.inc", void menuBattleMemory());

extern "C" void menuShopTransactionSelect(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        handleShopTransactionSelection(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    }

    navigate1DMenuChecked(&menu->cursorPos, input, 0, 2, DPAD_DOWN, DPAD_UP, true);
}

extern "C" void menuShopCharacterSelect(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        setShopSubmenu(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        setMenuShopTransactionSelect();
        sub_08049DC4();
        sub_08046D90();
        return;
    }

    navigate1DMenuChecked(&menu->cursorPos, input, 0, menu->numItems - 1, DPAD_DOWN, DPAD_UP, true);
    gSomeBlend._4264 = getNonPlayablePartyMemberIndex(menu->cursorPos);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuShopItemSelectBuy.inc", void menuShopItemSelectBuy());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuShopItemSelectSell.inc", void menuShopItemSelectSell());

extern "C" void menuItemGuyTransactionSelect(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        handleItemGuyTransactionSelection(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    }

    navigate1DMenuChecked(&menu->cursorPos, input, 0, 2, DPAD_DOWN, DPAD_UP, true);
}

extern "C" void menuItemGuyCharacterSelect(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == A_BUTTON) {
        setItemGuySubmenu(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        setMenuItemGuyTransactionSelect();
        sub_08049DC4();
        sub_08046D90();
        return;
    }

    navigate1DMenuChecked(&menu->cursorPos, input, 0, menu->numItems - 1, DPAD_DOWN, DPAD_UP, true);
    gSomeBlend._4264 = getNonPlayablePartyMemberIndex(menu->cursorPos);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuItemGuyItemSelectDeposit.inc", void menuItemGuyItemSelectDeposit());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuItemGuyItemSelectWithdraw.inc", void menuItemGuyItemSelectWithdraw());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/menuSaveSelect.inc", void menuSaveSelect());

extern "C" void menuNewGame(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0 || !gSomeBlend._4501_2) {
        return;
    }

    if (gSomeBlend._4ecf_10) {
        sub_0804DC5C(input, menu);
        return;
    }

    if (gSomeBlend._4a30 == 8) {  // text speed and window flavor
        sub_0804DE00(input, menu);
        return;
    }

    if (gSomeBlend._4a30 == 9) {  // "Does this look okay?" page
        sub_0804DFE4(input, menu);
        return;
    }

    if (input->justPressed == A_BUTTON) {
        play_sound(SFX_MENU_SELECT);
        sub_0804C68C();
        return;
    }

    if (input->justPressed & B_BUTTON) {
        backspaceMenuText();
    }
}

extern "C" void menuTryAgain(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0 || menu->currentTab != 0) {
        return;
    }

    if (input->justPressed & (L_BUTTON | A_BUTTON)) {
        handleTryAgain(menu);
        return;
    }

    if (input->justPressed & B_BUTTON) {
        if (menu->cursorPos != 1) {
            play_sound(SFX_MENU_CANCEL);
            menu->cursorPos = 1;
        }
        return;
    }

    sub_08053804(&menu->cursorPos, input, 2, 1, 2, false);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DC5C.inc", void sub_0804DC5C(InputState*, MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DE00.inc", void sub_0804DE00(InputState*, MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DECC.inc", void sub_0804DECC(InputState*, MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DF30.inc", void sub_0804DF30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804DFE4.inc", void sub_0804DFE4());

extern "C" void sub_0804E078(InputState* input, MenuState* menu) {
    if ((s8)gSomeBlend._44f2_1 == 0) {
        return;
    }

    if (input->justPressed == B_BUTTON) {
        play_sound(SFX_MENU_CANCEL);
        gSomeBlend._41c6_1 = 0;

        s32 signedIndex = gSomeBlend._41bc;

        if (signedIndex < 4) {
            if (signedIndex >= 0) {
                sub_080012BC(&gSomeBlend._50, &gSomeBlend._4244, 1, 1);
                sub_08049DC4();
            }
        }

        sub_08046D90();
        sub_08049AF8(&gUnknown_0201AEF8);
        return;
    }

    if (gSomeBlend._41bc < 4) {
        gUnknown_09B8FF14[gSomeBlend._41bc](input, menu);
    }
}

extern "C" void sub_0804E118(InputState* input, MenuState* menu) {
    if (input->justPressed == A_BUTTON) {
        sub_0804F6C8(menu);
    } else if (navigateScrollingMenu(menu, &menu->cursorPos, input, 0, menu->numItems - 1) ==
               CURSOR_MOVED_AND_SCROLLED) {
        sub_08046D90();
        gSomeBlend._c5ad_1 = 1;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E16C.inc", void sub_0804E16C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E3AC.inc", void sub_0804E3AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E3E0.inc", void sub_0804E3E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E414.inc", void sub_0804E414());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E47C.inc", void sub_0804E47C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E558.inc", void sub_0804E558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E5C4.inc", void sub_0804E5C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E7D4.inc", void sub_0804E7D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E810.inc", void sub_0804E810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E860.inc", void sub_0804E860());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E8B8.inc", void sub_0804E8B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E8E8.inc", void sub_0804E8E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E938.inc", void sub_0804E938());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E968.inc", void sub_0804E968());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E998.inc", void sub_0804E998());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E9C8.inc", void sub_0804E9C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804E9F8.inc", void sub_0804E9F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EA28.inc", void sub_0804EA28(MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EAA4.inc", void sub_0804EAA4(MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EB68.inc", void sub_0804EB68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804ECC8.inc", void sub_0804ECC8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EDFC.inc", void sub_0804EDFC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_21.inc", void nullsub_21());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/toggleBattleMemorySprite.inc", void toggleBattleMemorySprite());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804EEE8.inc", void sub_0804EEE8(MenuState*));

extern "C" void advanceMemoEntry(MenuState* menu) {
    play_sound(SFX_MENU_SELECT);
    menu->cursorPos++;

    if (menu->cursorPos >= menu->numItems) {
        play_sound(SFX_MENU_CANCEL);
        setMenuMemoSelect();
    } else {
        loadMemoEntryPage(menu->currentTab, menu->cursorPos);
    }

    sub_080012BC(&gSomeBlend._50, &gSomeBlend._424c, 1, 1);
    sub_08046D90();
    gSomeBlend._41e6_1 = 0;
}

extern "C" void handleShopTransactionSelection(MenuState* menu) {
    switch (menu->cursorPos) {
    case 0:  // Buy
    case 1:  // Sell
        play_sound(SFX_MENU_SELECT);
        setMenuShopCharacterSelect();
        break;
    case 2:  // End
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    default:
        break;
    }

    sub_08049DC4();
    sub_08046D90();
}

extern "C" void setShopSubmenu(MenuState* menu) {
    play_sound(SFX_MENU_SELECT);
    gSomeBlend._4264 = getNonPlayablePartyMemberIndex(menu->cursorPos);

    if (gSomeBlend.menus[MENU_SHOP_TRANSACTION_SELECT].cursorPos == 0) {
        setShopBuyMenu();
    } else {
        setShopSellMenu();
    }

    sub_08049DC4();
    sub_08046D90();
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F01C.inc", void sub_0804F01C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F0D4.inc", void sub_0804F0D4());

extern "C" void handleItemGuyTransactionSelection(MenuState* menu) {
    switch (menu->cursorPos) {
    case 0:  // Deposit
    case 1:  // Withdraw
        play_sound(SFX_MENU_SELECT);
        setMenuItemGuyCharacterSelect();
        break;
    case 2:  // End
        play_sound(SFX_MENU_CANCEL);
        sub_080506CC(0);
        return;
    default:
        break;
    }

    sub_08049DC4();
    sub_08046D90();
}

extern "C" void setItemGuySubmenu(MenuState* menu) {
    play_sound(SFX_MENU_SELECT);
    gSomeBlend._4264 = getNonPlayablePartyMemberIndex(menu->cursorPos);

    if (gSomeBlend.menus[MENU_ITEM_GUY_TRANSACTION_SELECT].cursorPos == 0) {
        setItemGuyDepositMenu();
    } else {
        setItemGuyWithdrawMenu();
    }

    sub_08049DC4();
    sub_08046D90();
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F1D8.inc", void sub_0804F1D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F294.inc", void sub_0804F294());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F334.inc", void sub_0804F334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F3EC.inc", void sub_0804F3EC());

extern "C" void handleTryAgain(MenuState* menu) {
    switch (menu->cursorPos) {
    case 0:  // Yes
        play_sound(SFX_STAT_MENU_ENTER);
        menu->currentTab = 1;
        sub_08054108();
        return;
    case 1:  // No
        play_sound(SFX_STAT_MENU_LEAVE);
        menu->currentTab = 2;
        sub_080506CC(5);
        return;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F51C.inc", void sub_0804F51C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F6C8.inc", void sub_0804F6C8(MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F7B0.inc", void sub_0804F7B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F890.inc", void sub_0804F890());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804F968.inc", void sub_0804F968());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FA5C.inc", void sub_0804FA5C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FCB0.inc", void sub_0804FCB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FDE0.inc", void sub_0804FDE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FE84.inc", void sub_0804FE84());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0804FF30.inc", void sub_0804FF30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050008.inc", void sub_08050008());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080500D4.inc", void sub_080500D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050218.inc", void sub_08050218());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805030C.inc", void sub_0805030C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080503DC.inc", void sub_080503DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050458.inc", void sub_08050458());

extern "C" void sub_080505D8() {
    u16 len;

    if (gSomeBlend._4a30 == 0xE) {
        len = bufferedTextLength(gSomeBlend.menuTextBuffer, 0x10);
    } else {
        len = bufferedTextLength(gSomeBlend.menuTextBuffer, 9);
    }

    if (len != 0) {
        sub_0804C68C();
    } else {
        play_sound(SFX_MENU_ERROR);
    }
}

extern "C" void backspaceMenuText() {
    if (gSomeBlend.menuTextCursorPos == 0) {
        play_sound(SFX_MENU_CANCEL);
        if (gSomeBlend.menuTextBuffer[0] == 0xFFFF) {
            nullsub_23();
            return;
        }
        gSomeBlend.menuTextBuffer[0] = 0xFFFF;
        return;
    }

    play_sound(SFX_MENU_CANCEL);
    gSomeBlend.menuTextCursorPos--;
    gSomeBlend.menuTextBuffer[gSomeBlend.menuTextCursorPos] = 0xFFFF;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080506A4.inc", void sub_080506A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080506CC.inc", void sub_080506CC(u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050734.inc", u16 sub_08050734(InputState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050738.inc", void sub_08050738());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050790.inc", void sub_08050790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050948.inc", void sub_08050948());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080509B0.inc", void sub_080509B0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050A74.inc", void sub_08050A74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050B60.inc", void sub_08050B60());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050C08.inc", void sub_08050C08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050C68.inc", void sub_08050C68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D00.inc", void sub_08050D00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D64.inc", void sub_08050D64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050D80.inc", void sub_08050D80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050DB4.inc", void sub_08050DB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050DE0.inc", void sub_08050DE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E20.inc", void sub_08050E20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E64.inc", void sub_08050E64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050E94.inc", void sub_08050E94());

extern "C" void sub_08050EEC() {
    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)gSomeBlend._C620;
    dmaRegs[1] = (uintptr_t)OAM;

    u32 size = OAM_SIZE / 2;
    u32 flags = (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16;
    dmaRegs[2] = flags | size;

    dmaRegs[2];

    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050F2C.inc", void sub_08050F2C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050F88.inc", void sub_08050F88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FCC.inc", void sub_08050FCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FD8.inc", void sub_08050FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08050FF0.inc", void sub_08050FF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051058.inc", void sub_08051058());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051080.inc", void sub_08051080());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805108C.inc", void sub_0805108C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080510A4.inc", void sub_080510A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080510B8.inc", void sub_080510B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805111C.inc", void sub_0805111C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051144.inc", void sub_08051144());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080511B4.inc", void sub_080511B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080511F8.inc", void sub_080511F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051254.inc", void sub_08051254());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_22.inc", void nullsub_22());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080512B8.inc", void sub_080512B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080512CC.inc", void sub_080512CC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051448.inc", void sub_08051448());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805153C.inc", void sub_0805153C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080515DC.inc", void sub_080515DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051678.inc", void sub_08051678());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805173C.inc", void sub_0805173C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805179C.inc", void sub_0805179C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080517AC.inc", void sub_080517AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051840.inc", void sub_08051840());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051908.inc", void sub_08051908());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805191C.inc", void sub_0805191C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080519C4.inc", void sub_080519C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051A08.inc", void sub_08051A08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051A74.inc", void sub_08051A74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051B48.inc", void sub_08051B48());

extern "C" void copy_save_from_iwram(char* src) {  // src seems to always be 0x03006D68
    CpuSmartSet(src, &gSave, sizeof(Save));
    CpuSmartSet((void*)(src + 0x898), &gCharStats[1],
                sizeof(CharStats) *
                    13);  // FAKEMATCH, fix when iwram save copy is better understood
    memclear(&gCharStats[0], 0x6C);
    memclear(&gCharStats[14], 0xD8);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C28.inc", void sub_08051C28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_24.inc", void nullsub_24());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C38.inc", void sub_08051C38());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051C74.inc", void sub_08051C74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051CF4.inc", void sub_08051CF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08051F80.inc", void sub_08051F80());

extern "C" void copy_save_to_iwram(char* dest) {  // dest seems to always be 0x03006D68
    CpuSmartSet(&gSave, dest, sizeof(Save));
    dest += 0x898;  // FAKEMATCH, see copy_save_from_iwram
    CpuSmartSet(&gCharStats[1], dest, sizeof(CharStats) * 13);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052088.inc", void sub_08052088());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052094.inc", void sub_08052094());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080520A0.inc", void sub_080520A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052100.inc", void sub_08052100());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052128.inc", void sub_08052128());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805213C.inc", void sub_0805213C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805217C.inc", void sub_0805217C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052184.inc", void sub_08052184());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080521A4.inc", void sub_080521A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052208.inc", void sub_08052208());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080522A8.inc", void sub_080522A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052360.inc", void sub_08052360());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080523B8.inc", void sub_080523B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080523D4.inc", void sub_080523D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805244C.inc", void sub_0805244C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080524EC.inc", void sub_080524EC(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805255C.inc", void sub_0805255C());

extern "C" void condenseInventory(CharStats* stats) {
    u8 tempInv[16];
    u16 tempTimers[16];
    u16 i;

    for (i = 0; i < 16; i++) {
        tempInv[i] = 0;
    }

    u16 numItems = 0;
    for (i = 0; i < 16; i++) {
        if (stats->inventory[i] == ItemEmpty) {
            continue;
        }

        tempInv[numItems] = stats->inventory[i];
        tempTimers[numItems] = stats->item_timers[i];
        numItems++;
    }

    for (i = 0; i < 16; i++) {
        stats->inventory[i] = tempInv[i];
        stats->item_timers[i] = tempTimers[i];
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805270C.inc", void sub_0805270C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805280C.inc", void sub_0805280C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052864.inc", void sub_08052864());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080528A0.inc", void sub_080528A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052964.inc", void sub_08052964());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052A64.inc", void sub_08052A64());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052AFC.inc", void sub_08052AFC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052BE0.inc", void sub_08052BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052CC4.inc", void sub_08052CC4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052D1C.inc", void sub_08052D1C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052DBC.inc", void sub_08052DBC(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052EA4.inc", void sub_08052EA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052EC0.inc", void sub_08052EC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F74.inc", void sub_08052F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F80.inc", void sub_08052F80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052F9C.inc", void sub_08052F9C(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08052FC8.inc", void sub_08052FC8(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053034.inc", void sub_08053034());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053148.inc", void sub_08053148(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080531C8.inc", void sub_080531C8(CharStats*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053234.inc", void sub_08053234());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sortPsi.inc", void sortPsi());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/loadSupportPsi.inc", void loadSupportPsi());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/loadOffensePsi.inc", void loadOffensePsi());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/loadAssistPsi.inc", void loadAssistPsi());

extern "C" u16 navigate1DMenuChecked(u16* cursor, InputState* input, u16 cursorMin, u16 cursorMax,
                                     u16 buttonUp, u16 buttonDown, vu16 canWrap) {
    if (*cursor == 0 && cursorMax == 0) {
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & buttonDown) {
        if (*cursor != cursorMin) {
            if (buttonDown == DPAD_UP) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor -= 1;
            return CURSOR_MOVED;
        } else if (canWrap) {
            if (buttonDown == DPAD_UP) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor = cursorMax;
            return CURSOR_MOVED;
        }
    } else if (input->pressed & buttonUp) {
        if (*cursor != cursorMax) {
            if (buttonUp == DPAD_DOWN) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor += 1;
            return CURSOR_MOVED;
        } else if (canWrap) {
            if (buttonUp == DPAD_DOWN) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor = cursorMin;
            return CURSOR_MOVED;
        }
    }
    return CURSOR_NO_CHANGE;
}

extern "C" u16 navigateScrollingMenu(MenuState* menu, u16* cursor, InputState* input, u16 cursorMin,
                                     u16 cursorMax) {
    if (*cursor == 0 && cursorMax == 0) {
        return 0;
    }

    if (input->pressed & DPAD_UP) {
        if (*cursor != cursorMin) {
            play_sound(SFX_MENU_CURSOR_UD);
            *cursor -= 1;
            if (menu->numItemsVisible > 1 && menu->scrollOffset == (*cursor + 1)) {
                menu->scrollOffset = *cursor;
                return CURSOR_MOVED_AND_SCROLLED;
            }
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & DPAD_DOWN) {
        if (*cursor != cursorMax) {
            play_sound(SFX_MENU_CURSOR_UD);
            *cursor += 1;
            if (*cursor >= menu->scrollOffset + menu->numItemsVisible) {
                menu->scrollOffset++;
                return CURSOR_MOVED_AND_SCROLLED;
            }
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }

    return CURSOR_NO_CHANGE;
}

extern "C" u16 navigatePageableMenu(MenuState* menu, u16* cursor, InputState* input, u16 cursorMin,
                                    u16 cursorMax) {
    if (*cursor == 0 && cursorMax == 0) {
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & DPAD_LEFT) {
        if (*cursor != cursorMin) {
            play_sound(SFX_MENU_CURSOR_LR);
            if (*cursor < menu->numItemsVisible) {
                *cursor = cursorMin;
                if (menu->scrollOffset != cursorMin) {
                    menu->scrollOffset = cursorMin;
                    return CURSOR_MOVED_AND_SCROLLED;
                }
                return CURSOR_MOVED;
            }

            if (*cursor < (menu->numItemsVisible * 2)) {
                *cursor -= menu->numItemsVisible;
                menu->scrollOffset = cursorMin;
            } else {
                *cursor -= menu->numItemsVisible;
                menu->scrollOffset -= menu->numItemsVisible;
            }
            return CURSOR_MOVED_AND_SCROLLED;
        }
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & DPAD_RIGHT && *cursor != cursorMax) {
        play_sound(SFX_MENU_CURSOR_LR);
        if (cursorMax < menu->numItemsVisible) {
            *cursor = cursorMax;
            if (menu->scrollOffset != cursorMin) {
                menu->scrollOffset = cursorMin;
                return CURSOR_MOVED_AND_SCROLLED;
            }
            return CURSOR_MOVED;
        }

        if (*cursor > cursorMax - menu->numItemsVisible) {
            *cursor = cursorMax;
            if (menu->scrollOffset != cursorMax - menu->numItemsVisible + 1) {
                menu->scrollOffset = cursorMax - menu->numItemsVisible + 1;
                return CURSOR_MOVED_AND_SCROLLED;
            }
            return CURSOR_MOVED;
        }

        if (*cursor > cursorMax - (menu->numItemsVisible * 2)) {
            *cursor += menu->numItemsVisible;
            menu->scrollOffset = cursorMax - menu->numItemsVisible + 1;
        } else {
            *cursor += menu->numItemsVisible;
            menu->scrollOffset += menu->numItemsVisible;
        }
        return CURSOR_MOVED_AND_SCROLLED;
    }
    return CURSOR_NO_CHANGE;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080536F8.inc", void sub_080536F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/navigateTabbedMenu.inc", u16 navigateTabbedMenu(void*, InputState*, u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053804.inc", void sub_08053804(u16*, InputState*, u16, u16, u16, u16));

extern "C" u16 navigateScrolling2DMenu(u16* cursor, u16* scrollOffset, InputState* input,
                                       u16 numColumns, u16 numRows, u16 numItems,
                                       u16 numItemsVisible) {
    u16 currentRow = Divide(*cursor, numColumns);
    u16 currentColumn = sub_08002FD4(*cursor, numColumns);

    if (input->pressed & DPAD_UP) {
        if (currentRow != 0) {
            play_sound(SFX_MENU_CURSOR_UD);
            *cursor -= numColumns;
            if (numItemsVisible > 1) {
                if (*scrollOffset >= numColumns &&
                    *scrollOffset + numColumns > *cursor + numColumns) {
                    *scrollOffset = *scrollOffset - numColumns;
                    return CURSOR_MOVED_AND_SCROLLED;
                }
            }
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & DPAD_DOWN) {
        if (*cursor != numItems - 1 && currentRow < numRows - 1) {
            play_sound(SFX_MENU_CURSOR_UD);
            *cursor += numColumns;
            *cursor = min(numItems - 1, *cursor);
            if (*cursor >= *scrollOffset + numItemsVisible) {
                *scrollOffset += numColumns;
                return CURSOR_MOVED_AND_SCROLLED;
            }
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & DPAD_LEFT) {
        if (currentColumn == 0) {
            if (*cursor + (numColumns - 1) < numItems) {
                play_sound(SFX_MENU_CURSOR_LR);
                *cursor += numColumns - 1;
                return CURSOR_MOVED;
            }
            return CURSOR_NO_CHANGE;
        }
        play_sound(SFX_MENU_CURSOR_LR);
        *cursor -= 1;
        return CURSOR_MOVED;
    }

    if (input->pressed & DPAD_RIGHT) {
        if (currentColumn == numColumns - 1) {
            play_sound(SFX_MENU_CURSOR_LR);
            *cursor = currentRow * numColumns;
            return CURSOR_MOVED;
        }
        if (currentColumn < numColumns - 1 && *cursor + 1 < numItems) {
            play_sound(SFX_MENU_CURSOR_LR);
            *cursor += 1;
            return CURSOR_MOVED;
        }
    }

    return CURSOR_NO_CHANGE;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053AC8.inc", u16 sub_08053AC8(void*, InputState*, u16, u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053C34.inc", void sub_08053C34());

extern "C" u16 getNonPlayablePartyMemberIndex(u16 target) {
    u16 numNonPlayable = 0;

    for (u16 i = 0; i < gSomeBlend.partyCount; i++) {
        if (!isCharStatsOverworldPlayable(getBufferedCharStats(i))) {
            if (numNonPlayable == target) {
                return i;
            }
            numNonPlayable++;
        }
    }

    return target;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08053EEC.inc", void sub_08053EEC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054108.inc", void sub_08054108());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054130.inc", void sub_08054130());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054200.inc", void sub_08054200());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054264.inc", void sub_08054264());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080542FC.inc", void sub_080542FC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054360.inc", void sub_08054360());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805438C.inc", void sub_0805438C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080543E8.inc", void sub_080543E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080544F8.inc", void sub_080544F8(u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054528.inc", void sub_08054528());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054558.inc", void sub_08054558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805458C.inc", void sub_0805458C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080545C0.inc", void sub_080545C0());

extern "C" void sub_08054604(u32 price) {
    if (gSomeBlend._2df0[0] > price) {
        gSomeBlend._2df0[0] -= price;
    } else {
        gSomeBlend._2df0[0] = 0;
    }

    gSave.dp_pocket = gSomeBlend._2df0[0];
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054640.inc", void sub_08054640());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054670.inc", void sub_08054670());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054694.inc", void sub_08054694());

extern "C" u16 numItemsInInventory(CharStats* stats) {
    u16 count = 0;

    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] != ItemEmpty) {
            count++;
        }
    }

    return count;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080546D8.inc", void sub_080546D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054720.inc", void sub_08054720());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805476C.inc", void sub_0805476C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080547A4.inc", void sub_080547A4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805486C.inc", void sub_0805486C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805493C.inc", void sub_0805493C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054A90.inc", void sub_08054A90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054B30.inc", void sub_08054B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054B74.inc", void sub_08054B74());

extern "C" void buyItem(u16 item) {
    u32 buyPrice = gGoodsInfo[item].sell_price * 2;
    sub_080544F8(item, 1);
    sub_08054604(buyPrice);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054BE0.inc", void sub_08054BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054CA4.inc", void sub_08054CA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054CDC.inc", void sub_08054CDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054EF4.inc", void sub_08054EF4());

extern "C" u16 isItemIdEquipment(u16 item) {
    if (gGoodsInfo[item].item_type == Weapon || gGoodsInfo[item].item_type == BodyArmor ||
        gGoodsInfo[item].item_type == Headgear || gGoodsInfo[item].item_type == Armgear) {
        return true;
    }

    return false;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08054F5C.inc", void sub_08054F5C());

extern "C" u16* getCharName(u16 index) {
    return (u16*)gCharStats[index].name;
}

extern "C" CharStats* getCharStats(u16 index) {
    return &gCharStats[index];
}

extern "C" CharStats* getBufferedCharStats(u16 index) {
    return *(CharStats**)&gUnknown_02018CD8[index];
}

extern "C" struct_2018D00* sub_08054FF0(u16 index) {
    return &gSomeBlend._2cd8[index];
}

extern "C" s16 getCharIndexInParty(u16 id) {
    for (u16 i = 0; i < 5; i++) {
        if (gSave.party[i] == id) {
            return i;
        }
    }

    return -1;
}

extern "C" u16 isCharUnconscious(CharStats* stats) {
    return stats->curHP == 0;
}

extern "C" u16 isCharStatsOverworldPlayable(CharStats* stats) {
    return gLevelStatTable[stats->charNo].overworld_playable;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055068.inc", void sub_08055068());

extern "C" s16 getEquippedItemIndex(CharStats* stats, u16 equipment) {
    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == equipment && isEquipLytSet(stats, i)) {
            return i;
        }
    }
    return -1;
}

extern "C" s16 getInventoryIndex(CharStats* stats, u16 item) {
    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == item) {
            return i;
        }
    }
    return -1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055104.inc", void sub_08055104());

extern "C" u16 isItemIdEquipped(CharStats* stats, u16 item) {
    if (!isItemIdEquipment(item)) {
        return 0;
    }

    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == item && isEquipLytSet(stats, i)) {
            return 1;
        }
    }

    return 0;
}

extern "C" u16 isEquipLytSet(CharStats* stats, u16 index) {
    return (stats->equip_lyt >> index) & 1;
}

extern "C" void setEquipLyt(CharStats* stats, u16 index, u16 val) {
    u32 mask = stats->equip_lyt & ~(1 << index);
    stats->equip_lyt = mask | (val << index);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080551B0.inc", void sub_080551B0());

extern "C" void refreshPartyEquipLyt() {
    for (u16 i = 0; i < gSomeBlend.partyCount; i++) {
        refreshEquipLyt(getBufferedCharStats(i));
    }
}

extern "C" void refreshEquipLyt(CharStats* stats) {
    u16 count = 0;

    for (u16 i = 0; i < 0x10; i++) {
        if (isEquipLytSet(stats, i)) {
            count++;
        }
    }

    if (count > 4) {
        stats->equip_lyt = 0;
        for (u16 i = 0; i < 4; i++) {
            u16 index = getInventoryIndex(stats, stats->equipment[i]);
            if ((s16)index != -1) {
                setEquipLyt(stats, index, 1);
            }
        }
    }
}

extern "C" void clearEquipForEmptyItems(CharStats* stats) {
    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == ItemEmpty) {
            setEquipLyt(stats, i, 0);
        }
    }
}

extern "C" u16 sub_080552E4(CharStats* stats) {
    switch (stats->charNo) {
    case PartyMemberID::Lucas:
        switch (stats->spriteNo) {
        case 0x4:
        case 0x3C:
        case 0x47:
        case 0x8D:
        case 0xF3:
        case 0xF1:
        case 0x289:
            return 0x10;
        default:
            return stats->charNo;
        }
    case PartyMemberID::Kumatora:
        if (stats->spriteNo == 0xC || stats->spriteNo == 0xD) {
            return 0x12;
        }
        return 4;
    default:
        return stats->charNo;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805534C.inc", void sub_0805534C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805548C.inc", void sub_0805548C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055558.inc", void sub_08055558());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055594.inc", void sub_08055594());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055694.inc", void sub_08055694());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055750.inc", void sub_08055750());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055788.inc", void sub_08055788());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080557C0.inc", void sub_080557C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080557F4.inc", void sub_080557F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055828.inc", void sub_08055828());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805585C.inc", void sub_0805585C());

extern "C" void sub_08055890(u16* dest, u16* src) {
    u16 len = bufferedTextLength(src, -1);

    for (u16 i = 0; i < len; i++, src++) {
        if (*src != 0xFF01) {
            *dest = *src;
            dest++;
        }
    }
}

extern "C" u16 sub_080558CC(u16 promptId) {
    if (promptId > 0xD) {
        return sub_0805592C();
    }

    u16* ptr = gSomeBlend.menuTextBuffer;
    u16* unk = getMenuText(0);

    for (u16 i = 0; i < 9 && *ptr != 0xFFFF; i++, ptr++) {
        if (*ptr == 0xFFFF) {
            return 1;
        }

        if (*ptr != *unk) {
            return 0;
        }
    }

    return 1;
}

extern "C" u16 sub_0805592C() {
    u16* ptr = gSomeBlend.menuTextBuffer;
    u16* unk = getMenuText(0);

    for (u16 i = 0; i < 0x10 && *ptr != 0xFFFF; i++, ptr++) {
        if (*ptr == 0xFFFF) {
            return 1;
        }

        if (*ptr != *unk) {
            return 0;
        }
    }

    return 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805597C.inc", void sub_0805597C());

extern "C" void sub_08055AB4() {
    copyText((u16*)&gCharStats[1].name, (u16*)&gSomeBlend.pad_4a31[0x41], 8);
    copyText((u16*)&gCharStats[2].name, (u16*)&gSomeBlend.pad_4a31[0x1], 8);
    copyText((u16*)&gCharStats[13].name, (u16*)&gSomeBlend.pad_4a31[0x21], 8);
    copyText((u16*)&gSave.claus_name, (u16*)&gSomeBlend.pad_4a31[0x21], 8);
    copyText((u16*)&gSave.hinawa_name, (u16*)&gSomeBlend.pad_4a31[0x61], 8);
    copyText((u16*)&gCharStats[5].name, (u16*)&gSomeBlend.pad_4a31[0x81], 8);
    copyText((u16*)&gSave.fav_food, (u16*)&gSomeBlend.pad_4a31[0xA1], 9);
    copyText((u16*)&gSave.fav_thing, (u16*)&gSomeBlend.pad_4a31[0xC1], 9);
    copyText((u16*)&gSave.playername_short, (u16*)&gSomeBlend.pad_4a31[0x1A1], 9);
}

extern "C" void sub_08055B50(u16 arg0) {
    switch (arg0 - 10) {
    case 0:
        copyText((u16*)&gCharStats[3].name, (u16*)&gSomeBlend._4b1a[0x58], 8);
        return;
    case 1:
        copyText((u16*)&gCharStats[6].name, (u16*)&gSomeBlend._4b1a[0x78], 8);
        return;
    case 2:
        copyText((u16*)&gCharStats[4].name, (u16*)&gSomeBlend._4b1a[0x98], 8);
        return;
    case 3:
        copyText((u16*)&gSave.playername_short, (u16*)&gSomeBlend._4b1a[0xB8], 9);
        return;
    case 4:
        copyText((u16*)&gSave.playername, (u16*)&gSomeBlend._4b1a[0xD8], 16);
    default:
        return;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055BE0.inc", void sub_08055BE0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055C80.inc", void sub_08055C80());

extern "C" u8 sub_08055D20(u16 entry, u16 arg1) {
    return gUnknown_020050C0.entries[entry]._21[arg1];
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055D3C.inc", void sub_08055D3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055DA4.inc", void sub_08055DA4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055E00.inc", void sub_08055E00());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08055F44.inc", void sub_08055F44());

extern "C" void setup_battle_music() {
    gUnknown_03004B00 = 1;
    startSong_battle(0);
    musicPlayerStop_bgm(0);
    musicPlayerStop_bgm(1);
    startSong(gMonsterData[(gEncounter._c + 0xFFFFFF00)].encounter_bgm);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805601C.inc", void sub_0805601C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080560AC.inc", void sub_080560AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080560F8.inc", void sub_080560F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805614C.inc", void sub_0805614C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056160.inc", void sub_08056160());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805629C.inc", void sub_0805629C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056334.inc", void sub_08056334());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056408.inc", void sub_08056408());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080564C0.inc", void sub_080564C0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805650C.inc", void sub_0805650C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056534.inc", void sub_08056534());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805655C.inc", void sub_0805655C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056584.inc", void sub_08056584());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056620.inc", void sub_08056620());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056740.inc", void sub_08056740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080567E0.inc", void sub_080567E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805685C.inc", void sub_0805685C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805689C.inc", void sub_0805689C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080568D0.inc", void sub_080568D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080568E0.inc", void sub_080568E0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_08.inc", void nullsub_08());

extern "C" void sub_080568F4(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7628, sizeof(gUnknown_080C7628));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056948.inc", void sub_08056948());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080569A8.inc", void sub_080569A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_086.inc", void nullsub_086());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_087.inc", void nullsub_087());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080569BC.inc", void sub_080569BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A20.inc", void sub_08056A20());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A4C.inc", void sub_08056A4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056A80.inc", void sub_08056A80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056AF0.inc", void sub_08056AF0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056B18.inc", void sub_08056B18());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056C8C.inc", void sub_08056C8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056CC0.inc", void sub_08056CC0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056D78.inc", void sub_08056D78());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056E28.inc", void sub_08056E28());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056E68.inc", void sub_08056E68());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056F58.inc", void sub_08056F58());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056F6C.inc", void sub_08056F6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056FB0.inc", void sub_08056FB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08056FBC.inc", void sub_08056FBC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057044.inc", void sub_08057044());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057050.inc", void sub_08057050());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805708C.inc", void sub_0805708C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080570F0.inc", void sub_080570F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057110.inc", void sub_08057110());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057130.inc", void sub_08057130());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057150.inc", void sub_08057150());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057170.inc", void sub_08057170());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057204.inc", void sub_08057204());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057250.inc", void sub_08057250());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057290.inc", void sub_08057290());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080572F8.inc", void sub_080572F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805734C.inc", void sub_0805734C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057384.inc", void sub_08057384());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080573B8.inc", void sub_080573B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080573E4.inc", void sub_080573E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057424.inc", void sub_08057424());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_25.inc", void nullsub_25());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057580.inc", void sub_08057580());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057668.inc", void sub_08057668());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057728.inc", void sub_08057728());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057760.inc", void sub_08057760());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057788.inc", void sub_08057788());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080577B8.inc", void sub_080577B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080577E8.inc", void sub_080577E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578B4.inc", void sub_080578B4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578D0.inc", void sub_080578D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080578F8.inc", void sub_080578F8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805791C.inc", void sub_0805791C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_088.inc", void nullsub_088());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080579E8.inc", void sub_080579E8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057A14.inc", void sub_08057A14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057A8C.inc", void sub_08057A8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_089.inc", void nullsub_089());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057B30.inc", void sub_08057B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057B54.inc", void sub_08057B54());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057BDC.inc", void sub_08057BDC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057C6C.inc", void sub_08057C6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057CB4.inc", void sub_08057CB4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D04.inc", void sub_08057D04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_90.inc", void nullsub_90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D4C.inc", void sub_08057D4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057D8C.inc", void sub_08057D8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057DA0.inc", void sub_08057DA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E08.inc", void sub_08057E08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E3C.inc", void sub_08057E3C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057E70.inc", void sub_08057E70());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057ED0.inc", void sub_08057ED0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_46.inc", void nullsub_46());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057F74.inc", void sub_08057F74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057F98.inc", void sub_08057F98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08057FB0.inc", void sub_08057FB0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058068.inc", void sub_08058068());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805813C.inc", void sub_0805813C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080581F4.inc", void sub_080581F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080582DC.inc", void sub_080582DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080583A0.inc", void sub_080583A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058468.inc", void sub_08058468());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080584AC.inc", void sub_080584AC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805850C.inc", void sub_0805850C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058538.inc", void sub_08058538());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058548.inc", void sub_08058548());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080585C4.inc", void sub_080585C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_9.inc", void nullsub_9());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_10.inc", void nullsub_10());

extern "C" void sub_080585F8() {
    sub_08058614();
    pollInput(&gInputState);
    sub_08058630();
    nullsub_11();
}

extern "C" void sub_08058614(void) {
    if (gUnknown_02015DC0 != 0) {
        sub_08000E5C(&gSomeBlend._50);
    }
}
extern "C" void sub_08058630() {
    sub_08059500(&gInputState);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_11.inc", void nullsub_11());

extern "C" void sub_08058644(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7668, sizeof(gUnknown_080C7668));
    gUnknown_03004B00 = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058698.inc", void sub_08058698());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080586C8.inc", void sub_080586C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_91.inc", void nullsub_91());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_92.inc", void nullsub_92());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058718.inc", void sub_08058718());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805875C.inc", void sub_0805875C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058790.inc", void sub_08058790());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058804.inc", void sub_08058804());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058810.inc", void sub_08058810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058884.inc", void sub_08058884());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058A48.inc", void sub_08058A48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058A80.inc", void sub_08058A80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058B04.inc", void sub_08058B04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058B14.inc", void sub_08058B14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058BCC.inc", void sub_08058BCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058C54.inc", void sub_08058C54());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058CE4.inc", void sub_08058CE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D08.inc", void sub_08058D08());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D4C.inc", void sub_08058D4C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D74.inc", void sub_08058D74());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058D94.inc", void sub_08058D94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058DA0.inc", void sub_08058DA0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058E04.inc", void sub_08058E04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058E34.inc", void sub_08058E34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058FAC.inc", void sub_08058FAC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08058FE4.inc", void sub_08058FE4());

extern "C" void sub_08059094() {
    LZ77UnCompVram(Blob_GetEntry(&gUnknown_09C5FD2C, 0x4C), (void*)0x06008000);
    void* ptr = Blob_GetEntry(&gUnknown_09C5FD2C, 0x4D);
    sub_0800160C(&gSomeBlend._50, ptr, 0xE, 0x40);
    CpuSmartSet(ptr, &gSomeBlend._4294, 0x40);
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080590E4.inc", void sub_080590E4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059128.inc", void sub_08059128());
typedef struct __attribute__((packed, aligned(2))) TileInfoPacked { //for writing
    u16 tile_num : 10;    // 0x04 bits 0-9 - Tile/character number
    u16 priority : 2;     // 0x04 bits 10-11 - Pripalette_numity vs BG
    u16 palette_num : 4;  // 0x04 bits 12-15 - Palette number
} TileInfoPacked;

static inline void WriteTileEntry(TileInfoPacked *entry, u32 val) {
    entry->tile_num = val;
    entry->palette_num = 0xF;
}

static_assert(sizeof(TileInfoPacked) == 2);

typedef struct _020192BC {
    u8  pad_000[0x484];
    TileInfoPacked row_484[0x20];
    TileInfoPacked row_4C4[0x20];
    u8  pad_504[0x800 - 0x504];
} _020192BC;
const u8 PLAYER_NAME_BUFSIZE = 0xF;
const u16 STRING_TERMINATOR = 0xFFFF;
extern Save gSave;
extern _020192BC gUnknown_020192BC;




extern "C" void sub_080591BC(vu16 arg0) {
    _020192BC *var_r1 = &gUnknown_020192BC;
    if (arg0 != false) var_r1++;
    
    TileInfoPacked *pBuffer1 = var_r1->row_484;
    TileInfoPacked *pBuffer2 = var_r1->row_4C4;
    u16 index = 0;
    u32 offset = offsetof(Save, playername);
    if ((*(u16 *)(((u8 *)(&gSave)) + offset)) == STRING_TERMINATOR) return;
        
    while (true) {
        u16 *LoadedBuffer = (u16 *)&gSave.playername;
        u16 *pCurrentWCharacter = &LoadedBuffer[index];
        u16 SelectedWCharacter = *pCurrentWCharacter;
        if (SelectedWCharacter != 0xAC) {
            
            u32 field1 = ((TileInfo*)&pBuffer1[index])->tile_num + 0xFF64;
            WriteTileEntry(pBuffer1 + index, SelectedWCharacter + field1);
            
            u32 field2 = ((TileInfo*)&pBuffer2[index])->tile_num + 0xFF84;
            u32 SelectedWCharacter2 = (u32)(*pCurrentWCharacter);
            WriteTileEntry(pBuffer2 + index, field2 + SelectedWCharacter2);
            
            //another option that matches here is to just do a call like this
            //WriteTileEntry(pBuffer2 + index, field2 + (u32)(*pCurrentWCharacter));
            //Yall can decide which is less fake matchy
        }
        index++;
        if (index > PLAYER_NAME_BUFSIZE) break;
        if (LoadedBuffer[index] == STRING_TERMINATOR) break;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080592A8.inc", void sub_080592A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805931C.inc", void sub_0805931C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059358.inc", void sub_08059358());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080593B8.inc", void sub_080593B8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059404.inc", void sub_08059404());

extern "C" void sub_08059500(InputState* input) {
    checkSoftReset(input);
    if (gUnknown_02015DC0 == 0) {
        gSomeBlend.dispcnt |= (DISPCNT_OBJ_ON | DISPCNT_BG3_ON | DISPCNT_BG0_ON);
        sub_08059548(&gSomeBlend._2CB0);
        sub_080596A0(&gSomeBlend._2cd8[1]._8);
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059548.inc", void sub_08059548(void*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059594.inc", void sub_08059594());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080595D8.inc", void sub_080595D8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059608.inc", void sub_08059608());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080596A0.inc", void sub_080596A0(void*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/checkSoftReset.inc", void checkSoftReset(InputState*));
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059828.inc", void sub_08059828());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059840.inc", void sub_08059840());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059898.inc", void sub_08059898());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059940.inc", void sub_08059940());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080599A8.inc", void sub_080599A8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_080599F4.inc", void sub_080599F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059A8C.inc", void sub_08059A8C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_12.inc", void nullsub_12());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B04.inc", void sub_08059B04());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B10.inc", void sub_08059B10());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B30.inc", void sub_08059B30());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059B88.inc", void sub_08059B88());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059BE4.inc", void sub_08059BE4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059C34.inc", void sub_08059C34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059C50.inc", void sub_08059C50());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059D80.inc", void sub_08059D80());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059E18.inc", void sub_08059E18());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059E44.inc", void sub_08059E44());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059F6C.inc", void sub_08059F6C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_08059FD8.inc", void sub_08059FD8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A0A0.inc", void sub_0805A0A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A1A0.inc", void sub_0805A1A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A200.inc", void sub_0805A200());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2A0.inc", void sub_0805A2A0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2C8.inc", void sub_0805A2C8());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2DC.inc", void sub_0805A2DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A2F4.inc", void sub_0805A2F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A310.inc", void sub_0805A310());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A378.inc", void sub_0805A378());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A408.inc", void sub_0805A408());

extern "C" void sub_0805A418(void) {
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    memcpy(&gIntrHandlers, &gUnknown_080C7DB0, sizeof(gUnknown_080C7DB0));
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A464.inc", void sub_0805A464());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_93.inc", void nullsub_93());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A488.inc", void sub_0805A488());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A4BC.inc", void sub_0805A4BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A508.inc", void sub_0805A508());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A520.inc", void sub_0805A520());

extern "C" void sub_0805A568(void) {
    LZ77UnCompVram(Blob_GetEntry(&gUnknown_09C8DE98, 0), (void*)0x06008000);
    LZ77UnCompVram(Blob_GetEntry(&gUnknown_09C8DE98, 2), (void*)0x06000000);
    LZ77UnCompVram(Blob_GetEntry(&gUnknown_09C8DE98, 3), (void*)0x06010000);
    gSomeBlend._2CB0 = Blob_GetEntry(&gUnknown_09C8DE98, 4);

    void* temp_r0_2 = Blob_GetEntry(&gUnknown_09C8DE98, 1);
    sub_0800160C(&gSomeBlend._50, temp_r0_2, 0, 0x20);
    sub_0800160C(&gSomeBlend._50, temp_r0_2, 0x10, 0x20);
    sub_08001A14((void*)&gSomeBlend._50._2700, &gSomeBlend._2cb4, 0x400);
    sub_08001A38((void*)&gSomeBlend._50._2700, 0x400, -1);
    gSomeBlend.dispcnt = 0x140U;
    gSomeBlend.bgcnt[0] = 8;
    gSomeBlend.bgcnt[1] = 0;
    gSomeBlend.bgcnt[2] = 0;
    gSomeBlend.bgcnt[3] = 0;
    gSomeBlend.bldcnt = 0;
    gSomeBlend.bldalpha = 0;
    gSomeBlend.bldy = 0;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A638.inc", void sub_0805A638());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A778.inc", void sub_0805A778());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A800.inc", void sub_0805A800());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A844.inc", void sub_0805A844());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A904.inc", void sub_0805A904());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805A9BC.inc", void sub_0805A9BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AA90.inc", void sub_0805AA90());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AB48.inc", void sub_0805AB48());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AC30.inc", void sub_0805AC30());

extern const u16 gGBPlayerLogoPalette[0x100];
extern const u8 gGBPlayerLogoGfx[0x4000];
extern const u8 gGBPlayerLogoLayout[0x500];
extern u8 gUnknown_020050B0;
extern s8 gUnknown_020051E0;

extern "C" void sub_0805AEEC();
extern "C" void setup_vectors();
extern "C" void sub_0805ADBC();
extern "C" void sub_0805AD24();
extern "C" void sub_0805AD48();
extern "C" void sub_0805AF34();
extern "C" void sub_0805AD54();
extern "C" void sub_08001960();
extern "C" void sub_0805AE64();
extern "C" void sub_08001778(void* arg1, u16 arg2, u16 cursorMin, u16 cursorMax);
extern "C" void sub_080013D0(void*);
extern "C" void sub_08001454(void*);
extern "C" void resetInputState(InputState*, u16);
extern "C" void sub_080019A4(void*);

extern "C" void sub_0805AE94(struct_02016028*, void*);
extern "C" void sub_0805AEE0(void* arg1, Unknown_02016078* arg2);

// gb player check entry?
extern "C" void sub_0805ACF4(void) {
    sub_0805AEEC();
    switch (gUnknown_020050B0) {
    case 0:
        setup_vectors();
        sub_0805ADBC();
        sub_0805AD24();
        return;
    case 1:
        sub_0805AD48();
        return;
    }
}

// call gb player init
extern "C" void sub_0805AD24() {
    gUnknown_02015E00._0 = 0;
    sub_0805AF34();
    gUnknown_02015E00._c_1 = 1;
    sub_0805AD54();
}

extern "C" void sub_0805AD48(void) {
    gUnknown_02015E00._0 = 1;
}

extern "C" void sub_0805AD54(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IME = 1;

    sub_0805AFCC();

    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    REG_IME = 1;
    sub_080018F4();
}

extern "C" void sub_0805ADBC(void) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IME = 1;

    gUnknown_02015E00._2 = 0x3F;

    for (gUnknown_02015E00._4 = 0x1E; gUnknown_02015E00._4 != -1; gUnknown_02015E00._4--) {
        sub_08001960();
        sub_0805AE64();
        sub_08001778(&gSomeBlend, gUnknown_02015E00._4, 0x1E, gUnknown_02015E00._2);
    }

    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
    REG_DISPSTAT &= ~(DISPSTAT_VBLANK_INTR | DISPSTAT_HBLANK_INTR);
    REG_IME = 1;
}

extern "C" void sub_0805AE4C(s8 arg0) {
    gUnknown_02015E00._c_0 = 1;
    gUnknown_020051E0 = arg0;
}

extern "C" void sub_0805AE64(void) {
    gUnknown_02015E00._8++;
    sub_0805AE94(&gSomeBlend, &gSomeBlend._50);
    sub_0805AEE0(&gSomeBlend, &gSomeBlend._50);
}

extern "C" void sub_0805AE94(struct_02016028* arg0, void*) {
    if (gUnknown_02015E00._c_1 & 1) {
        REG_DISPCNT = arg0->dispcnt;
        REG_BG0CNT = arg0->bgcnt[0];
        REG_BG1CNT = arg0->bgcnt[1];
        REG_BG2CNT = arg0->bgcnt[2];
        REG_BG3CNT = arg0->bgcnt[3];
    }

    REG_BLDCNT = arg0->bldcnt;
    REG_BLDALPHA = arg0->bldalpha;
    REG_BLDY = arg0->bldy;
}

extern "C" void sub_0805AEE0(void* arg1, Unknown_02016078* arg2) {
    sub_080019A4(arg2);
}

extern "C" void sub_0805AEEC(void) {
    gUnknown_02015E00._c_0 = 0;
    gUnknown_02015E00._c_1 = 0;
    gUnknown_02015E00._8 = 0;
    sub_080013D0(&gSomeBlend);
    sub_08001454(&gSomeBlend._50);
    resetInputState(&gSomeBlend.input, 2);
}

// GB player logo init
extern "C" void sub_0805AF34(void) {
    sub_08001A14((void*)gGBPlayerLogoGfx, BG_CHAR_ADDR(2), 0x4000);
    sub_08001A14((void*)gGBPlayerLogoLayout, BG_SCREEN_ADDR(0), 0x500);
    sub_0800160C(&gSomeBlend._50, (void*)gGBPlayerLogoPalette, 0, 0x200);
    sub_08001A14((void*)gSomeBlend._50._2700, (void*)&gSomeBlend._2CB0, 0x400);
    sub_08001A38((void*)gSomeBlend._50._2700, 0x400, -1);

    gSomeBlend.dispcnt = DISPCNT_BG0_ON;
    gSomeBlend.bgcnt[0] = BGCNT_256COLOR | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(0);
    gSomeBlend.bgcnt[1] = 0;
    gSomeBlend.bgcnt[2] = 0;
    gSomeBlend.bgcnt[3] = 0;
    gSomeBlend.bldcnt = 0;
    gSomeBlend.bldalpha = 0;
    gSomeBlend.bldy = 0;
}

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805AFCC.inc", void sub_0805AFCC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B0DC.inc", void sub_0805B0DC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B138.inc", void sub_0805B138());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B1F0.inc", void sub_0805B1F0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B2C4.inc", void sub_0805B2C4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B37C.inc", void sub_0805B37C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B464.inc", void sub_0805B464());

// ----- end GB player -----

extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B528.inc", void sub_0805B528());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B5F4.inc", void sub_0805B5F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B640.inc", void sub_0805B640());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B648.inc", void sub_0805B648());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B65C.inc", void sub_0805B65C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B670.inc", void sub_0805B670());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B6BC.inc", void sub_0805B6BC());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B708.inc", void sub_0805B708());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B714.inc", void sub_0805B714());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B740.inc", void sub_0805B740());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B76C.inc", void sub_0805B76C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B79C.inc", void sub_0805B79C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_94.inc", void nullsub_94());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/nullsub_13.inc", void nullsub_13());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B7D4.inc", void sub_0805B7D4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B810.inc", void sub_0805B810());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B8D0.inc", void sub_0805B8D0());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B99C.inc", void sub_0805B99C());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/init_battle.inc", void init_battle());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805B9F4.inc", void sub_0805B9F4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BA98.inc", void sub_0805BA98());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BAD4.inc", void sub_0805BAD4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BAF4.inc", void sub_0805BAF4());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BB14.inc", void sub_0805BB14());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BB34.inc", void sub_0805BB34());
extern "C" ASM_FUNC("asm/non_matching/code_0803D59C/sub_0805BC8C.inc", void sub_0805BC8C());
