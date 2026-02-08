// Auto-generated source file
#include "enums.h"
#include "functions.h"
#include "gba/io_reg.h"
#include "gba/syscall.h"
#include "global.h"
#include "overworld/script.h"
#include "structs.h"

extern StatMeter gHPStatMeters[5];
extern StatMeter gPPStatMeters[6];
extern Object gUnknown_0200C3C8[];
extern Direction gDirectionTable[];
extern struct_200D818 gUnknown_0200D818[];
extern u16 gUnknown_020041EA;
extern const u16 gSectorToDirection[];
extern const u16 gSectorToDirectionExt[];
extern const DebugModeFunc gDebugFuncTable[6];
extern u8 gUnknown_080C1FF8[];
extern u8 gUnknown_080C1FE8[];
extern DebugInitFunc gDebugMenuInitTable[];

extern "C" void sub_080012BC(void*, s32, s32, s32);
extern "C" Object* get_obj_direct(u16 idx);
extern "C" void sub_0803B860();
extern "C" u16 sub_08002FE8();
extern "C" s32 sub_080222C0(s32, u16*, u16);
extern "C" u16 get_misctext_len(u16);
extern "C" CharStats* get_char_stats(u16);
extern "C" void initStatMeters(CharStats*, u16);
extern "C" StatMeter* getStatMeter(u16 playerID, u16 statType);
extern "C" struct_200D818* sub_0802B874(u16);
extern "C" void sub_08029428(CharStats*, struct_200D818*);
extern "C" void sub_080294DC(CharStats*, struct_200D818*);
extern "C" void sub_0802941C(CharStats*, struct_200D818*);
extern "C" void breakIntoDigits(u16*, u32, u16, u16);
extern "C" StatMeter* getStatMeter(u16, u16);
extern "C" CharStats* get_char_stats(u16);
extern "C" u16 tickStatMeter(StatMeter*);
extern "C" void sub_08030550(Object*, u16, u32);
extern "C" u16 getPrevDirection(u16);
extern "C" u16 directionToTargetByID(u16, u16);
extern "C" void updateObjDirection(u16, u16);
extern "C" void sub_08034EB8(Object*);
extern "C" u16 sub_0801A7CC(s16, u32, s32);
extern "C" u16 sub_0801A868(s16, u32, s32);
extern "C" void sub_08034BAC();
extern "C" void play_sound(u16);
extern "C" void sub_08003BA8(s32);
extern "C" s16 sub_08003D14(u16);
extern "C" void sub_0803B278();
extern "C" void sub_080381B0(MenuState*);
extern "C" void sub_0800A480(void*);
extern "C" void navigateWrapping2DMenu(u16*, InputState*, u16, u16, u16, u16);
extern "C" void sub_0800A1C4(void*);
extern "C" void handleDebugPage1(InputState*, DebugMenuState*);
extern "C" void debugChangeCurrentRoom(InputState*, DebugMenuState*);
extern "C" void sub_0803A458(InputState*, DebugMenuState*);
extern "C" void sub_08000D64(u16);
extern "C" void debugChangeMapCoords(InputState*, DebugMenuState*);
extern "C" void sub_0803B5C4();
extern "C" void sub_0803A844(InputState*, DebugMenuState*);

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021920.inc", u32 sub_08021920(u32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021930.inc", void sub_08021930());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021AFC.inc", void sub_08021AFC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021B64.inc", void sub_08021B64());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021BDC.inc", void sub_08021BDC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021DC4.inc", void sub_08021DC4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08021F40.inc", void sub_08021F40());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022024.inc", void sub_08022024());

extern "C" s32 sub_080220EC(s32 r0, s32 r1, s32 r2) {
    if ((r0 << 0x10) == 0xFFE00000) {
        return sub_080222C0(r2, &gUnknown_020041EA, get_misctext_len(6));
    }
    return r2;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022120.inc", void sub_08022120());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022194.inc", void sub_08022194());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080222C0.inc", s32 sub_080222C0(s32, u16*, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080222F8.inc", void sub_080222F8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022354.inc", void sub_08022354());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022368.inc", void sub_08022368());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080223F4.inc", void sub_080223F4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022474.inc", void sub_08022474());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/draw_ui_text.inc", void draw_ui_text());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802255C.inc", void sub_0802255C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080225B4.inc", void sub_080225B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802260C.inc", void sub_0802260C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022694.inc", void sub_08022694());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022710.inc", void sub_08022710());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080227BC.inc", void sub_080227BC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080229F0.inc", void sub_080229F0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022A18.inc", void sub_08022A18());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022E50.inc", void sub_08022E50());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022E8C.inc", void sub_08022E8C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022ED0.inc", void sub_08022ED0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022F14.inc", void sub_08022F14());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022F6C.inc", void sub_08022F6C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08022FE4.inc", void sub_08022FE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023054.inc", void sub_08023054());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080230C8.inc", void sub_080230C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023118.inc", void sub_08023118());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023148.inc", void sub_08023148());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802337C.inc", void sub_0802337C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080233C0.inc", void sub_080233C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023414.inc", void sub_08023414());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023490.inc", void sub_08023490());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023588.inc", void sub_08023588());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023890.inc", void sub_08023890());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023948.inc", void sub_08023948());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023E44.inc", void sub_08023E44());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023EF8.inc", void sub_08023EF8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023F4C.inc", void sub_08023F4C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08023FA8.inc", void sub_08023FA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802400C.inc", void sub_0802400C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802406C.inc", void sub_0802406C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024148.inc", void sub_08024148());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080242C4.inc", void sub_080242C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802443C.inc", void sub_0802443C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080244D4.inc", void sub_080244D4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024510.inc", void sub_08024510());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802454C.inc", void sub_0802454C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_6.inc", void nullsub_6());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802462C.inc", void sub_0802462C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024744.inc", void sub_08024744());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024874.inc", void sub_08024874());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080248D4.inc", void sub_080248D4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080249E8.inc", void sub_080249E8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024A74.inc", void sub_08024A74());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024B40.inc", void sub_08024B40());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024B9C.inc", void sub_08024B9C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024CC8.inc", void sub_08024CC8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024DCC.inc", void sub_08024DCC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024EEC.inc", void sub_08024EEC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08024F74.inc", void sub_08024F74());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802503C.inc", void sub_0802503C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080250B4.inc", void sub_080250B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025168.inc", void sub_08025168());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802519C.inc", void sub_0802519C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_68.inc", void nullsub_68());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080251DC.inc", void sub_080251DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080251F4.inc", void sub_080251F4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/object_interact.inc", void object_interact());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025620.inc", void sub_08025620());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025718.inc", void sub_08025718());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025918.inc", void sub_08025918());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080259D4.inc", void sub_080259D4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025A80.inc", void sub_08025A80());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025B3C.inc", void sub_08025B3C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025BF8.inc", void sub_08025BF8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025CB0.inc", void sub_08025CB0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025D64.inc", void sub_08025D64());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025E20.inc", void sub_08025E20());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025ED8.inc", void sub_08025ED8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08025F98.inc", void sub_08025F98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080260C8.inc", void sub_080260C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802610C.inc", void sub_0802610C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080261D0.inc", void sub_080261D0(Object*, s16, s32, s32, s32));

extern "C" void sub_080262F0() {
    gSomeBlend._1ed10_20 = 0;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802630C.inc", void sub_0802630C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080263A4.inc", void sub_080263A4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026470.inc", void sub_08026470());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026508.inc", void sub_08026508());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026610.inc", void sub_08026610());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802665C.inc", void sub_0802665C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026724.inc", void sub_08026724());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026760.inc", void sub_08026760());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802691C.inc", void sub_0802691C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026938.inc", void sub_08026938());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080269AC.inc", void sub_080269AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026AF8.inc", void sub_08026AF8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026BCC.inc", void sub_08026BCC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026C28.inc", void sub_08026C28());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026CD0.inc", void sub_08026CD0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026CE4.inc", void sub_08026CE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026DA8.inc", void sub_08026DA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026DE0.inc", void sub_08026DE0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08026E3C.inc", void sub_08026E3C());

extern "C" u16 getDirectionIndex(u16 buttonsPressed) {
    for (u16 i = 0; i < 9; i++) {
        if (gDirectionTable[i].buttonCombo == (buttonsPressed & DPAD_ANY)) {
            return i;
        }
    }

    return 0;
}

extern "C" void getVelocity(u16 index, s16* xVel, s16* yVel) {
    *xVel = gDirectionTable[index].xVel;
    *yVel = gDirectionTable[index].yVel;
}

extern "C" u16 getPrevDirection(u16 index) {
    return gDirectionTable[index].previous;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080270C8.inc", void sub_080270C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080270D8.inc", void sub_080270D8());

extern "C" u16 getOppositeDirection(u16 index) {
    return gDirectionTable[index].opposite;
}

extern "C" u16 get90DegreeTurn(u16 index, u16 unk) {
    if (unk << 0x10 < 0)
        unk = sub_08002FE8() & 1;

    if (unk == 0)
        return gDirectionTable[index].turnLeft90;

    return gDirectionTable[index].turnRight90;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027138.inc", void sub_08027138());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027164.inc", void sub_08027164());

extern "C" Object* get_obj(s32 idx) {
    if (idx >= 0x19) {
        idx -= 0x19;

        if (gGame._82b9[0xc9] & 8) {
            idx += gGame._82b9[0xb7] + ~gGame._82b9[0xba] + 5;
        } else {
            idx += gGame._82b9[0xb7] - gGame._82b9[0xba] + 5;
        }

        if (idx > 0x18) {
            return NULL;
        }

    } else if (idx == -1) {
        if (gGame._8450 == -1) {
            return NULL;
        }
        idx = gGame._8450;
    } else if (idx == -2) {
        idx = 0;
    } else if (idx == -3) {
        return NULL;
    } else if ((u32)idx <= 4 && idx >= gGame.party_count) {
        return NULL;
    }

    return get_obj_direct((u16)idx);
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802724C.inc", void sub_0802724C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080272F4.inc", void sub_080272F4(u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080274AC.inc", void sub_080274AC(s32, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027680.inc", void sub_08027680());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802773C.inc", void sub_0802773C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802781C.inc", void sub_0802781C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027904.inc", void sub_08027904());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027940.inc", void sub_08027940());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080279AC.inc", void sub_080279AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027A28.inc", void sub_08027A28());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027AE0.inc", void sub_08027AE0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027B84.inc", void sub_08027B84());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027BD0.inc", void sub_08027BD0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027C20.inc", void sub_08027C20());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027C40.inc", void sub_08027C40());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027C98.inc", void sub_08027C98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027CD8.inc", void sub_08027CD8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027D1C.inc", void sub_08027D1C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027DC4.inc", void sub_08027DC4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027DE4.inc", void sub_08027DE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027DF4.inc", void sub_08027DF4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027E0C.inc", void sub_08027E0C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027E60.inc", void* sub_08027E60());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027E74.inc", void sub_08027E74());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027EF8.inc", void sub_08027EF8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027F38.inc", void sub_08027F38());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027F70.inc", void sub_08027F70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027FB8.inc", void sub_08027FB8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08027FD8.inc", void sub_08027FD8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028020.inc", void sub_08028020());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028040.inc", void sub_08028040());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028080.inc", void sub_08028080());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028264.inc", void sub_08028264());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028780.inc", void sub_08028780());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028C0C.inc", void sub_08028C0C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08028C70.inc", void sub_08028C70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029054.inc", void sub_08029054());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029078.inc", void sub_08029078());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029350.inc", void sub_08029350());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080293BC.inc", void sub_080293BC());

extern "C" void sub_080293C8() {
    for (u16 i = 0; i < gGame.party_count; i++) {
        CharStats* stats = get_char_stats(i);
        struct_200D818* unk = sub_0802B874(i);
        sub_0802941C(stats, unk);
        sub_080294DC(stats, unk);
        initStatMeters(stats, i);
    }
}

extern "C" void sub_0802941C(CharStats* stats, struct_200D818* unk) {
    sub_08029428(stats, unk);
}

extern "C" void sub_08029428(CharStats* stats, struct_200D818* unk) {
    unk->hp = 0;
    unk->pp = 0;
    unk->offense = 0;
    unk->defense = 0;
    unk->iq = 0;
    unk->speed = 0;
    unk->kindness = 0;

    for (u16 i = 0; i < 4; i++) {
        unk->hp += gGoodsInfo[stats->equipment[i]].hp_mod;
        unk->pp += gGoodsInfo[stats->equipment[i]].pp_mod;
        unk->offense += gGoodsInfo[stats->equipment[i]].off_mod;
        unk->defense += gGoodsInfo[stats->equipment[i]].def_mod;
        unk->iq += gGoodsInfo[stats->equipment[i]].iq_mod;
        unk->speed += gGoodsInfo[stats->equipment[i]].spd_mod;
        unk->kindness += gGoodsInfo[stats->equipment[i]].kindness_mod;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080294DC.inc", void sub_080294DC(CharStats*, struct_200D818*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/initStatMeters.inc", void initStatMeters(CharStats*, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029684.inc", void sub_08029684());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080296E4.inc", void sub_080296E4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029B18.inc", void sub_08029B18());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029CAC.inc", void sub_08029CAC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029D10.inc", void sub_08029D10());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029D9C.inc", void sub_08029D9C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029E18.inc", void sub_08029E18());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029EF0.inc", void sub_08029EF0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08029FC8.inc", void sub_08029FC8());

extern "C" void add_dp_to_pocket(s32 amount) {
    u32 newAmount = gSave.dp_pocket + amount;
    if (newAmount > 999999) {
        gSave.dp_pocket = 999999;
        return;
    }
    gSave.dp_pocket = newAmount;
}

extern "C" void add_dp_to_bank(u32 amount) {
    u32 newAmount = gSave.dp_bank + amount;
    if (newAmount > 999999) {
        gSave.dp_bank = 999999;
        return;
    }
    gSave.dp_bank = newAmount;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/withdraw_dp.inc", void withdraw_dp());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/deposit_dp.inc", void deposit_dp());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/update_key_item_quantity.inc", void update_key_item_quantity(u32, u32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A124.inc", u16 sub_0802A124(u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A180.inc", void sub_0802A180());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A264.inc", void sub_0802A264());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A310.inc", void sub_0802A310());

extern "C" u16 heldItemQty(CharStats* stats, u16 item) {
    u16 count = 0;

    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == item) {
            count++;
        }
    }

    return count;
}

extern "C" s16 heldItemIndex(CharStats* stats, u16 item) {
    for (u16 i = 0; i < 0x10; i++) {
        if (stats->inventory[i] == item) {
            return i;
        }
    }

    return -1;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A42C.inc", void sub_0802A42C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A454.inc", void sub_0802A454());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A49C.inc", void sub_0802A49C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A574.inc", void sub_0802A574());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A60C.inc", void sub_0802A60C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A630.inc", void sub_0802A630());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A670.inc", void sub_0802A670());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A74C.inc", void sub_0802A74C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A7F8.inc", void sub_0802A7F8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A8D4.inc", void sub_0802A8D4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A98C.inc", u16 sub_0802A98C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802A9B4.inc", void sub_0802A9B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802AA78.inc", void sub_0802AA78());

extern "C" void updateStatMeter(u16 playerID, u16 statMeterType, s16 delta) {
    s32 proposedValue;

    if (delta == 0) {
        return;
    }

    CharStats* stats = get_char_stats(playerID);
    StatMeter* meter = getStatMeter(playerID, statMeterType);

    switch (statMeterType) {
    case HP:
        if (meter->target != meter->prevTarget) {
            return;
        }
        proposedValue = stats->curHP + delta;
        if (proposedValue <= 0) {
            if (stats->curHP == 1) {
                return;
            }
            meter->target = 1;
        } else {
            if (proposedValue > 999) {
                meter->target = 999;
            } else {
                meter->target = stats->curHP + delta;
            }
        }
        meter->current = stats->curHP;
        break;
    case PP:
        if (meter->target != meter->prevTarget) {
            return;
        }
        proposedValue = stats->curPP + delta;
        if (proposedValue <= 0) {
            if (stats->curPP == 1) {
                return;
            }
            meter->target = 1;
        } else {
            if (proposedValue > 999) {
                meter->target = 999;
            } else {
                meter->target = stats->curPP + delta;
            }
        }
        meter->current = stats->curPP;
        break;
    default:
        return;
    }

    for (u16 i = 0; i < 3; i++) {
        meter->timers[i] = 0;
    }

    if (meter->current <= meter->target) {
        return;
    }

    meter->timers[2] = 7;
    if (meter->digits[2] != 0) {
        meter->digits[2]--;
        return;
    }

    meter->digits[2] = 9;
    if (meter->digits[1] != 0) {
        meter->digits[1]--;
        meter->timers[1] = 7;
        return;
    }

    meter->digits[1] = 9;
    if (meter->digits[0] != 0) {
        meter->digits[0]--;
        meter->timers[0] = 7;
        return;
    }
}

extern "C" void sub_0802ABCC() {
    u16 digits[3];

    for (u16 i = 0; i < gGame.party_count; i++) {
        CharStats* stats = get_char_stats(i);
        if (stats->charNo != 0 && isCharIdOverworldPlayable(stats->charNo)) {
            stats->curHP = tickStatMeter(getStatMeter(i, HP));
            StatMeter* meter = getStatMeter(i, PP);
            if (meter->current != meter->target) {
                breakIntoDigits(digits, meter->target, 0, 3);

                for (u16 j = 0; j < 3; j++) {
                    meter->digits[j] = digits[j];
                    meter->timers[j] = 0;
                }

                meter->target = meter->target;  // ???
                meter->current = meter->target;
                stats->curPP = meter->target;
            }
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/tickStatMeter.inc", u16 tickStatMeter(StatMeter*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802AD88.inc", void sub_0802AD88());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/set_ailment.inc", void set_ailment());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802AF24.inc", void sub_0802AF24());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802AF88.inc", u32 sub_0802AF88(s16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802AFBC.inc", void sub_0802AFBC(s16));

extern "C" void heal_hp(u16 characterID, s16 amount) {
    CharStats* stats = get_char_stats(characterID);
    struct_200D818* s = sub_0802B874(characterID);
    Object* obj = get_obj_direct(characterID);

    obj->_cc_10 = 0;
    stats->curHP += amount;

    if (stats->curHP > s->_8) {
        stats->curHP = s->_8;
    } else if (stats->curHP < 1) {
        stats->curHP = 1;
    }

    initStatMeters(stats, characterID);
}

extern "C" void restore_pp(u16 playerID, s16 amount) {
    CharStats* stats = get_char_stats(playerID);
    struct_200D818* s = sub_0802B874(playerID);

    stats->curPP += amount;

    if (stats->curPP > s->_10) {
        stats->curPP = s->_10;
    } else if (stats->curPP < 0) {
        stats->curPP = 0;
    }

    initStatMeters(stats, playerID);
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B094.inc", void sub_0802B094(u16, s16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B0D0.inc", void sub_0802B0D0(u32, u32, s16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B188.inc", void sub_0802B188());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B370.inc", void sub_0802B370());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B4D8.inc", void sub_0802B4D8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B53C.inc", void sub_0802B53C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B57C.inc", void sub_0802B57C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B5D8.inc", void sub_0802B5D8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B844.inc", void sub_0802B844());

extern "C" CharStats* get_char_stats(u16 idx) {
    return &gCharStats[gSave.party[idx]];
}

extern "C" struct_200D818* sub_0802B874(u16 idx) {
    return &gUnknown_0200D818[idx];
}

extern "C" StatMeter* getStatMeter(u16 playerID, u16 statMeterType) {
    switch (statMeterType) {
    case HP:
        return &gHPStatMeters[playerID];
    case PP:
        return &gPPStatMeters[playerID];
    default:
        return NULL;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B8C4.inc", u32 sub_0802B8C4(u32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B8F4.inc", void sub_0802B8F4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B924.inc", void sub_0802B924());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B954.inc", u32 sub_0802B954(u32));

extern "C" bool is_equippable(u16 idx) {
    u32 type = gGoodsInfo[idx].item_type;
    if (type == Weapon || type == BodyArmor || type == Headgear || type == Armgear) {
        return true;
    }
    return false;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802B9E8.inc", void sub_0802B9E8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BA28.inc", void sub_0802BA28());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BA68.inc", void sub_0802BA68());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BA78.inc", void sub_0802BA78());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BA98.inc", void sub_0802BA98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BB04.inc", void sub_0802BB04());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BB64.inc", void sub_0802BB64());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BBC8.inc", void sub_0802BBC8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802BBE4.inc", void sub_0802BBE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802C3F8.inc", void sub_0802C3F8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802C4A0.inc", void sub_0802C4A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802C8A8.inc", void sub_0802C8A8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802CED4.inc", void sub_0802CED4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802CF14.inc", void sub_0802CF14());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D294.inc", void sub_0802D294());

extern "C" void sub_0802D3F8() {
    gGame._8372 = gGame._8371;
    gGame._8371 = 0;

    for (u16 i = 0; i < gGame._8370; i++) {
        if ((s8)get_obj_direct(i + 5)->_bc_0 != 0) {
            gGame._8371++;
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D458.inc", void sub_0802D458());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D5D0.inc", void sub_0802D5D0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D618.inc", void sub_0802D618());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D660.inc", void sub_0802D660());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D6A0.inc", void sub_0802D6A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802D790.inc", void sub_0802D790());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/updateObjectPosition.inc", void updateObjectPosition());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DA58.inc", void sub_0802DA58());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DB9C.inc", void sub_0802DB9C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/enemy_move.inc", void enemy_move());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DD04.inc", void sub_0802DD04());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DDA0.inc", void sub_0802DDA0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DE5C.inc", void sub_0802DE5C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DEB0.inc", void sub_0802DEB0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DF14.inc", void sub_0802DF14());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DF48.inc", void sub_0802DF48());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DF94.inc", void sub_0802DF94());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DFC0.inc", void sub_0802DFC0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802DFE4.inc", void sub_0802DFE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E048.inc", void sub_0802E048());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E070.inc", void sub_0802E070());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E07C.inc", void sub_0802E07C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E0A4.inc", void sub_0802E0A4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E0C8.inc", void sub_0802E0C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E100.inc", void sub_0802E100());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E104.inc", void sub_0802E104());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E13C.inc", void sub_0802E13C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E200.inc", void sub_0802E200());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E25C.inc", void sub_0802E25C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E2BC.inc", void sub_0802E2BC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E340.inc", void sub_0802E340());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E394.inc", void sub_0802E394());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E400.inc", void sub_0802E400());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E410.inc", void sub_0802E410());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E420.inc", void sub_0802E420());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E43C.inc", void sub_0802E43C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E458.inc", void sub_0802E458());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E474.inc", void sub_0802E474());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E4C4.inc", void sub_0802E4C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E530.inc", void sub_0802E530());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E580.inc", void sub_0802E580());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E58C.inc", void sub_0802E58C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E5F4.inc", void sub_0802E5F4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E630.inc", void sub_0802E630());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E64C.inc", void sub_0802E64C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E668.inc", void sub_0802E668());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E684.inc", void sub_0802E684());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E6A0.inc", void sub_0802E6A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E6BC.inc", void sub_0802E6BC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E728.inc", void sub_0802E728());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E7C0.inc", void sub_0802E7C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E830.inc", void sub_0802E830());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E884.inc", void sub_0802E884());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E9C8.inc", void sub_0802E9C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802E9E8.inc", void sub_0802E9E8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EA04.inc", void sub_0802EA04());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EB5C.inc", void sub_0802EB5C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EBAC.inc", void sub_0802EBAC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EBD4.inc", void sub_0802EBD4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EBE4.inc", void sub_0802EBE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EC3C.inc", void sub_0802EC3C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802ECCC.inc", void sub_0802ECCC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802ECF4.inc", void sub_0802ECF4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802ED2C.inc", void sub_0802ED2C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802ED5C.inc", void sub_0802ED5C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802ED90.inc", void sub_0802ED90());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802EDBC.inc", void sub_0802EDBC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F02C.inc", void sub_0802F02C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F200.inc", void sub_0802F200());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F234.inc", void sub_0802F234());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F2B4.inc", void sub_0802F2B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F2CC.inc", void sub_0802F2CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F304.inc", void sub_0802F304());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F348.inc", void sub_0802F348());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F390.inc", void sub_0802F390());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F3B8.inc", void sub_0802F3B8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F650.inc", void sub_0802F650());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F774.inc", void sub_0802F774());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802F8A0.inc", void sub_0802F8A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802FA9C.inc", void sub_0802FA9C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802FC98.inc", void sub_0802FC98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802FDF8.inc", void sub_0802FDF8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0802FF90.inc", void sub_0802FF90());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803016C.inc", void sub_0803016C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030170.inc", void sub_08030170());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030174.inc", void sub_08030174());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030178.inc", void sub_08030178());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803017C.inc", void sub_0803017C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030180.inc", void sub_08030180());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030190.inc", void sub_08030190());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030354.inc", void sub_08030354());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803042C.inc", void sub_0803042C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803050C.inc", void sub_0803050C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030550.inc", void sub_08030550(Object*, u16, u32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080306C4.inc", void sub_080306C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/draw_sprites.inc", void draw_sprites());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080307DC.inc", void sub_080307DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030810.inc", void sub_08030810());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803092C.inc", void sub_0803092C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030A00.inc", void sub_08030A00());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030B70.inc", void sub_08030B70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08030D34.inc", void sub_08030D34());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031480.inc", void sub_08031480());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031730.inc", void sub_08031730());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080318A4.inc", void sub_080318A4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031970.inc", void sub_08031970());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031AB8.inc", void sub_08031AB8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031C34.inc", void sub_08031C34());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031DE0.inc", void sub_08031DE0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08031FCC.inc", void sub_08031FCC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032128.inc", void sub_08032128());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080322C0.inc", void sub_080322C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080322CC.inc", void sub_080322CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080322D8.inc", void sub_080322D8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080324D0.inc", void sub_080324D0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803253C.inc", void sub_0803253C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032748.inc", void sub_08032748());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032824.inc", void sub_08032824());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032888.inc", void sub_08032888());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032958.inc", void sub_08032958());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032A44.inc", void sub_08032A44());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032AA8.inc", void sub_08032AA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032ADC.inc", void sub_08032ADC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032B34.inc", void sub_08032B34());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032CC8.inc", void sub_08032CC8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032DAC.inc", void sub_08032DAC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032DF4.inc", void sub_08032DF4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032E20.inc", void sub_08032E20());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032EDC.inc", void sub_08032EDC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032F5C.inc", void sub_08032F5C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08032F8C.inc", void sub_08032F8C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/update_oam.inc", void update_oam());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080330F0.inc", void sub_080330F0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803327C.inc", void sub_0803327C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803329C.inc", void sub_0803329C());

extern "C" void sub_080332AC(u16 id, u16 param2, u16 param3) {
    if (param2 >= 13 || param3 >= 8)
        return;

    Object* o = get_obj_direct(id);

    u16 sel;

    int flag = o->_cc_10;
    if (flag) {
        switch (param2) {
        case 0:
        case 9:
            sel = o->direction + 0x50;
            break;
        default:
            sel = o->direction + 0x58;
            break;
        }
    } else {
        s8 m = o->_74[param2];
        int tmp;
        if (m != -1) {
            if (m >= 13) {
                tmp = m;
            } else {
                tmp = param3 + o->_74[param2] * 8;
            }
        } else {
            tmp = param3 + param2 * 8;
        }
        sel = tmp;
    }

    if (o->_8b != sel) {
        o->_8b = sel;
        o->_8c = 0xFFFF;
        o->_92[0] = 0;
        o->_bf_80 = 0;
        o->_ca_8 = 0;
        o->_cc_8 = 0;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033374.inc", void sub_08033374(u32, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033414.inc", void sub_08033414(u8));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033460.inc", void sub_08033460());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033484.inc", void sub_08033484());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803349C.inc", void sub_0803349C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080334B4.inc", void sub_080334B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080334D0.inc", void sub_080334D0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033548.inc", void sub_08033548());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033578.inc", void sub_08033578());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080335F0.inc", void sub_080335F0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033620.inc", void sub_08033620());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080337A8.inc", void sub_080337A8(u8, u16));

extern "C" void sub_080337F0(u16 indexA, u16 indexB, s16 unk) {
    Object* objA = get_obj_direct(indexA);
    Object* objB = get_obj_direct(indexB);

    objA->_cb_1 = 1;
    objA->_91 = indexB;

    if (unk == -1) {
        if (objA->_88 != objB->_88) {
            sub_08030550(objA, objB->_88, 1);
        }
    } else {
        sub_08030550(objA, unk, 1);
    }

    gGame._1_40 = 1;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033868.inc", void sub_08033868(u8, u8, s32));

extern "C" void faceNearTarget(u16 indexA, u16 indexB) {
    updateObjDirection(indexA, getPrevDirection(directionToTargetByID(indexA, indexB)));
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080338D8.inc", void sub_080338D8(u8, s32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033948.inc", void sub_08033948(u16, s16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033A54.inc", void sub_08033A54(u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033A8C.inc", void sub_08033A8C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033ABC.inc", void sub_08033ABC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033AEC.inc", void sub_08033AEC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033B20.inc", void sub_08033B20());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033B58.inc", void sub_08033B58(u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033B90.inc", void sub_08033B90());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033BCC.inc", void sub_08033BCC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033C14.inc", void sub_08033C14());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033C44.inc", void sub_08033C44());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033CA0.inc", void sub_08033CA0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033CFC.inc", void sub_08033CFC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033DA8.inc", void sub_08033DA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033E70.inc", void sub_08033E70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08033FEC.inc", void sub_08033FEC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080340F8.inc", void sub_080340F8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034158.inc", void sub_08034158());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034260.inc", void sub_08034260());

extern "C" void sub_08034288(void) {
    s32 soundID = SFX_NULL;

    switch ((u16)get_shop_flag(0x41)) {
    case 0:
        soundID = (s8)gGame._82b6_20 == 0 ? 0x31E : 0x31F;
        break;
    case 1:
    case 2:
    case 4:
        if ((s8)gGame._82b6_20 == 0) {
            sub_08003BA8(5);
            return;
        }
        soundID = 0x6A3;
        break;
    case 3:
        soundID = (s8)gGame._82b6_20 == 0 ? 0x576 : 0x577;
        break;
    default:
        return;
    }

    if (soundID == SFX_NULL)
        return;

    if (sub_08003D14(5) != soundID)
        play_sound(soundID);
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034348.inc", void sub_08034348());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080343B8.inc", void sub_080343B8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080344CC.inc", void sub_080344CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080345AC.inc", void sub_080345AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034608.inc", void sub_08034608());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080346F8.inc", void sub_080346F8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803476C.inc", void sub_0803476C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080347B8.inc", void sub_080347B8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803496C.inc", void sub_0803496C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080349C0.inc", void sub_080349C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034A10.inc", void sub_08034A10());

extern "C" void walkObjectTowardPosition(s16 dx, s16 dy) {
    s16 xVel, yVel;

    if (dx == 0 && dy == 0) {
        return;
    }

    Object* obj = get_obj_direct(0);

    if (dx != 0) {
        xVel = dx > 0 ? 1 : -1;
    } else {
        xVel = 0;
    }

    if (dy != 0) {
        yVel = dy > 0 ? 1 : -1;
    } else {
        yVel = 0;
    }

    s16 greaterAxis = abs(dx) <= abs(dy) ? dy : dx;
    u16 numSteps = abs(greaterAxis);

    for (u16 i = 0; i < numSteps; i++) {
        sub_08034BAC();

        if (obj->speed) {
            obj->xpos += xVel * obj->speed->y;  // ???
            obj->ypos += yVel * obj->speed->y;
        } else {
            obj->xpos += xVel * 0x10;
            obj->ypos += yVel * 0x10;
        }

        obj->xpos = sub_0801A7CC(obj->xpos, obj->_bd_2, 1);
        obj->ypos = sub_0801A868(obj->ypos, obj->_bd_2, 1);
        sub_08034EB8(obj);
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034BAC.inc", void sub_08034BAC());

extern "C" void sub_08034CE8(Object* obj, s16 x, s16 y) {
    s16 xVel, yVel;

    if (x == 0) {
        if (y == 0)
            return;

        xVel = 0;
    } else {
        xVel = x > 0 ? 1 : -1;
    }

    if (y != 0) {
        yVel = y > 0 ? 1 : -1;
    } else {
        yVel = 0;
    }

    s16 greaterAxis = abs(x) <= abs(y) ? y : x;
    u16 numSteps = abs(greaterAxis);

    for (u16 i = 0; i < numSteps; i++) {
        obj->xpos += obj->speed->y * xVel;
        obj->ypos += obj->speed->y * yVel;
        sub_08034EB8(obj);
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034DA8.inc", void sub_08034DA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034EB8.inc", void sub_08034EB8(Object*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034FC8.inc", void sub_08034FC8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034FE4.inc", void sub_08034FE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08034FFC.inc", void sub_08034FFC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035114.inc", void sub_08035114());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035138.inc", Object* sub_08035138(u8));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035170.inc", void sub_08035170());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035298.inc", void sub_08035298());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035384.inc", void sub_08035384());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035414.inc", void sub_08035414());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080354CC.inc", void sub_080354CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080355AC.inc", void sub_080355AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080355CC.inc", void sub_080355CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035600.inc", void sub_08035600());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080357D0.inc", void sub_080357D0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035820.inc", void sub_08035820());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035940.inc", void sub_08035940());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080359DC.inc", void sub_080359DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035A88.inc", void sub_08035A88());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035AEC.inc", void sub_08035AEC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035B78.inc", void sub_08035B78());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035C0C.inc", u16 sub_08035C0C(u32, u32, u32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035C64.inc", void sub_08035C64());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035C8C.inc", void sub_08035C8C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035D40.inc", void sub_08035D40(Object*, u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035DFC.inc", void sub_08035DFC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035E98.inc", void sub_08035E98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035F4C.inc", void sub_08035F4C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035FBC.inc", void sub_08035FBC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08035FE4.inc", void sub_08035FE4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036030.inc", void sub_08036030());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036048.inc", void sub_08036048());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080360E0.inc", void sub_080360E0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080361B0.inc", void sub_080361B0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080361DC.inc", void sub_080361DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036238.inc", void sub_08036238());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080362C0.inc", void sub_080362C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036338.inc", void sub_08036338(Object*, s32));

extern "C" void sub_08036388(Object* obj) {
    if (obj->_3c != 0) {
        sub_0803B860();
        obj->_3c = 0;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080363A0.inc", void sub_080363A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036450.inc", void sub_08036450());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036480.inc", void sub_08036480());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080364B8.inc", void sub_080364B8());

extern "C" Object* sub_080365EC(u16 arg0, u16 arg1) {
    for (u16 i = 0; i < gGame._8370; i++) {
        Object* obj = get_obj_direct(i + 5);
        if (obj->character != arg0 && (s8)obj->_bc_0 == 0 && obj->_88 == arg1) {
            return obj;
        }
    }

    return NULL;
}

extern "C" u16 coarseDirectionToTarget(u16 indexA, u16 indexB) {
    u16 direction;

    Object* objA = get_obj_direct(indexA);
    Object* objB = get_obj_direct(indexB);

    u16 deltaX = abs(objA->xpos - objB->xpos);
    u16 deltaY = abs(objA->ypos - objB->ypos);

    if (deltaX > deltaY) {
        if (objA->xpos > objB->xpos) {
            direction = DIR_DOWN_LEFT;
        } else {
            direction = DIR_UP_RIGHT;
        }
    } else {
        if (objA->ypos > objB->ypos) {
            direction = DIR_UP_LEFT;
        } else {
            direction = DIR_NONE;
        }
    }

    return direction;
}

extern "C" u16 directionToTargetByID(u16 sourceID, u16 targetID) {
    if (sourceID == targetID) {
        return DIR_NONE;
    }

    Object* source = get_obj_direct(sourceID);
    Object* target = get_obj_direct(targetID);
    u16 theta = ArcTan2(source->xpos - target->xpos, source->ypos - target->ypos);

    for (u16 sectorEnd = _22_5_DEGREES, i = 0; i < 8; sectorEnd += _45_DEGREES, i++) {
        if (theta < sectorEnd) {
            return gSectorToDirection[i];
        }
    }

    return DIR_LEFT;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036734.inc", void sub_08036734());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803677C.inc", void sub_0803677C());

extern "C" u16 directionToTarget(Object* source, Object* target) {
    u16 theta = ArcTan2(source->xpos - target->xpos, source->ypos - target->ypos);

    for (u16 sectorEnd = _22_5_DEGREES, i = 0; i < 8; sectorEnd += _45_DEGREES, i++) {
        if (theta < sectorEnd) {
            return gSectorToDirectionExt[i];
        }
    }

    return DIR_LEFT;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036830.inc", void sub_08036830());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036864.inc", void sub_08036864());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036904.inc", void sub_08036904());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036960.inc", u32 sub_08036960(Object*, u8));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803699C.inc", void sub_0803699C());

extern "C" void updateObjDirection(u16 index, u16 direction) {
    Object* obj = get_obj_direct(index);
    if ((s8)obj->_cc_10 == 0) {
        obj->direction = direction;
        sub_080332AC(index, obj->_8b >> 3, direction);
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036A68.inc", void sub_08036A68());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036A90.inc", void sub_08036A90(u8, s32, s32, s32));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036B34.inc", void sub_08036B34());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036B6C.inc", void sub_08036B6C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036BA4.inc", void sub_08036BA4());

extern "C" Object* get_obj_direct(u16 id) {
    return &gUnknown_0200C3C8[id];
}

extern "C" void sub_08036BEC(Object* obj, Size* sz) {
    sz->w = obj->xpos >> 4;
    sz->h = obj->ypos >> 4;
}

extern "C" void sub_08036C00(u16 id, Size* sz) {
    Object* obj = get_obj_direct(id);
    sz->w = obj->xpos >> 4;
    sz->h = obj->ypos >> 4;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036C24.inc", void sub_08036C24());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036C68.inc", void sub_08036C68());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036C80.inc", void sub_08036C80());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036CA0.inc", void sub_08036CA0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036CC0.inc", void sub_08036CC0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036CD0.inc", void sub_08036CD0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036CE0.inc", void sub_08036CE0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036D00.inc", void sub_08036D00());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036D18.inc", void sub_08036D18());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036D3C.inc", struct C2Struct* sub_08036D3C(u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036D60.inc", void sub_08036D60());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036D78.inc", void sub_08036D78());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036DDC.inc", void sub_08036DDC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036DF4.inc", void sub_08036DF4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036E0C.inc", void sub_08036E0C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036E70.inc", void sub_08036E70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036E90.inc", void sub_08036E90());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08036EB8.inc", void sub_08036EB8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037020.inc", void sub_08037020());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037134.inc", void sub_08037134());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803720C.inc", void sub_0803720C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080372D8.inc", void sub_080372D8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037330.inc", void sub_08037330());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037530.inc", void sub_08037530());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037608.inc", void sub_08037608());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080376EC.inc", void sub_080376EC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037708.inc", void sub_08037708());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037794.inc", void sub_08037794());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080377B4.inc", void sub_080377B4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080377D0.inc", void sub_080377D0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803788C.inc", void sub_0803788C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803793C.inc", void sub_0803793C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037958.inc", void sub_08037958());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080379C0.inc", void sub_080379C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037A0C.inc", void sub_08037A0C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037A7C.inc", void sub_08037A7C());

extern "C" void sub_08037AF4() {
    gGame.mode = gSomeBlend._3532;
    gSomeBlend._35ba_1 = 0;
    gSomeBlend._3530 = 0;
    gSomeBlend._3531 = 2;
    sub_080012BC(&gSomeBlend._50, 0, 0, 1);
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037B4C.inc", void sub_08037B4C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037B94.inc", void sub_08037B94());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037C04.inc", void sub_08037C04());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037C54.inc", void sub_08037C54());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037C84.inc", void sub_08037C84());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/init_dp_transaction.inc", void init_dp_transaction());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037DB0.inc", void sub_08037DB0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037E54.inc", void sub_08037E54());

extern "C" void sub_08037ED0(InputState* input, MenuState* menu) {
    if (!gSomeBlend._35ba_8) {
        return;
    }

    if (menu->currentTab == 1) {
        if (input->justPressed == 1) {
            gGame._3_10 = 1;
        }
        return;
    }

    if (input->justPressed == A_BUTTON) {
        if (menu->cursorPos == 0) {
            menu->currentTab++;
            gSomeBlend._121b6_2 = 1;
            return;
        }
        play_sound(SFX_STAT_MENU_LEAVE);
        sub_080381B0(menu);
        sub_0800A480(gUnknown_080C1FF8);
        return;
    }

    if (input->justPressed & (B_BUTTON | START_BUTTON)) {
        play_sound(SFX_MENU_CANCEL);
        sub_080381B0(menu);
        sub_0800A480(gUnknown_080C1FF8);
        return;
    }

    navigateWrapping2DMenu(&menu->cursorPos, input, 2, 1, 2, 1);
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_41.inc", void nullsub_41());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08037F74.inc", void sub_08037F74());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080380C0.inc", void sub_080380C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803817C.inc", void sub_0803817C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080381B0.inc", void sub_080381B0(MenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080381DC.inc", void sub_080381DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038208.inc", void sub_08038208());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080382A0.inc", void sub_080382A0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_69.inc", void nullsub_69());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_70.inc", void nullsub_70());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080382F4.inc", void sub_080382F4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080383AC.inc", void sub_080383AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038414.inc", void sub_08038414());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038548.inc", void sub_08038548());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038600.inc", void sub_08038600());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080387D4.inc", void sub_080387D4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038A40.inc", void sub_08038A40());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038ABC.inc", void sub_08038ABC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038BDC.inc", void sub_08038BDC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038E80.inc", void sub_08038E80());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08038F90.inc", void sub_08038F90());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039038.inc", void sub_08039038());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803917C.inc", void sub_0803917C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080392C4.inc", void sub_080392C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080393D8.inc", void sub_080393D8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_080394F0.inc", void sub_080394F0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_71.inc", void nullsub_71());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_72.inc", void nullsub_72());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_73.inc", void nullsub_73());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_74.inc", void nullsub_74());

extern "C" u16 navigate1DMenu(u16* cursor, InputState* input, u16 cursorMin, u16 cursorMax,
                              u16 buttonUp, u16 buttonDown, vu16 canWrap) {
    if (input->pressed & buttonDown) {
        if (*cursor != cursorMin) {
            if (buttonDown == DPAD_UP) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor -= 1;
            return CURSOR_MOVED;
        }
        if (canWrap) {
            if (buttonDown == DPAD_UP) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor = cursorMax;
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }

    if (input->pressed & buttonUp) {
        if (*cursor != cursorMax) {
            if (buttonUp == DPAD_DOWN) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor += 1;
            return CURSOR_MOVED;
        }
        if (canWrap) {
            if (buttonUp == DPAD_DOWN) {
                play_sound(SFX_MENU_CURSOR_UD);
            } else {
                play_sound(SFX_MENU_CURSOR_LR);
            }
            *cursor = cursorMin;
            return CURSOR_MOVED;
        }
        return CURSOR_NO_CHANGE;
    }
    return CURSOR_NO_CHANGE;
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803960C.inc", void sub_0803960C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039694.inc", void sub_08039694());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039738.inc", u16 sub_08039738(u16*, InputState*, u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/navigateWrapping2DMenu.inc", void navigateWrapping2DMenu(u16*, InputState*, u16, u16, u16, u16));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039934.inc", void sub_08039934());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039A18.inc", void sub_08039A18());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039A74.inc", void sub_08039A74());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039B24.inc", void sub_08039B24());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039B5C.inc", void sub_08039B5C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039B88.inc", void sub_08039B88());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039C04.inc", void sub_08039C04());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_08039CDC.inc", void sub_08039CDC());

extern "C" void initCurrentDebugPage() {
    if (gSomeBlend.currentDebugPage < 6) {
        gDebugMenuInitTable[gSomeBlend.currentDebugPage](
            &gSomeBlend.debugMenuPages[gSomeBlend.currentDebugPage]);
    }
}

extern "C" void initDebugMenuPage1(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 0;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 3;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void initDebugMenuPage2(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 1;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 3;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void initDebugMenuPage3(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 2;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 3;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void initDebugMenuPage4(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 3;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 3;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void initDebugMenuPage5(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 4;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 3;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void initDebugMenuPage6(DebugMenuState* state) {
    gSomeBlend.currentDebugPage = 5;
    state->itemIndex = 0;
    state->subItemIndex = 0;
    state->numItems = 2;
    gSomeBlend._360e_1 = 1;
    gSomeBlend._360e_2 = 1;
}

extern "C" void mode_debug_menu(InputState* input) {
    if (gSomeBlend._3668_4 == 1) {
        gSomeBlend._3668_2 = 1;
    } else {
        gSomeBlend._3668_2 = input->gotInput;
    }

    if (gSomeBlend._3668_2 && gSomeBlend.currentDebugPage < 6) {
        gDebugFuncTable[gSomeBlend.currentDebugPage](
            input, &gSomeBlend.debugMenuPages[gSomeBlend.currentDebugPage]);
    }

    if (gSomeBlend._3668_8 == 1) {
        gSomeBlend._3668_8 = 0;
        return;
    }

    if (gSomeBlend._3668_10 == 1) {
        gSomeBlend._3668_10 = 0;
        sub_0803B278();
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage1.inc", void debugMenuPage1());

extern "C" void handleDebugPage1(InputState* input, DebugMenuState* state) {
    switch (state->itemIndex) {
    case 0:
        debugChangeCurrentRoom(input, state);
        break;
    case 1:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.collisionEnabled ^= 1;
        break;
    case 2:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.encountersEnabled ^= 1;
        break;
    }
}

extern "C" void debugChangeCurrentRoom(InputState* input, DebugMenuState* state) {
    u16 changeAmt;

    if (state->itemIndex != 0) {
        return;
    }

    gSomeBlend._3668_10 = 1;

    if (input->pressed & L_BUTTON) {
        changeAmt = 10;
    } else if (input->pressed & R_BUTTON) {
        changeAmt = 100;
    } else {
        changeAmt = 1;
    }

    if (input->pressed & A_BUTTON) {
        play_sound(SFX_MENU_SELECT);
        gSomeBlend.currentRoomID += changeAmt;
        if (gSomeBlend.currentRoomID > 999) {
            gSomeBlend.currentRoomID = 1;
        }
        return;
    }

    if (input->pressed & B_BUTTON) {
        play_sound(SFX_MENU_SELECT);
        if (gSomeBlend.currentRoomID >= changeAmt) {
            gSomeBlend.currentRoomID -= changeAmt;
            if (gSomeBlend.currentRoomID == 0) {
                gSomeBlend.currentRoomID = 999;
            }
        } else {
            gSomeBlend.currentRoomID = 999;
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage2.inc", void debugMenuPage2());

extern "C" void handleDebugPage2(InputState* input, DebugMenuState* state) {
    switch (state->itemIndex) {
    case 0:
        sub_0803A458(input, state);
        break;
    case 1:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.obstacleEvasionEnabled ^= 1;
        break;
    case 2:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.displayProcessLoadEnabled ^= 1;
        break;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803A458.inc", void sub_0803A458(InputState*, DebugMenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage3.inc", void debugMenuPage3());

extern "C" void handleDebugPage3(InputState* input, DebugMenuState* state) {
    switch (state->itemIndex) {
    case 0:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.gammaCorrectionEnabled ^= 1;
        break;
    case 1:
        play_sound(SFX_MENU_SELECT);
        gSomeBlend._3668_10 = 1;
        gGame.gbPlayerModeEnabled ^= 1;
        sub_08000D64(gGame.gbPlayerModeEnabled);
        sub_0803B5C4();
        break;
    case 2:
        debugChangeMapCoords(input, state);
        break;
    }
}

extern "C" void debugChangeMapCoords(InputState* input, DebugMenuState* state) {
    u16 changeAmt;

    if (state->itemIndex != 2) {
        return;
    }

    if (input->pressed & L_BUTTON) {
        changeAmt = 10;
    } else if (input->pressed & R_BUTTON) {
        changeAmt = 100;
    } else {
        changeAmt = 1;
    }

    if (input->pressed & A_BUTTON) {
        play_sound(SFX_MENU_SELECT);
        switch (state->subItemIndex) {
        case 0:
            gSomeBlend.mapTopLeftX += changeAmt;
            break;
        case 1:
            gSomeBlend.mapTopLeftY += changeAmt;
            break;
        case 2:
            gSomeBlend.mapBottomRightX += changeAmt;
            break;
        case 3:
            gSomeBlend.mapBottomRightY += changeAmt;
            break;
        }
    } else if (input->pressed & B_BUTTON) {
        play_sound(SFX_MENU_SELECT);
        switch (state->subItemIndex) {
        case 0:
            gSomeBlend.mapTopLeftX -= changeAmt;
            break;
        case 1:
            gSomeBlend.mapTopLeftY -= changeAmt;
            break;
        case 2:
            gSomeBlend.mapBottomRightX -= changeAmt;
            break;
        case 3:
            gSomeBlend.mapBottomRightY -= changeAmt;
            break;
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage4.inc", void debugMenuPage4());

extern "C" void handleDebugPage4(InputState* input, DebugMenuState* state) {
    switch (state->itemIndex) {
    case 0:
    case 1:
        sub_0803A844(input, state);
    case 2:
        break;
    }
}

extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803A844.inc", void sub_0803A844(InputState*, DebugMenuState*));
extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage5.inc", void debugMenuPage5());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803AA98.inc", void sub_0803AA98());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803AAAC.inc", void sub_0803AAAC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/debugMenuPage6.inc", void debugMenuPage6());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_19.inc", void nullsub_19());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_20.inc", void nullsub_20());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803AD50.inc", void sub_0803AD50());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803ADA8.inc", void sub_0803ADA8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803ADBC.inc", void sub_0803ADBC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803ADD0.inc", void sub_0803ADD0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803AEC8.inc", void sub_0803AEC8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B008.inc", void sub_0803B008());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B160.inc", void sub_0803B160());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B278.inc", void sub_0803B278());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B2C8.inc", void sub_0803B2C8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B3C4.inc", void sub_0803B3C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B474.inc", void sub_0803B474());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B4FC.inc", void sub_0803B4FC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B544.inc", void sub_0803B544());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B58C.inc", void sub_0803B58C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B5C4.inc", void sub_0803B5C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B610.inc", void sub_0803B610());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B638.inc", void sub_0803B638());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B660.inc", void sub_0803B660());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B688.inc", void sub_0803B688());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B724.inc", void sub_0803B724());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B7CC.inc", void sub_0803B7CC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B800.inc", void sub_0803B800());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B860.inc", void sub_0803B860());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B8A8.inc", void sub_0803B8A8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803B918.inc", void sub_0803B918());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803BD88.inc", void sub_0803BD88());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803BF44.inc", void sub_0803BF44());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803BFEC.inc", void sub_0803BFEC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C4B0.inc", void sub_0803C4B0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C4C4.inc", void sub_0803C4C4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C4DC.inc", void sub_0803C4DC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_17.inc", void nullsub_17());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C54C.inc", void sub_0803C54C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C5C0.inc", void sub_0803C5C0());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803C9AC.inc", void sub_0803C9AC());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803CB68.inc", void sub_0803CB68());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803CBC4.inc", void sub_0803CBC4());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803D058.inc", void sub_0803D058());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803D06C.inc", void sub_0803D06C());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/sub_0803D0A8.inc", void sub_0803D0A8());
extern "C" ASM_FUNC("asm/non_matching/code_08021920/nullsub_18.inc", void nullsub_18());
