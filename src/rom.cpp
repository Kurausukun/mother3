// Auto-generated source file
#include "battle/guest.h"
#include "battle/irc.h"
#include "enums.h"
#include "gba/gba.h"
#include "gba/macro.h"
#include "global.h"
#include "m4a.h"
#include "overworld/script.h"
#include "audio.h"
#include "structs.h"

extern const char _binary_build_mother3_assets_misctext_bin_start;
extern const IrqTable gUnknown_080C1A58;
extern const u8 gMapMusicTable[0x3E8];
extern IrqTable gIntrHandlers;
extern u8 gUnknown_02004100[0x10];
extern u8 gUnknown_02005080;
extern u8 gUnknown_020051E4;
extern u8 gUnknown_03004B14;
extern u16 gUnknown_03004B00;
extern u16 gUnknown_03004B02;
extern u16 gUnknown_03004B0A;
extern u16 gAudioSynced;
extern u32 gUnknown_08CDB95C[];
extern s16 gMPlayTrackTable[];
extern s16 gMPlayPrevTrackTable[];
extern s16 gMPlayVolumeTable[];
extern s16 gMPlayVolumeStorageTable[];
extern const DoorDestinationInfo gDoorDestinationTable[];

extern "C" s32 Div(s32, s32);
extern "C" s32 Divide(s32 a, s32 b);
extern "C" void sub_0803D474();
extern "C" void sub_08005C38();
extern "C" void sub_080019DC(void* dest, u32 size);
extern "C" void CpuFastSet(const void* src, void* dest, u32 control);
extern "C" void sub_08000D88();
extern "C" void sub_08090F90(s32);
extern "C" s32 sub_08002FD4(s32, s32);
extern "C" const void* Blob_GetEntry(const void*, u16);
extern "C" u16 sub_0801A638(u16);
extern "C" MusicPlayerInfo* getMusicPlayer_sfx(u16);
extern "C" void sub_0801A238(s32, MovementVector*);
extern "C" void sub_080016E4();
extern "C" void mode_debug_menu(InputState*);
extern "C" void sub_0800B00C(InputState*);
extern "C" void sub_0800BB54(InputState*);
extern "C" void sub_08026DE0(InputState*);
extern "C" void sub_08026E3C(InputState*);
extern "C" void sub_08037DB0(InputState*);
extern "C" Object* get_obj_direct(u16);
extern "C" void sub_0800BC48(Object*);
extern "C" void sub_0800BBF4(InputState*);
extern "C" void sub_08036BA4(Object*);
extern "C" void sub_0800BE04(Object*);
extern "C" void sub_080052E4(s32);
extern "C" void sub_0802610C(s32);
extern "C" MapGraphicsInfo* getMapGraphicsInfo(u16);
extern "C" DoorDestinationInfo* getDoorDestinationInfo(u16);
extern "C" void sub_0805CD30(u16, u16, u8);
extern "C" u32 sub_0805CDD8(u16, u8);
extern "C" u16 get_flag(u16);
extern "C" void incrementSessionPlaytime();

extern "C" ASM_FUNC("asm/non_matching/rom/sub_080012BC.inc", void sub_080012BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001378.inc", s32 sub_08001378(Unknown_02016078*, u32, u16, u16));

extern "C" void sub_080013D0(struct_02016028* arg0) {
    arg0->dispcnt = 0;
    arg0->_22 = 0;
    arg0->_24 = 0;
    arg0->_26 = 0;
    arg0->_28 = 0;
    arg0->_2A = 0;
    arg0->_2C = 0;
    arg0->_2E = 0;
    arg0->_30 = 0x100;
    arg0->_38 = 0x100;
    arg0->_32 = 0;
    arg0->_3A = 0;
    arg0->_34 = 0;
    arg0->_3C = 0;
    arg0->_36 = 0x100;
    arg0->_3E = 0x100;
    arg0->_40 = 0;
    arg0->_44 = 0;
    arg0->_48 = 0;
    arg0->_4C = 0;

    for (u16 i = 0; i < 4; i++) {
        arg0->bgcnt[i] = 0;
        arg0->_12[i] = 0;
        arg0->_1A[i] = 0;
    }
}

extern "C" void sub_08001454(Unknown_02016078* arg0) {
    arg0->_2C40 = arg0->_2C42 = arg0->_2C44 = arg0->_2C46 = 0;

    sub_080019DC((void*)arg0->_0, 0x800);
    sub_080019DC((void*)arg0->_800, 0x800);
    sub_080019DC((void*)arg0->_1000, 0x800);
    sub_080019DC((void*)arg0->_1800, 0x800);
    sub_080019DC((void*)arg0->_2700, 0x400);

    arg0->oam_counter = 0;
    arg0->_2C4A = 0;
    arg0->r = 0;
    arg0->g = 0;
    arg0->b = 0;

    arg0->_2700[0][0] = RGB(arg0->r, arg0->g, arg0->b);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001530.inc", void sub_08001530());

extern "C" void sub_0800160C(Unknown_02016078* dest, void* src, u16 index, u16 size) {
    CpuFastSet(src, (void*)dest->_2700[index], size / 4);
}

extern "C" void resetInputState(InputState* input, u16 arg1) {
    input->gotInput = 0;
    input->justPressed = 0;
    input->pressed = 0;
    input->debounceTimer = 0;
    input->_6 = arg1;
    input->pressedPending = 0;
    input->lastPressed = 0;
    input->numRepeats = 0;
}

extern "C" void pollInput(InputState* input) {
    u16 buttonState = (u32)(~REG_KEYINPUT << 0x16) >> 0x16;
    input->gotInput = 1;

    if (buttonState == 0) {
        input->debounceTimer = 0;
        input->gotInput = 0;
        input->numRepeats = 0;
    } else {
        if (input->debounceTimer == 0) {
            input->debounceTimer = 20;
        } else {
            input->debounceTimer--;
            if (input->debounceTimer == 0) {
                input->debounceTimer = 6;
            } else {
                input->gotInput = 0;
            }
        }
    }

    if (input->gotInput) {
        if (input->pressed == input->lastPressed) {
            input->numRepeats++;
        } else {
            input->numRepeats = 0;
        }
        input->lastPressed = input->pressed;
    }

    input->justPressed = buttonState & ~input->pressed;
    input->pressed = buttonState;
    if (input->gotInput) {
        input->justPressed |= input->pressedPending;
        input->pressedPending = 0;
        return;
    }
    input->pressedPending |= input->justPressed;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_080016E4.inc", void sub_080016E4());

extern "C" void DoReset(void) {
    m4aMPlayAllStop();
    m4aSoundMain();
    sub_08000D88();
    REG_SOUNDCNT_X = 0;
    REG_IME = 0;
    sub_08090F90(0xFD);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001744.inc", void sub_08001744());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001778.inc", void sub_08001778());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080017AC.inc", void sub_080017AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080017E0.inc", void sub_080017E0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001814.inc", void sub_08001814());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800186C.inc", void sub_0800186C());

extern "C" void sub_080018E4(void) {
    REG_DISPCNT = 0;
    *(vu16*)PLTT = 0;
}

extern "C" void sub_080018F4(void) {
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    *(vu16*)PLTT = RGB_WHITE;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800190C.inc", void sub_0800190C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001930.inc", void sub_08001930());

extern "C" void sub_08001960(void) {
    VBlankIntrWait();
}

// TODO: probably Unknown_02016078
extern "C" void sub_0800196C(u8* src) {
    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)&src[0x2000];
    dmaRegs[1] = (uintptr_t)OAM;

    u32 size = OAM_SIZE / 2;
    u32 flags = (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16;
    dmaRegs[2] = flags | size;

    dmaRegs[2];

    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" void sub_080019A4(Unknown_02016078* arg0) {
    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)&arg0->_2700;
    dmaRegs[1] = (uintptr_t)PLTT;

    u32 size = PLTT_SIZE / 2;
    u32 flags = (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16;
    dmaRegs[2] = flags | size;

    dmaRegs[2];

    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" void sub_080019DC(void* dest, u32 size) {
    s32 tmp = 0;
    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)&tmp;
    dmaRegs[1] = (uintptr_t)dest;

    size /= 4;
    dmaRegs[2] =
        (size | ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_FIXED | DMA_DEST_INC) << 16));
    dmaRegs[2];
    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" void sub_08001A14(void* src, void* dest, u32 size) {
    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)src;
    dmaRegs[1] = (uintptr_t)dest;

    size /= 2;
    u32 flags = (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16;
    dmaRegs[2] = flags | size;

    dmaRegs[2];

    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" void sub_08001A38(void* dest, u32 size, int value) {
    s16 temp = value;

    vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
    dmaRegs[0] = (uintptr_t)&temp;
    dmaRegs[1] = (uintptr_t)dest;

    size /= 2;
    u32 flags = (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_FIXED | DMA_DEST_INC) << 16;
    dmaRegs[2] = flags | size;

    dmaRegs[2];

    // Wait for DMA to complete
    while (dmaRegs[2] & (DMA_ENABLE << 16)) {
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001A70.inc", void sub_08001A70());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001A94.inc", void sub_08001A94());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001AAC.inc", void sub_08001AAC());
extern "C" ASM_FUNC("asm/non_matching/rom/memclear.inc", void memclear());
extern "C" ASM_FUNC("asm/non_matching/rom/CpuSmartSet.inc", void CpuSmartSet());
extern "C" ASM_FUNC("asm/non_matching/rom/memFill.inc", void memFill());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001B9C.inc", void sub_08001B9C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001BCC.inc", void sub_08001BCC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001BFC.inc", void sub_08001BFC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001C2C.inc", void sub_08001C2C());
extern "C" ASM_FUNC("asm/non_matching/rom/get_misctext_msg.inc", void get_misctext_msg());

extern "C" u16 isCharIdOverworldPlayable(u16 playerID) {
    if (gLevelStatTable[playerID].overworld_playable != 0) {
        return 0;
    }
    return 1;
}

extern "C" u16 isLucasOrKumatora(u16 id) {
    if (id == PartyMemberID::Lucas || id == PartyMemberID::Kumatora) {
        return 1;
    }
    return 0;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001D70.inc", void sub_08001D70());

extern "C" u16 get_misctext_len(u16 index) {
    return *(u16*)Blob_GetEntry(&_binary_build_mother3_assets_misctext_bin_start, index);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001DC8.inc", void sub_08001DC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001DF8.inc", void sub_08001DF8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001E40.inc", void sub_08001E40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001EA4.inc", void sub_08001EA4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001F50.inc", void sub_08001F50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08001FB4.inc", void sub_08001FB4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002104.inc", void sub_08002104());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002254.inc", u16 sub_08002254(u16, u16));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080023A4.inc", void sub_080023A4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080023E0.inc", void sub_080023E0());

extern "C" void copyText(u16* dest, u16* src, s16 len) {
    if (len == -1) {
        while (*src != 0xFFFF) {
            *dest = *src;
            src++;
            dest++;
        }

        *dest = 0xFFFF;
    } else {
        for (u16 i = 0; i < len; i++) {
            *dest = *src;
            src++;
            dest++;
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002474.inc", void sub_08002474());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080024F0.inc", void sub_080024F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800255C.inc", void sub_0800255C());

extern "C" u16* getNthMemoPage(u16* buf, u16 line) {
    for (u16 i = 0; i < line; i++) {
        u16 currentChar = *buf;

        do {
            currentChar = *buf;
            buf++;
        } while (currentChar != 0xFFFF && currentChar != 0xFF00);
    }

    return buf;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_080025D8.inc", void sub_080025D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002604.inc", void sub_08002604());

extern "C" void breakIntoDigits(u16* digitBuffer, u32 value, u16 modifier, u16 numDigits) {
    u32* ptr = &gUnknown_08CDB95C[numDigits];

    for (u16 i = 0; i < numDigits; i++, ptr--) {
        digitBuffer[i] = Divide(value, *ptr) + modifier;
        value = sub_08002FD4(value, *ptr);
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800268C.inc", void sub_0800268C());

extern "C" void incrementSavePlaytime() {
    if (gSave.playtime < SECONDS_TO_FRAMES(359999)) {
        gSave.playtime++;
    } else {
        gSave.playtime = SECONDS_TO_FRAMES(359998);
    }
    incrementSessionPlaytime();
}

extern "C" void incrementSessionPlaytime() {
    if (get_flag(0x315)) {
        return;
    }

    if (gSave.sessionPlaytime < LEDERS_BELL_THRESHOLD) {
        gSave.sessionPlaytime++;
    } else {
        gSave.sessionPlaytime = LEDERS_BELL_THRESHOLD;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800272C.inc", void sub_0800272C());

extern "C" u32 sub_08002760(u16 r0, u16 r1) {
    extern u16 gUnknown_08CDB988[];
    extern u16 gUnknown_08CDB990[];

    switch (r0) {
    case 0:
        return gUnknown_08CDB988[r1];
        break;
    case 1:
    case 2:
        return gUnknown_08CDB990[r1];
        break;
    default:
        return 0;
    }
}

extern "C" u32 sub_0800279C(u16 r0, u16 r1) {
    extern u16 gUnknown_08CDB998[];
    extern u16 gUnknown_08CDB9A0[];
    extern u16 gUnknown_08CDB9A8[];

    switch (r0) {
    case 0:
        return gUnknown_08CDB998[r1];
    case 1:
        return gUnknown_08CDB9A0[r1];
    case 2:
        return gUnknown_08CDB9A8[r1];
    default:
        return 0;
    }
}

extern "C" u32 sub_080027E4(u16 r0, u16 r1) {
    extern u16 gUnknown_08CDB9B0[];
    extern u16 gUnknown_08CDB9B8[];
    extern u16 gUnknown_08CDB9C0[];

    switch (r0) {
    case 0:
        return gUnknown_08CDB9B0[r1];
    case 1:
        return gUnknown_08CDB9B8[r1];
    case 2:
        return gUnknown_08CDB9C0[r1];
    default:
        return 0;
    }
}

extern "C" void sub_0800282C(u16 r0, u16 r1, u16* r2, u16* r3) {
    extern u16 gUnknown_08CDB9C8[];
    extern u16 gUnknown_08CDB9D0[];
    extern u16 gUnknown_08CDB9D8[];
    extern u16 gUnknown_08CDB9E0[];
    extern u16 gUnknown_08CDB9E8[];

    switch (r0) {
    case 0:
        *r2 = *r3 = gUnknown_08CDB9C8[r1];
        break;
    case 1:
        *r2 = gUnknown_08CDB9D0[r1];
        *r3 = gUnknown_08CDB9D8[r1];
        break;
    case 2:
        *r2 = gUnknown_08CDB9E0[r1];
        *r3 = gUnknown_08CDB9E8[r1];
        break;
    default:
        *r2 = *r3 = 0;
        break;
    }
}

extern "C" const void* Blob_GetEntry(const void* src, u16 index) {
    uintptr_t base = (uintptr_t)src;
    u32 offset = ((u32*)src)[index + 1];
    return (const void*)(base + offset);
}

extern "C" u32 Blob_GetEntrySize(const void* src, u16 index) {
    u32 next = ((u32*)src)[index + 2];
    u32 offset = ((u32*)src)[index + 1];
    return next - offset;
}

extern "C" u32 Blob_GetNumEntries(const void* src) {
    return ((u32*)src)[0];
}

extern "C" void set_event_flag(u16 idx, u16 value) {
    gSave.event_flags[idx / 8] =
        (gSave.event_flags[idx / 8] & ~(1 << (idx % 8))) | ((value & 1) << (idx % 8));
}

extern "C" void sub_080028F4(u16 idx, u16 value) {
    //! BUG: should be (value & 0x0F) << 4
    gSave.shop_flags[idx / 2] = idx & 1 ? (gSave.shop_flags[idx / 2] & 0x0F) | (value << 4) :
                                          (gSave.shop_flags[idx / 2] & 0xF0) | (value & 0x0F);
}

extern "C" void sub_08002938(u16 idx, u16 value) {
    gSave._380[idx] = value;
}

extern "C" void sub_08002950(u16 idx, u16 value) {
    gSave.mIQ0[idx * 2] = value & 0xFF;
    gSave.mIQ0[idx * 2 + 1] = (value >> 8) & 0xFF;
}

extern "C" u16 get_flag(u16 idx) {
    return (gSave.event_flags[idx / 8] >> (idx % 8)) & 1;
}

extern "C" u32 get_shop_flag(u16 idx) {
    return (gSave.shop_flags[idx / 2] >> ((idx & 1) * 4)) & 0xf;
}

extern "C" u32 get_progression_flag(u16 idx) {
    return gSave._380[idx];
}

extern "C" u32 sub_080029D4(u16 idx) {
    return gSave.mIQ0[idx * 2] | (gSave.mIQ0[idx * 2 + 1] << 8);
}

extern "C" void set_giftbox_flag(u16 idx, u16 value) {
    gSave.giftbox_flags[idx / 8] =
        (gSave.giftbox_flags[idx / 8] & ~(1 << (idx % 8))) | ((value & 1) << (idx % 8));
}

extern "C" u32 get_giftbox_flag(u16 idx) {
    return (gSave.giftbox_flags[idx / 8] >> (idx % 8)) & 1;
}

extern "C" void sub_08002A58(u16 r0, u16 r1, vu16 r2) {
    if (r2) {
        sub_0805CD30(r0, 1, r1);
    } else {
        sub_0805CD30(r0, 0, r1);
    }
}

extern "C" u8 sub_08002A90(u16 r0, vu16 r1) {
    if (r1) {
        return sub_0805CDD8(r0, 1);
    } else {
        return sub_0805CDD8(r0, 0);
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002ABC.inc", void sub_08002ABC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002AF4.inc", void sub_08002AF4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002B1C.inc", void sub_08002B1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002B60.inc", void sub_08002B60());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002BA4.inc", void sub_08002BA4());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002BCC.inc", void sub_08002BCC());
extern "C" u16* sub_08002BCC(s32 arg0, u16 arg1) {
    u16 temp_r1;
    u16 var_r3;
    u16* var_r2;

    temp_r1 = arg1;
    var_r2 = (u16*)arg0 + 1;
    var_r3 = 0;
    for (var_r3 = 0; var_r3 < temp_r1; var_r3++) {
        var_r2 += (*var_r2) + 1;
    }
    return var_r2;
}
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002BF4.inc", void sub_08002BF4());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002C20.inc", void sub_08002C20());
typedef struct UnnamedStruct001 {
    u16 a;
    u8 b[2];
} UnnamedStruct001;

extern "C" u16 sub_08002C20(UnnamedStruct001* arg0) {
    u8* var_r1 = &arg0->b[0];
    u16 var_r3 = 0;
    for(u16 var_r2 = 0; var_r2 < *(u16 *)arg0; var_r2++) {
        var_r3 += var_r1[1];
        var_r1 += 2;
    }
    return var_r3;
}
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002C4C.inc", void sub_08002C4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002C54.inc", void sub_08002C54());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002C5C.inc", void sub_08002C5C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002D18.inc", void sub_08002D18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002D88.inc", void sub_08002D88());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002D98.inc", void sub_08002D98());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002DB0.inc", void sub_08002DB0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002DC8.inc", void sub_08002DC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002E00.inc", void sub_08002E00());

extern "C" s32 lerp2(s32 start, s32 end, u16 currentStep, u16 numSteps) {
    if (numSteps == 0)
        return start;

    return Divide((start * (numSteps - currentStep)) + (end * currentStep), numSteps);
}

extern "C" s32 lerp(s32 start, s32 end, u16 currentStep, u16 numSteps) {
    if (numSteps == 0)
        return start;

    return Divide((start * (numSteps - currentStep)) + (end * currentStep), numSteps);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002E8C.inc", void sub_08002E8C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002EE0.inc", void sub_08002EE0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002F8C.inc", void sub_08002F8C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002FA4.inc", void sub_08002FA4());

extern "C" s32 Divide(s32 a, s32 b) {
    if (b == 0)
        return 0;

    return Div(a, b);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08002FD4.inc", s32 sub_08002FD4(s32, s32));  // exact copy of "Remainder"

extern "C" u16 sub_08002FE8() {
    extern u32 gUnknown_02015EA8;

    gUnknown_02015EA8 = (gUnknown_02015EA8 << 1) + REG_VCOUNT + ((gUnknown_02015EA8 << 1) >> 8);
    return gUnknown_02015EA8;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003008.inc", void sub_08003008());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003024.inc", void sub_08003024());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800303C.inc", void sub_0800303C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080030A4.inc", void sub_080030A4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080031E0.inc", void sub_080031E0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080031F0.inc", void sub_080031F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003278.inc", void sub_08003278());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003314.inc", void sub_08003314());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003394.inc", void sub_08003394());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003408.inc", void sub_08003408());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080034C8.inc", void sub_080034C8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003554.inc", void sub_08003554());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080035C4.inc", void sub_080035C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080036E8.inc", void sub_080036E8());

extern "C" void init_audio() {
    for (u16 i = 0; i < 10; i++) {
        gMPlayTrackTable[i] = -1;
        gMPlayPrevTrackTable[i] = -1;
        gMPlayVolumeTable[i] = 0x100;
    }

    m4aSoundInit();
    gAudioSynced = 0;
}

extern "C" void snd_restart(void) {
    REG_IME = 1;
    m4aMPlayAllStop();
    m4aSoundMain();
    REG_SOUNDCNT_X = 0;
    init_audio();
    REG_IME = 0;
}

extern "C" void snd_vsync(void) {
    m4aSoundVSync();
    gAudioSynced = 0;
}

extern "C" void snd_main(void) {
    if (gAudioSynced == 0) {
        m4aSoundMain();
        gAudioSynced = 1;
    }
}

extern "C" void snd_vsync_on(void) {
    m4aSoundVSyncOn();
}

extern "C" void snd_vsync_off(void) {
    m4aSoundVSyncOff();
}

extern "C" void startSong_battle(u16 song) {
    if (song == SFX_NULL) {
        gMPlayPrevTrackTable[0] = gMPlayTrackTable[0];
        gMPlayPrevTrackTable[1] = gMPlayTrackTable[1];
        gMPlayTrackTable[0] = SFX_NULL;
        gMPlayTrackTable[1] = SFX_NULL;
        gMPlayVolumeTable[0] = 0x100;
        gMPlayVolumeTable[1] = 0x100;
        MPlayStop(gMPlayTable[0].info);
        MPlayStop(gMPlayTable[1].info);
        return;
    }

    s16 mpIndex;
    if ((mpIndex = getMusicPlayerIndex(song)) == -1)
        return;

    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = song;
    gMPlayVolumeTable[mpIndex] = 0x100;
    m4aSongNumStartOrContinue(song);
    m4aMPlayImmInit(gMPlayTable[mpIndex].info);
    m4aMPlayVolumeControl(gMPlayTable[mpIndex].info, TRACKS_ALL, gMPlayVolumeTable[mpIndex]);
}

extern "C" void startSong(u16 song) {
    if (song == SFX_NULL) {
        gMPlayPrevTrackTable[0] = gMPlayTrackTable[0];
        gMPlayPrevTrackTable[1] = gMPlayTrackTable[1];
        gMPlayTrackTable[0] = SFX_NULL;
        gMPlayTrackTable[1] = SFX_NULL;
        gMPlayVolumeTable[0] = 0x100;
        gMPlayVolumeTable[1] = 0x100;
        m4aSongNumStart(SFX_NULL);
        return;
    }

    s16 mpIndex;
    if ((mpIndex = getMusicPlayerIndex(song)) == -1)
        return;

    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = song;
    gMPlayVolumeTable[mpIndex] = 0x100;
    m4aSongNumStart(song);
}

extern "C" void startSong_alt(u16 trackID) {
    s16 mpIndex;
    if ((mpIndex = getMusicPlayerIndex(trackID)) == -1)
        return;

    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = trackID;
    gMPlayVolumeTable[mpIndex] = 0x100;
    m4aSongNumStartOrContinue(trackID);
    m4aMPlayImmInit(gMPlayTable[mpIndex].info);
    m4aMPlayVolumeControl(gMPlayTable[mpIndex].info, TRACKS_ALL, gMPlayVolumeTable[mpIndex]);
}

extern "C" void play_sound(u16 sound) {
    if (sound == SFX_NULL)
        return;

    s16 mpIndex;
    if ((mpIndex = getMusicPlayerIndex(sound)) == -1)
        return;

    if (sound == SFX_VO_OK) {
        m4aSongNumStart(0x3DA);
    }

    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = sound;
    gMPlayVolumeTable[mpIndex] = 0x100;
    m4aSongNumStart(sound);
}

extern "C" void musicPlayerFadeInIfPaused_bgm(u16 mpIndex, u16 speed) {
    MusicPlayerInfo* mpInfo = getMusicPlayer_bgm(mpIndex);
    if (!mpInfo)
        return;

    u16 currentTrack = gMPlayTrackTable[mpIndex];
    if ((s32)mpInfo->status < 0) {
        m4aMPlayImmInit(mpInfo);
        m4aMPlayVolumeControl(mpInfo, TRACKS_ALL, 0);
        m4aSongNumStop(currentTrack);
        m4aMPlayFadeIn(mpInfo, speed);
        gMPlayVolumeTable[mpIndex] = 0x100;
    }
}

extern "C" void musicPlayerFadeIn_bgm(u16 mpIndex, u16 speed) {
    MusicPlayerInfo* mpInfo = getMusicPlayer_bgm(mpIndex);
    if (!mpInfo)
        return;

    u16 song = gMPlayTrackTable[mpIndex];
    m4aMPlayImmInit(mpInfo);
    m4aMPlayVolumeControl(mpInfo, TRACKS_ALL, 0);
    m4aSongNumStop(song);
    m4aMPlayFadeIn(mpInfo, speed);
    gMPlayVolumeTable[mpIndex] = 0x100;
}

extern "C" void musicPlayerFadeOutTemp_bgm(u16 mpIndex, u16 speed) {
    MusicPlayerInfo* mpInfo = getMusicPlayer_bgm(mpIndex);
    if (!mpInfo)
        return;

    if ((s32)mpInfo->status >= 0) {
        m4aMPlayFadeOutTemporarily(mpInfo, speed);
    }
}

extern "C" void musicPlayerFadeIn_sfx(u16 mpIndex, u16 speed) {
    MusicPlayerInfo* mpInfo = getMusicPlayer_sfx(mpIndex);
    if (!mpInfo)
        return;

    u16 song = gMPlayTrackTable[mpIndex];
    if ((s32)mpInfo->status >= 0) {
        m4aMPlayImmInit(mpInfo);
        m4aMPlayVolumeControl(mpInfo, TRACKS_ALL, 0);
        m4aSongNumStop(song);
        m4aMPlayFadeIn(mpInfo, speed);
    }
}

extern "C" void musicPlayerFadeOut_sfx(u16 idx, u16 speed) {
    struct MusicPlayerInfo* mpInfo = getMusicPlayer_sfx(idx);
    if (!mpInfo)
        return;

    if ((s32)mpInfo->status >= 0) {
        m4aMPlayFadeOut(mpInfo, speed);
    }
}

extern "C" void musicPlayerStop_bgm(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 1)
        return;
    if (mpIndex < 0)
        return;

    MPlayStop(gMPlayTable[mpIndex].info);
    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = 0;
    gMPlayVolumeTable[mpIndex] = 0x100;
}

extern "C" void musicPlayerStop_sfx(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 9)
        return;
    s32 two = 2;  // FAKEMATCH
    if (mpIndex < two)
        return;

    MPlayStop(gMPlayTable[mpIndex].info);
    gMPlayPrevTrackTable[mpIndex] = gMPlayTrackTable[mpIndex];
    gMPlayTrackTable[mpIndex] = 0;
    gMPlayVolumeTable[mpIndex] = 0x100;
}

extern "C" void musicPlayerPause_bgm(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 1)
        return;
    if (mpIndex < 0)
        return;

    MPlayStop(gMPlayTable[mpIndex].info);
}

extern "C" void musicPlayerContinue_bgm(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 1)
        return;
    if (mpIndex < 0)
        return;

    m4aMPlayContinue(gMPlayTable[mpIndex].info);
}

extern "C" void musicPlayerUpdateVolume(u16 uidx, u16 vol) {
    s32 mpIndex = uidx;

    if (mpIndex > 9)
        return;
    if (mpIndex < 0)
        return;

    MusicPlayerInfo* mpInfo = gMPlayTable[mpIndex].info;
    m4aMPlayVolumeControl(mpInfo, TRACKS_ALL, vol);
    gMPlayVolumeTable[mpIndex] = vol;
}

extern "C" void musicPlayerInitAndUpdateVolume(u16 uidx, u16 vol) {
    s32 mpIndex = uidx;

    if (mpIndex > 9)
        return;
    if (mpIndex < 0)
        return;

    MusicPlayerInfo* mpInfo = gMPlayTable[mpIndex].info;
    m4aMPlayImmInit(mpInfo);
    m4aMPlayVolumeControl(mpInfo, TRACKS_ALL, vol);
    gMPlayVolumeTable[mpIndex] = vol;
}

extern "C" void musicPlayerSetPanpotClamped(u16 mpIndex, s16 pan) {
    MusicPlayerInfo* mpInfo = getMusicPlayer_sfx(mpIndex);
    if (!mpInfo)
        return;

    if (pan > 127) {
        pan = 127;
    } else if (pan < -128) {
        pan = -128;
    }

    m4aMPlayPanpotControl(mpInfo, TRACKS_ALL, pan);
}

extern "C" s16 getCurrentTrack(u16 mpIndex) {
    if (!gMPlayTrackTable[mpIndex])
        return -1;

    return gMPlayTrackTable[mpIndex];
}

extern "C" s16 getPrevTrack(u16 mpIndex) {
    return gMPlayPrevTrackTable[mpIndex];
}

extern "C" u16 getMusicPlayerVolumePercent(u16 mpIndex) {
    return MPlayVolumeToPercent(gMPlayVolumeTable[mpIndex]);
}

extern "C" s32 isMusicPlayerPlaying_bgm(u16 mpIndex) {
    MusicPlayerInfo* mPlayerInfo = getMusicPlayer_bgm(mpIndex);
    if (!mPlayerInfo)
        return 0;

    return ((u32)mPlayerInfo->status >> 0x1F) ^ 1;
}

extern "C" s16 getMusicPlayerIndex(u16 songID) {
    MusicPlayerInfo* mpInfo = gMPlayTable[gSongTable[songID].ms].info;

    for (u16 i = 0; i < 10; i++) {
        if (mpInfo == gMPlayTable[i].info)
            return i;
    }
    return -1;
}

extern "C" MusicPlayerInfo* getMusicPlayer_bgm(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 1)
        return 0;
    if (mpIndex < 0)
        return 0;

    return gMPlayTable[mpIndex].info;
}

extern "C" MusicPlayerInfo* getMusicPlayer_sfx(u16 uidx) {
    s32 mpIndex = uidx;

    if (mpIndex > 9)
        return 0;
    s32 two = 2;  // FAKEMATCH
    if (mpIndex < two)
        return 0;

    return gMPlayTable[mpIndex].info;
}

extern "C" u16 percentToMPlayVolume(u16 percent) {
    if (percent == 0)
        return 4;
    if (percent == 100)
        return 256;
    if (percent == 400)
        return 1020;

    return lerp(4, 1020, percent, 400);
}

extern "C" u16 MPlayVolumeToPercent(u16 volume) {
    if (volume < 5)
        return 0;
    if (volume == 256)
        return 100;
    if (volume >= 1020)
        return 400;

    return lerp(0, 400, volume, 1020);
}

extern "C" void storeMusicPlayerVolumes() {
    for (u16 i = 0; i <= 9; i++) {
        gMPlayVolumeStorageTable[i] = gMPlayVolumeTable[i];
    }
}

extern "C" void retrieveMusicPlayerVolumes() {
    for (u16 i = 0; i <= 9; i++) {
        gMPlayVolumeTable[i] = gMPlayVolumeStorageTable[i];
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08003EF8.inc", void sub_08003EF8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004044.inc", void sub_08004044());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800408C.inc", void sub_0800408C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004114.inc", void sub_08004114());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800444C.inc", void sub_0800444C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080044B8.inc", void sub_080044B8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800451C.inc", void sub_0800451C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004660.inc", void sub_08004660());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004794.inc", void sub_08004794());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800494C.inc", void sub_0800494C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004BB8.inc", void sub_08004BB8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004CB8.inc", void sub_08004CB8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004E64.inc", void sub_08004E64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004F7C.inc", void sub_08004F7C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08004FB4.inc", void sub_08004FB4());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_1.inc", void nullsub_1());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_2.inc", void nullsub_2());

extern "C" void exec_mode(InputState* input) {
    sub_080016E4();
    switch (gGame.mode) {
    case MODE_NORMAL:
        sub_0800B00C(input);
        return;
    case MODE_SCRIPT:
        sub_0800BB54(input);
        return;
    case 8:
        sub_08026DE0(input);
        return;
    case MODE_MAP_VIEW:
        sub_08026E3C(input);
        return;
    case MODE_DROPDOWN:
        sub_08037DB0(input);
        return;
    case MODE_DEBUG_MENU:
        mode_debug_menu(input);
        return;
    default:
        return;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800519C.inc", void sub_0800519C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080051E0.inc", void sub_080051E0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080052D0.inc", void sub_080052D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080052E4.inc", void sub_080052E4());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_3.inc", void nullsub_3());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005354.inc", void sub_08005354());

extern "C" void sub_08005364() {
    REG_IME = 0;
    REG_IE &= ~3;
    REG_DISPSTAT &= ~0x18;
    memcpy(&gIntrHandlers, &gUnknown_080C1A58, sizeof(gUnknown_080C1A58));
    sub_08001A14(&sub_0803D474, &gUnknown_03004B14, 0x100);
    sub_08005C38();
    gUnknown_03004B0A = 0;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_080053D0.inc", void sub_080053D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800545C.inc", void sub_0800545C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080054A0.inc", void sub_080054A0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080055E4.inc", void sub_080055E4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080056E4.inc", void sub_080056E4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005730.inc", void sub_08005730());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_60.inc", void nullsub_60());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005848.inc", void sub_08005848());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005890.inc", void sub_08005890());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080058D8.inc", void sub_080058D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005900.inc", void sub_08005900());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005A3C.inc", void sub_08005A3C());

extern "C" void sub_08005A70(void) {
    if (gUnknown_03004B0A != 0) {
        gUnknown_03004B0A = 0;
        gIntrHandlers.hblank = (IrqTable::Func)&gUnknown_03004B14;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005A94.inc", void sub_08005A94());

extern "C" void sub_08005AD8(u16 bit) {
    REG_IME = 0;
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_DISPSTAT &= 0xFF;
    REG_DISPSTAT |= bit << 8;
    gIntrHandlers.vblank = sub_0800545C;
    gIntrHandlers.vcount = sub_080056E4;
    REG_IME = 1;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005B34.inc", void sub_08005B34());

extern "C" void sub_08005B68(void) {
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_VCOUNT;
    REG_DISPSTAT &= ~DISPSTAT_VCOUNT_INTR;
    gIntrHandlers.vblank = &sub_080053D0;
    gIntrHandlers.vcount = &sub_080055E4;
    REG_IME = 1;
}

// TODO: does this volatile even make sense?
extern "C" void sub_08005BB4(volatile u16 arg0) {
    if (arg0) {
        REG_IME = 0;
        gIntrHandlers.vcount = sub_08005730;
        REG_IME = 1;
    } else {
        REG_IME = 0;
        gIntrHandlers.vcount = sub_080055E4;
        REG_IME = 1;
    }
}
extern "C" void sub_08005BFC() {
    gUnknown_03004B00 = 1;
    gUnknown_03004B02++;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005C14.inc", void sub_08005C14());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005C38.inc", void sub_08005C38());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005C4C.inc", void sub_08005C4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005D54.inc", void sub_08005D54());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08005FB4.inc", void sub_08005FB4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080061CC.inc", void sub_080061CC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080062F0.inc", void sub_080062F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080064A8.inc", void sub_080064A8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080066B4.inc", void sub_080066B4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800677C.inc", void sub_0800677C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080067B4.inc", void sub_080067B4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080067DC.inc", void sub_080067DC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006850.inc", void sub_08006850());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006868.inc", void sub_08006868());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800687C.inc", void sub_0800687C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080068B8.inc", void sub_080068B8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006944.inc", void sub_08006944());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006968.inc", void sub_08006968());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006A88.inc", void sub_08006A88());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006ACC.inc", void sub_08006ACC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006B40.inc", void sub_08006B40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006E80.inc", void sub_08006E80());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08006F78.inc", void sub_08006F78());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800724C.inc", void sub_0800724C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007318.inc", void sub_08007318());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007358.inc", void sub_08007358());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007398.inc", void sub_08007398());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007760.inc", void sub_08007760());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007AD4.inc", void sub_08007AD4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007CC0.inc", void sub_08007CC0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007CE8.inc", void sub_08007CE8());

extern "C" void sub_08007D18(Unknown_02016078* arg0) {
    if (gGame._595b[0] == 2) {
        arg0->r = 31;
        arg0->g = 31;
        arg0->b = 31;
        *(vu16*)PLTT = RGB(arg0->r, arg0->g, arg0->b);
    } else {
        arg0->r = 0;
        arg0->g = 0;
        arg0->b = 0;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007D94.inc", void sub_08007D94());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007DEC.inc", void sub_08007DEC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007E2C.inc", void sub_08007E2C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007E54.inc", void sub_08007E54());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007F18.inc", void sub_08007F18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007F64.inc", void sub_08007F64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08007FC8.inc", void sub_08007FC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800800C.inc", void sub_0800800C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800809C.inc", void sub_0800809C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080080BC.inc", void sub_080080BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080080DC.inc", void sub_080080DC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008110.inc", void sub_08008110());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008200.inc", void sub_08008200());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008244.inc", void sub_08008244());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080082DC.inc", void sub_080082DC());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_4.inc", void nullsub_4());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_5.inc", void nullsub_5());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_61.inc", void nullsub_61());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_62.inc", void nullsub_62());

extern "C" void setup_overworld_music(u16 room, s16 vol) {
    s16 mpIndex, mpIndex_alt;
    u16 track, track_alt, track_room;
    s16 track_mplay0, track_mplay1;
    s16 vol_alt;

    track_room = getMusicIDForRoom(room);

    if (gGame._829b == 6) {
        track = SONG_PORK_BEAN;

        if ((mpIndex = getMusicPlayerIndex(track)) != -1) {
            startSong_alt(track);

            switch (mpIndex) {
            case 0:
                musicPlayerStop_bgm(1);
                gGame.cur_track = track;
                break;
            default:
                musicPlayerStop_bgm(0);
                gGame.cur_track_alt = track;
                break;
            }
        }

        return;
    }

    if (gGame._847a != -1) {
        if ((gGame.cur_room == 0x12D) || (gGame.cur_room == 0x13E)) {
            track_mplay0 = getCurrentTrack(0);
            track = gSave._482[track_room] & 0xFF;

            if (track_mplay0 != track) {
                startSong_alt(track);
            }
            if (vol == -1) {
                vol = 100;
            }

            musicPlayerInitAndUpdateVolume(0, percentToMPlayVolume(vol));
            gGame.cur_track = track;
            track = gGame._847a;
            vol = gGame._847c;
            startSong_alt(track);

            if (vol != -1) {
                musicPlayerInitAndUpdateVolume(1, percentToMPlayVolume(vol));
            }

            gGame._847a = -1;
            gGame._847c = -1;
            return;
        }

        track = gGame._847a;
        vol = gGame._847c;

        if ((mpIndex = getMusicPlayerIndex(track)) != -1) {
            startSong_alt(track);

            switch (mpIndex) {
            case 0:
                musicPlayerStop_bgm(1);
                gGame.cur_track = track;
                break;
            default:
                musicPlayerStop_bgm(0);
                gGame.cur_track_alt = track;
                break;
            }

            if (vol != -1) {
                musicPlayerInitAndUpdateVolume(mpIndex, percentToMPlayVolume(vol));
            }
        }

        gGame._847a = -1;
        gGame._847c = -1;
        return;
    }

    track_mplay0 = getCurrentTrack(0);  // sl
    track_mplay1 = getCurrentTrack(1);  // sp+4
    track = gSave._482[track_room] & 0xFF;
    track_alt = gSave._482[track_room] >> 8;
    vol_alt = gSave._582[track_room];
    mpIndex = getMusicPlayerIndex(track);
    mpIndex_alt = getMusicPlayerIndex(track_alt);

    u16 flags[2];
    u16* flagB;

    u16 disable_collision = gGame.disable_collision;
    if (disable_collision != 0) {
        u16* flagA = &flags[0];  // FAKEMATCH
        *flagA++ = gGame._8496_1;
        *flagA = gGame._8496_2;
        flagB = flagA;
    } else {
        u16* flagA = &flags[0];  // FAKEMATCH
        *flagA++ = 0;
        *flagA = 0;
        flagB = flagA;
    }

    if (flags[0] == 0) {
        if (track == 0) {
            musicPlayerStop_bgm(0);
        } else if (track_mplay0 != track) {
            startSong_alt(track);
        }
    }
    if (*flagB == 0) {
        if (track_alt == 0) {
            musicPlayerStop_bgm(1);
        } else if (track_mplay1 != track_alt) {
            startSong(track_alt);
        } else {
            u16 isPlaying = isMusicPlayerPlaying_bgm(mpIndex_alt);
            if (isPlaying == 0) {
                startSong(track_alt);
            }
        }
    }

    if (vol == -1) {
        vol = 100;
    }

    if ((flags[0] == 0) && (mpIndex != -1)) {
        musicPlayerInitAndUpdateVolume(mpIndex, percentToMPlayVolume(vol));
    }
    if ((*flagB == 0) && (mpIndex_alt != -1)) {
        musicPlayerInitAndUpdateVolume(mpIndex_alt, percentToMPlayVolume(vol_alt));
    }

    gGame.cur_track = track;
    gGame.cur_track_alt = track_alt;
    startSong(0x3DC);
}

extern "C" void sub_08008704(u16 room, s16 vol) {
    s16 mpIndex, mpIndex_alt;
    u16 track, track_alt, track_room;
    u16 vol_alt;

    if ((gUnknown_02005080 != 1) || ((gGame.cur_room != 5) && (gGame.cur_room != 0x37))) {
        track_room = getMusicIDForRoom(room);
        track = gGame.cur_track;
        track_alt = gGame.cur_track_alt;
        mpIndex = getMusicPlayerIndex(track);
        mpIndex_alt = getMusicPlayerIndex(track_alt);
        vol_alt = gSave._582[track_room];

        if (track == 0) {
            musicPlayerStop_bgm(0);
        } else {
            startSong(track);
        }

        if (track_alt == 0) {
            switch (mpIndex) {
            case 0:
                musicPlayerStop_bgm(1);
                break;
            case 1:
                musicPlayerStop_bgm(0);
                break;
            }
        } else {
            startSong(track_alt);
        }

        if (vol == -1) {
            vol = 100;
        }

        if (mpIndex != -1) {
            musicPlayerInitAndUpdateVolume(mpIndex, percentToMPlayVolume(vol));
        }
        if (mpIndex_alt != -1) {
            musicPlayerInitAndUpdateVolume(mpIndex_alt, percentToMPlayVolume(vol_alt));
        }

        startSong(0x3DC);
    }
}

extern "C" void sub_0800882C() {
    u16 speed;
    u16 vol_mplay0 = getMusicPlayerVolumePercent(0);
    u16 vol_mplay1 = getMusicPlayerVolumePercent(1);

    if (gUnknown_020051E4 == 2) {
        speed = 1;
        if ((vol_mplay0 != 100) || (vol_mplay1 != 100)) {
            gUnknown_02004100[2] = speed;
            storeMusicPlayerVolumes();
        }
    } else {
        speed = 2;
    }

    if (vol_mplay0 == 100) {
        musicPlayerFadeOutTemp_bgm(0, speed);
    } else {
        sub_08027B84(0, vol_mplay0, 0, speed);
    }

    if (vol_mplay1 == 100) {
        musicPlayerFadeOutTemp_bgm(1, speed);
    } else {
        sub_08027B84(1, vol_mplay1, 0, speed);
    }

    musicPlayerFadeOut_sfx(8, 4);
}

//extern "C" ASM_FUNC("asm/non_matching/rom/sub_080088AC.inc", void sub_080088AC());
extern "C" void* sub_08009C4C(u16 arg1, u16 arg2);
extern struct_02016028 gSomeBlend;
extern "C" void sub_080088AC(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    struct BitMaskStruct {
        u16 field_0 : 12;   
        u16 field_C : 4;    

        u16 field_10 : 1;   
        u16 field_11 : 1;   
        u16 field_12 : 8;   
        u16 field_1A : 6;   
    };

    u32 temp = arg0;
    BitMaskStruct* ptr = (BitMaskStruct*)sub_08009C4C(arg1, arg2);
    
    ptr->field_0 = temp;
    ptr->field_C = arg3;
    ptr->field_10 = 0;
    ptr->field_12 = 0;
    
    gSomeBlend._11C8B++;
}
struct tempStruct;
typedef struct tempStruct tempStruct;
//extern "C" ASM_FUNC("asm/non_matching/rom/draw_message.inc", void draw_message());
extern "C" void sub_080089E0();
extern "C" void sub_080089F0(tempStruct *arg0);
extern "C" void sub_08008BAC(void*);
extern "C" void sub_08008F0C(void*);
extern "C" void sub_0800A07C();
extern "C" void sub_0800A090();
extern "C" void sub_0800A0A4(void*, s32);
extern Game gGame;
extern struct_02016028 gSomeBlend;

extern "C" void draw_message(void) {
    if (gSomeBlend._566c_1) {
        sub_080089E0();
        return;
    }
    switch ((s32)gGame.mode) {
        case 3: case 4: case 5:
            return;
        default:
            break;
    }

    vu16 temp_r3 = ((gSomeBlend._11C92_2) == 2) ? true : false;

    if (!gSomeBlend._121b6_1) {
        sub_08008F0C(&gSomeBlend._5778);
    }
    if (temp_r3) {
        sub_0800A0A4(&gSomeBlend._5778, 2);
    }
    if (gSomeBlend._11C8B != 0) {
        tempStruct* target = (tempStruct*)&gSomeBlend._5778;
        sub_080089F0(target);
        sub_08008BAC(target);
    }
    if (gSomeBlend._11C92_10) {
        sub_0800A07C();
        return;
    }
    if (gSomeBlend._11C92_20) {
        sub_0800A090();
    }
    

}

//extern "C" ASM_FUNC("asm/non_matching/rom/sub_080089E0.inc", void sub_080089E0());
extern "C" void sub_08008F0C(void*);                                 /* extern */
extern u8 gUnknown_0201B7A0;
//Could be autogened code? Very small func. Just keep that in mind for later class refactoring
extern "C" void sub_080089E0(void) {
    sub_08008F0C(&gUnknown_0201B7A0);
}

//extern "C" ASM_FUNC("asm/non_matching/rom/sub_080089F0.inc", void sub_080089F0());

extern "C" void sub_08008C28(void*, u16);
extern "C" void sub_08008ECC(u8* arg0, u8* arg1, s16* arg2);
extern "C" s32 sub_08009C84(u16, u16);
extern "C" s32 sub_08009CD8(u16, u16);
extern "C" u16 sub_08009DDC(u16);

typedef struct R4Bitfield {
    u32 low12 : 12;
    u32 high4 : 4;
    u32 _2b1pad : 1;
    u32 _2b2flag : 1;
    u32 _2middle8 :8;
} R4Bitfield;

typedef struct tempStruct {
    R4Bitfield _0;
    u8 pad_4[0x198 - 0x4];
    s32 _198;
    s32 _19C;
    u8 pad_19A[0x260 - 0x1A0];
    s32* _260;
    u8 pad_264[0x3168 - 0x264];
    u8 _3168[0x60];
    u8 _31C8[0x60];
    u16 _3228;
    u8 _322A_1 : 1;
    u8 pad_322A_2 : 7;
    u8 pad_322B;
    R4Bitfield* _322C;
    R4Bitfield _3230;
    u8 pad_3234[0x3670 - 0x3234];
    s32 _3670;
    s32 _3674;
    u8 pad_3678[0xC513 - 0x3678];
    u8 _C513;
    u8 pad_C514[0xC518 - 0xC514];
    u16 _C518;
};



typedef struct R6Bitfield {
    u32 R6field_00000007 : 3;
    u32 R6field_00000078 : 4;
    u32 R6field_0001FF80 : 10;
    u32 R6flag_00020000 : 1;
    
} R6Bitfield;

extern "C" void sub_080089F0(tempStruct *arg0) {
    u32 local_buffer[3];
    

    arg0->_322C = 0;
    R4Bitfield *var_r4 = (R4Bitfield*)arg0;
    s32 *var_r8 = &arg0->_198;
    u16 var_sl = arg0->_C513;
    
    if (var_sl == 0) return;
    
    s16 *SelectedInBuf2 = (s16 *) &local_buffer[2]; //r9
    R6Bitfield *var_r6 = (R6Bitfield *) &arg0->_260;

    while (true) {
        
        if ((*(u32*)var_r4 << (32 - 12)) != 0) {
            
            R4Bitfield* nextR4Field = arg0->_322C; 
            nextR4Field++;
            s16 *SelectedInBuf1 = (s16 *) &local_buffer[1]; //r5
            if (var_r4 != nextR4Field) sub_08008ECC((u8*)arg0, (u8*)var_r4, SelectedInBuf1);
            s32 temp = *(u32*)var_r4 << (32 - 18);
            R6Bitfield *spC = (R6Bitfield *) (((u8 *) var_r8) + 0xC8);
            if (temp >= 0) {

                u16 var_r0_2 = SelectedInBuf1[0] / 8;
                u32 UpperByteMask = 0xFFFF0000;
                local_buffer[2] &= UpperByteMask;
                local_buffer[2] |= var_r0_2;
               
                SelectedInBuf2[1] = SelectedInBuf1[1] / 8;
                
                var_r6->R6flag_00020000 = 0;
                var_r6->R6field_00000078 = var_r4->high4;

                var_r8[0] = sub_08009C84(SelectedInBuf2[0], SelectedInBuf2[1]);
                var_r8[1] = sub_08009CD8(SelectedInBuf2[0], SelectedInBuf2[1]);

                var_r6->R6field_0001FF80 = SelectedInBuf2[0] + (SelectedInBuf2[1] << 5);           
                var_r6->R6field_00000007 = ((u16*)SelectedInBuf1)[0] & 7;
                
                sub_08008C28((void *)var_r8, ((R4Bitfield *)var_r4)->low12);
                var_sl--;
            }
                
            var_r4->_2b2flag = 1;
            //FAKE MATCH
            u32 callResult = ((u32 (*)(u16))sub_08009DDC)(((R4Bitfield *)var_r4)->low12);
            
            SelectedInBuf1 = (s16*)(*(u16*)SelectedInBuf1);
            u16* writeAddr = (u16*)&local_buffer[1];
            callResult += (s32)SelectedInBuf1;

            writeAddr++;
            writeAddr--;
            *writeAddr = callResult;
            //FAKE MATCH END
                    
            arg0->_322A_1 = 1;
            arg0->_3228 = spC->R6field_0001FF80;

            CpuSmartSet(var_r8 + 2, (u8*) arg0 + 0x00003168, 0x60);
            CpuSmartSet(var_r8 + 26, (u8*) arg0 + 0x000031C8, 0x60);

            var_r6 += 0x33;
            var_r8 += 0x33;
            arg0->_322C = var_r4;

        }
        if ((void*)++var_r4 >= (void*)&arg0->_198) break;
        if (var_sl == 0) break;
    }
}
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008BAC.inc", void sub_08008BAC());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008C28.inc", void sub_08008C28());

extern "C" void sub_08008C70(void*);                                /* extern */
extern "C" void sub_08008D3C(void*, u16);                           /* extern */

extern "C" void sub_08008C28(void* arg0, u16 arg1){
    switch ((&gSomeBlend)->_11C92_2) {
    case 0:
        if(arg1) sub_08008C70(arg0);
        else sub_08008C70(arg0);
    case 1:
        break;
    case 2:
        sub_08008D3C(arg0, arg1);
        break;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008C70.inc", void sub_08008C70());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_63.inc", void nullsub_63());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008D3C.inc", void sub_08008D3C(void*, u16));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008E08.inc", void sub_08008E08());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008ECC.inc", void sub_08008ECC());

extern "C" void sub_08008ECC(u8* arg0,u8* arg1, s16* arg2) {
    s32 temp_r0 = arg1 - arg0;
    temp_r0 = Divide(temp_r0, 4);
    arg2[0]= (s16) (sub_08002FD4(temp_r0, 0x22) * 0xC);
    arg2[1] = (s16) ((&gSomeBlend)->_11C89 * Divide(temp_r0, 0x22));
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08008F0C.inc", void sub_08008F0C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009264.inc", void sub_08009264());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080092B0.inc", void sub_080092B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800932C.inc", void sub_0800932C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009394.inc", void sub_08009394());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080093F0.inc", void sub_080093F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800946C.inc", void sub_0800946C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009568.inc", void sub_08009568());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080096EC.inc", void sub_080096EC());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009828.inc", void sub_08009828());
extern "C" void sub_08009828(tempStruct *arg0_r8) {
    u32 local_buffer[2];
    arg0_r8->_322C = 0;
    R4Bitfield *var_r4_r5;
    s32 *var_r8_r7;
    
    switch ((s32)gGame.mode) {
        case 4: case 5:
            var_r4_r5 = &arg0_r8->_3230;
            var_r8_r7 = &arg0_r8->_3670;
            break;
        default:
            var_r4_r5 = &arg0_r8->_0;
            var_r8_r7 = &arg0_r8->_198;
            break;
    }
    R4Bitfield *holdVar_r4_r5 = var_r4_r5;
    s32 *holdVar_r8_r7 = var_r8_r7;
    u16 var_sl = arg0_r8->_C513;
    if (var_sl == 0) return;
    
    s16 *SelectedInBuf1 = (s16*)&local_buffer[0];
    R4Bitfield **nextR4Field;
    s16 *SelectedInBuf2 = (s16*)&local_buffer[1];
    
    R6Bitfield* var_r6 = (R6Bitfield*)(var_r8_r7 + 0x32);
    while (var_sl != 0) {
        if (((*(u32*)var_r4_r5 << 0x14) >> 0x14) != 0) {
            if (local_buffer);
            if (((*(u32*)var_r4_r5 << 0x14) >> 0x14) == 0xFE0) {
                var_r4_r5->low12 = 0;
                var_sl -= 1;
                arg0_r8->_C518 = var_r4_r5->_2middle8;
                
                var_r6 += 0x33;
                var_r8_r7 += 0x33;
                arg0_r8->_322C = 0;
                continue;
            } else {
                nextR4Field = &arg0_r8->_322C;
                if ((R4Bitfield*)var_r4_r5 != *nextR4Field + 1) {
                    sub_08008ECC((u8*)holdVar_r4_r5, (u8*)var_r4_r5, (s16*)local_buffer);
                    SelectedInBuf1[0] += arg0_r8->_C518;
                }

                u16 Var_r0_2 = SelectedInBuf1[0] / 8;
                u32 Mask1 = 0xFFFF0000;
                local_buffer[1] &= Mask1;
                local_buffer[1] |= Var_r0_2;
                SelectedInBuf2[1] = SelectedInBuf1[1] / 8;
                           //5                     //03E0 5                       //FC00 5
                s32 PackedBits = (&gSomeBlend)->_53b0;        
                PackedBits += (SelectedInBuf2[0] << 5) + (SelectedInBuf2[1] << 10);
                var_r6->R6field_00000078 = ((R4Bitfield*)var_r4_r5)->high4;
                
                var_r8_r7[0] = PackedBits;
                var_r8_r7[1] = sub_08001378(&(&gSomeBlend)->_50, 0, SelectedInBuf2[0], SelectedInBuf2[1]);
                var_r6->R6field_0001FF80 = PackedBits >> 0x5;
                var_r6->R6field_00000007 = SelectedInBuf1[0] & 7;
                sub_08008C28((void*)var_r8_r7, var_r4_r5->low12);
                SelectedInBuf1[0] += sub_08009DDC(var_r4_r5->low12);
                
                var_sl -= 1;
                
                arg0_r8->_322A_1 = 1;
                arg0_r8->_3228 = ((R6Bitfield*)var_r6)->R6field_0001FF80;

                CpuSmartSet(var_r8_r7 + 2, arg0_r8->_3168, 0x60);
                CpuSmartSet(var_r8_r7 + 0x1A, arg0_r8->_31C8, 0x60);

            }
            var_r6 += 0x33;
            var_r8_r7 += 0x33;
            arg0_r8->_322C = var_r4_r5;
        }
        var_r4_r5++;
        if ((u8*)var_r4_r5 >= (u8*)holdVar_r8_r7) break;
    }
}
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009A48.inc", void sub_08009A48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009AF4.inc", void sub_08009AF4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009B98.inc", void sub_08009B98());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009C4C.inc", void sub_08009C4C());

extern "C" void* sub_08009C4C(u16 arg0, u16 arg1) {
    return ((arg0 + (arg1 * 0x22)) * 4) + &gUnknown_0201B7A0;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009C68.inc", void sub_08009C68());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009C84.inc", s32 sub_08009C84(u16, u16));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009CD8.inc", s32 sub_08009CD8(u16, u16));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009D6C.inc", void sub_08009D6C());
//extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009DDC.inc", void sub_08009DDC());
extern "C" u16 sub_08009DDC(u16 arg0) {
    if ((gSomeBlend._11C92_1)) return gSomeBlend._11C88;  
    return sub_08002254((gSomeBlend._11C92_2), arg0);
}
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009E18.inc", void sub_08009E18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009E38.inc", void sub_08009E38());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009F10.inc", void sub_08009F10());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009F70.inc", void sub_08009F70());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08009FD4.inc", void sub_08009FD4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A07C.inc", void sub_0800A07C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A090.inc", void sub_0800A090());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A0A4.inc", void sub_0800A0A4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A1C4.inc", void sub_0800A1C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A240.inc", void sub_0800A240());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A2CC.inc", void sub_0800A2CC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A354.inc", void sub_0800A354());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A3B4.inc", void sub_0800A3B4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A3EC.inc", void sub_0800A3EC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A480.inc", void sub_0800A480());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A4C8.inc", void sub_0800A4C8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A678.inc", void sub_0800A678());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A8DC.inc", void sub_0800A8DC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800A9E0.inc", void sub_0800A9E0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AAC8.inc", void sub_0800AAC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AB64.inc", void sub_0800AB64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AB74.inc", void sub_0800AB74());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800ACA0.inc", void sub_0800ACA0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AD6C.inc", void sub_0800AD6C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800ADBC.inc", void sub_0800ADBC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AE2C.inc", void sub_0800AE2C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AF44.inc", void sub_0800AF44());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800AFC0.inc", void sub_0800AFC0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B00C.inc", void sub_0800B00C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B1FC.inc", void sub_0800B1FC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B358.inc", void sub_0800B358());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B474.inc", void sub_0800B474());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B504.inc", void sub_0800B504());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B614.inc", void sub_0800B614());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B63C.inc", void sub_0800B63C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B660.inc", void sub_0800B660());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800B7AC.inc", void sub_0800B7AC());

extern "C" void sub_0800BB54(InputState* input) {
    if ((s8)gGame._1_10 != 0) {
        sub_0800BBF4(input);
        return;
    }

    if (gSomeBlend._566c_1) {
        return;
    }

    Object* obj = get_obj_direct(0);

    obj->_bf_8 = 0;
    obj->_bf_10 = 0;

    if (obj->_87 == 3 && obj->speed) {
        sub_0800BC48(obj);
        return;
    }

    for (u16 i = 0; i < 5; i++) {
        obj = get_obj_direct(i);
        if ((s8)obj->_bc_0 != 0) {
            sub_08036BA4(obj);
            if (obj->speed) {
                sub_0800BE04(obj);
            }
        }
    }
}

extern "C" void sub_0800BBF4(InputState* input) {
    if (input->pressed & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        sub_0802610C(0);
        sub_080052E4(4);
        gGame._595b[1] = 0x15;
        gGame._595b[0] = 0x15;
        gGame._598c_2 = 1;
        gGame._5960 = 0x28;
    }
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800BC48.inc", void sub_0800BC48(Object*));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800BE04.inc", void sub_0800BE04(Object*));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800C030.inc", void sub_0800C030());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800C10C.inc", void sub_0800C10C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800C694.inc", void sub_0800C694());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800CBE0.inc", void sub_0800CBE0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800CCA8.inc", void sub_0800CCA8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800CDD0.inc", void sub_0800CDD0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800D0F0.inc", void sub_0800D0F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800D6F0.inc", void sub_0800D6F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800D814.inc", void sub_0800D814());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800DA8C.inc", void sub_0800DA8C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E338.inc", void sub_0800E338());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E450.inc", void sub_0800E450());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E4A0.inc", void sub_0800E4A0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E500.inc", void sub_0800E500());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E550.inc", void sub_0800E550());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E5B0.inc", void sub_0800E5B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E5FC.inc", void sub_0800E5FC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E654.inc", void sub_0800E654());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E6A0.inc", void sub_0800E6A0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E6FC.inc", void sub_0800E6FC());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_64.inc", void nullsub_64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800E860.inc", void sub_0800E860());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EA38.inc", void sub_0800EA38());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EBA0.inc", void sub_0800EBA0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EBD8.inc", void sub_0800EBD8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EBF8.inc", void sub_0800EBF8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EC30.inc", void sub_0800EC30());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800ECC8.inc", void sub_0800ECC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EDCC.inc", void sub_0800EDCC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EE50.inc", void sub_0800EE50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EED0.inc", void sub_0800EED0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EF9C.inc", void sub_0800EF9C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800EFF4.inc", void sub_0800EFF4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F040.inc", void sub_0800F040());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F314.inc", void sub_0800F314());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F454.inc", void sub_0800F454());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F580.inc", void sub_0800F580());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F5EC.inc", void sub_0800F5EC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800F99C.inc", void sub_0800F99C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800FC00.inc", void sub_0800FC00());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800FCE8.inc", void sub_0800FCE8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800FDA8.inc", void sub_0800FDA8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0800FDE8.inc", void sub_0800FDE8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080101F8.inc", void sub_080101F8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080104BC.inc", void sub_080104BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010528.inc", void sub_08010528());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801059C.inc", void sub_0801059C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080105F4.inc", void sub_080105F4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010624.inc", void sub_08010624());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080106CC.inc", void sub_080106CC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010808.inc", void sub_08010808());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801084C.inc", void sub_0801084C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801097C.inc", void sub_0801097C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010A40.inc", void sub_08010A40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010C48.inc", void sub_08010C48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08010F58.inc", void sub_08010F58());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801124C.inc", void sub_0801124C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011564.inc", void sub_08011564());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080115C4.inc", void sub_080115C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080117C4.inc", void sub_080117C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080118D0.inc", void sub_080118D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011A40.inc", void sub_08011A40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011A80.inc", void sub_08011A80());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011ABC.inc", void sub_08011ABC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011BA4.inc", void sub_08011BA4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011C58.inc", void sub_08011C58());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011DA4.inc", void sub_08011DA4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011EC0.inc", void sub_08011EC0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011F18.inc", void sub_08011F18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08011F74.inc", void sub_08011F74());
extern "C" ASM_FUNC("asm/non_matching/rom/draw_background.inc", void draw_background());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080120F4.inc", void sub_080120F4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801216C.inc", void sub_0801216C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080121D0.inc", void sub_080121D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012210.inc", void sub_08012210());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012238.inc", void sub_08012238());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801230C.inc", void sub_0801230C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012354.inc", void sub_08012354());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080123B0.inc", void sub_080123B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012408.inc", void sub_08012408());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012464.inc", void sub_08012464());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080124C0.inc", void sub_080124C0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080124F8.inc", void sub_080124F8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012590.inc", void sub_08012590());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801263C.inc", void sub_0801263C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012790.inc", void sub_08012790());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080127BC.inc", void sub_080127BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012830.inc", void sub_08012830());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080129BC.inc", void sub_080129BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012AD0.inc", void sub_08012AD0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012BD8.inc", void sub_08012BD8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012C1C.inc", void sub_08012C1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012C48.inc", void sub_08012C48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012CBC.inc", void sub_08012CBC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012CEC.inc", void sub_08012CEC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012D50.inc", void sub_08012D50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012DB0.inc", void sub_08012DB0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012E50.inc", void sub_08012E50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012EA8.inc", void sub_08012EA8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012F2C.inc", void sub_08012F2C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08012FBC.inc", void sub_08012FBC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080131B0.inc", void sub_080131B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080133A0.inc", void sub_080133A0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080133D8.inc", void sub_080133D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013578.inc", void sub_08013578());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080135AC.inc", void sub_080135AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801365C.inc", void sub_0801365C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801368C.inc", void sub_0801368C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080136BC.inc", void sub_080136BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013748.inc", void sub_08013748());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013778.inc", void sub_08013778());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080137A8.inc", void sub_080137A8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013880.inc", void sub_08013880());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080138FC.inc", void sub_080138FC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013998.inc", void sub_08013998());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080139AC.inc", void sub_080139AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080139FC.inc", void sub_080139FC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013A34.inc", void sub_08013A34());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013A40.inc", void sub_08013A40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013B6C.inc", void sub_08013B6C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013C48.inc", void sub_08013C48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013CC8.inc", void sub_08013CC8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013D38.inc", void sub_08013D38());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08013EB8.inc", void sub_08013EB8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801402C.inc", void sub_0801402C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014074.inc", void sub_08014074());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080140D0.inc", void sub_080140D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080141D0.inc", void sub_080141D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014244.inc", void sub_08014244());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080142F0.inc", void sub_080142F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801439C.inc", void sub_0801439C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014464.inc", void sub_08014464());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080144E8.inc", void sub_080144E8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014584.inc", void sub_08014584());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080145A8.inc", void sub_080145A8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080145BC.inc", void sub_080145BC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080145F4.inc", void sub_080145F4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014640.inc", void sub_08014640());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801468C.inc", void sub_0801468C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014798.inc", void sub_08014798());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801480C.inc", void sub_0801480C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080148D4.inc", void sub_080148D4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080149D4.inc", void sub_080149D4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014A40.inc", void sub_08014A40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014AEC.inc", void sub_08014AEC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014B98.inc", void sub_08014B98());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014C84.inc", void sub_08014C84());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014CFC.inc", void sub_08014CFC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014D74.inc", void sub_08014D74());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014DEC.inc", void sub_08014DEC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014E04.inc", void sub_08014E04());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014E1C.inc", void sub_08014E1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014EB0.inc", void sub_08014EB0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014F28.inc", void sub_08014F28());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014FAC.inc", void sub_08014FAC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08014FE0.inc", void sub_08014FE0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015090.inc", void sub_08015090());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080150F8.inc", void sub_080150F8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015174.inc", void sub_08015174());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801526C.inc", void sub_0801526C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015278.inc", void sub_08015278());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080152B4.inc", void sub_080152B4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080152E0.inc", void sub_080152E0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015360.inc", void sub_08015360());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015440.inc", void sub_08015440());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080154C0.inc", void sub_080154C0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015540.inc", void sub_08015540());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080155C0.inc", void sub_080155C0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015668.inc", void sub_08015668());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015730.inc", void sub_08015730());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080157C4.inc", void sub_080157C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015844.inc", void sub_08015844());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080158C4.inc", void sub_080158C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080158F0.inc", void sub_080158F0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801591C.inc", void sub_0801591C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015988.inc", void sub_08015988());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015A64.inc", void sub_08015A64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015CEC.inc", void sub_08015CEC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015E50.inc", void sub_08015E50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015ED0.inc", void sub_08015ED0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015F50.inc", void sub_08015F50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08015FD0.inc", void sub_08015FD0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801603C.inc", void sub_0801603C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016108.inc", void sub_08016108());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080161D4.inc", void sub_080161D4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080162A8.inc", void sub_080162A8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801632C.inc", void sub_0801632C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080163E4.inc", void sub_080163E4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801645C.inc", void sub_0801645C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016528.inc", void sub_08016528());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080166D8.inc", void sub_080166D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080167B0.inc", void sub_080167B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801685C.inc", void sub_0801685C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080168D8.inc", void sub_080168D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016984.inc", void sub_08016984());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016A18.inc", void sub_08016A18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016A28.inc", void sub_08016A28());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016A48.inc", void sub_08016A48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016A60.inc", void sub_08016A60());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016A80.inc", void sub_08016A80());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_65.inc", void nullsub_65());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_66.inc", void nullsub_66());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016AA8.inc", void sub_08016AA8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016AE4.inc", void sub_08016AE4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016AF4.inc", void sub_08016AF4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016B14.inc", void sub_08016B14());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016B34.inc", void sub_08016B34());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016B54.inc", void sub_08016B54());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016B6C.inc", void sub_08016B6C());
extern "C" ASM_FUNC("asm/non_matching/rom/nullsub_67.inc", void nullsub_67());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016BB8.inc", void sub_08016BB8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016BC4.inc", void sub_08016BC4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016BE4.inc", void sub_08016BE4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C04.inc", void sub_08016C04());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C10.inc", void sub_08016C10());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C1C.inc", void sub_08016C1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C28.inc", void sub_08016C28());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C34.inc", void sub_08016C34());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C40.inc", void sub_08016C40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C4C.inc", void sub_08016C4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C58.inc", void sub_08016C58());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C64.inc", void sub_08016C64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C70.inc", void sub_08016C70());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C7C.inc", void sub_08016C7C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C88.inc", void sub_08016C88());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016C94.inc", void sub_08016C94());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016CA0.inc", void sub_08016CA0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016CB0.inc", void sub_08016CB0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016CBC.inc", void sub_08016CBC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016D08.inc", void sub_08016D08());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016D54.inc", void sub_08016D54());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016E44.inc", void sub_08016E44());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016E64.inc", void sub_08016E64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016EE8.inc", void sub_08016EE8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016F1C.inc", void sub_08016F1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016F4C.inc", void sub_08016F4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08016F68.inc", void sub_08016F68());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080172D4.inc", void sub_080172D4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080173B8.inc", void sub_080173B8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017488.inc", void sub_08017488());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017584.inc", void sub_08017584());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017648.inc", void sub_08017648());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080177D0.inc", void sub_080177D0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080179A8.inc", void sub_080179A8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017A4C.inc", void sub_08017A4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017B84.inc", void sub_08017B84());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017D28.inc", void sub_08017D28());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017E64.inc", void sub_08017E64());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017F48.inc", void sub_08017F48());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08017F90.inc", void sub_08017F90());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801856C.inc", void sub_0801856C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018630.inc", void sub_08018630());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018694.inc", void sub_08018694());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801870C.inc", void sub_0801870C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080187C4.inc", void sub_080187C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018818.inc", void sub_08018818());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018880.inc", void sub_08018880());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018910.inc", void sub_08018910());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018988.inc", void sub_08018988());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018AC4.inc", void sub_08018AC4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018B30.inc", void sub_08018B30());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018ED0.inc", void sub_08018ED0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08018F9C.inc", void sub_08018F9C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019078.inc", void sub_08019078());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080190B8.inc", void sub_080190B8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019274.inc", void sub_08019274());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019320.inc", void sub_08019320());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080193CC.inc", void sub_080193CC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019408.inc", void sub_08019408());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801952C.inc", void sub_0801952C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080195B0.inc", void sub_080195B0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801960C.inc", void sub_0801960C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801965C.inc", void sub_0801965C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080198A4.inc", void sub_080198A4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_080199C8.inc", void sub_080199C8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019B88.inc", void sub_08019B88());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019BF0.inc", void sub_08019BF0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019D04.inc", void sub_08019D04());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019D9C.inc", void sub_08019D9C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019E40.inc", void sub_08019E40());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019EE8.inc", void sub_08019EE8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019F44.inc", void sub_08019F44());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019F90.inc", void sub_08019F90());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_08019FE4.inc", void sub_08019FE4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A1B8.inc", void sub_0801A1B8());

extern "C" void sub_0801A218(MovementVector* vec) {
    for (u16 i = 0; i < 3; i++)
        sub_0801A238(i, vec);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A238.inc", void sub_0801A238(s32, MovementVector*));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A2B4.inc", void sub_0801A2B4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A2DC.inc", void sub_0801A2DC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A3AC.inc", void sub_0801A3AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A3D8.inc", void sub_0801A3D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A434.inc", void sub_0801A434());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A530.inc", void sub_0801A530());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A548.inc", void sub_0801A548());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A57C.inc", void sub_0801A57C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A594.inc", void sub_0801A594());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A5C0.inc", void sub_0801A5C0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A5EC.inc", void sub_0801A5EC());

extern "C" u16 sub_0801A604() {
    return sub_0801A638(gGame._e >> 6);
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A61C.inc", void sub_0801A61C());

extern "C" u16 sub_0801A638(u16 index) {
    u8 flags = gGame.bg_flags[index]._0_1;
    return (flags + 1) << 8;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A650.inc", void sub_0801A650());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A678.inc", void sub_0801A678());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A694.inc", void sub_0801A694());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A6AC.inc", void sub_0801A6AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A6C4.inc", void sub_0801A6C4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A6D8.inc", void sub_0801A6D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A764.inc", void sub_0801A764());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A7AC.inc", void sub_0801A7AC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A7CC.inc", void sub_0801A7CC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A868.inc", void sub_0801A868());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A904.inc", void sub_0801A904());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A978.inc", void sub_0801A978());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801A9D8.inc", void sub_0801A9D8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AA1C.inc", void sub_0801AA1C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AA70.inc", void sub_0801AA70());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AAB0.inc", void sub_0801AAB0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AB00.inc", void sub_0801AB00());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AB38.inc", void sub_0801AB38());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AB50.inc", void sub_0801AB50());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AD4C.inc", void sub_0801AD4C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AD84.inc", void sub_0801AD84());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801ADA0.inc", void sub_0801ADA0());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801ADCC.inc", void sub_0801ADCC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AE18.inc", void sub_0801AE18());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AE58.inc", void sub_0801AE58());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AF00.inc", void sub_0801AF00());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801AFA4.inc", void sub_0801AFA4());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B040.inc", void sub_0801B040());

extern "C" DoorDestinationInfo* getFirstDoorOnMap(u16 mapID) {
    DoorDestinationInfo* info = getDoorDestinationInfo(0);

    for (u16 i = 0; i < 1500; i++, info++) {
        if (info->mapID == mapID) {
            return info;
        }
    }

    return NULL;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B0F8.inc", void sub_0801B0F8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B144.inc", void sub_0801B144());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B1BC.inc", void sub_0801B1BC());

extern "C" u16 isMapGraphicsValid(u16 mapID) {
    MapGraphicsInfo* graphicsInfo = getMapGraphicsInfo(mapID);

    for (u16 i = 0; i < 12; i++) {
        if (graphicsInfo->tileSetIndices[i] == -1) {
            return 0;
        }
    }

    if (graphicsInfo->paletteIndex == -1) {
        return 0;
    }

    return 1;
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B314.inc", void sub_0801B314());

extern "C" u8 getMusicIDForRoom(u16 roomIndex) {
    return gMapMusicTable[roomIndex];
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B3B4.inc", void sub_0801B3B4());
extern "C" ASM_FUNC("asm/non_matching/rom/getMapGraphicsInfo.inc", MapGraphicsInfo* getMapGraphicsInfo(u16));
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B3F8.inc", void sub_0801B3F8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B3FC.inc", void sub_0801B3FC());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B414.inc", void sub_0801B414());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B42C.inc", void sub_0801B42C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B444.inc", void sub_0801B444());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B45C.inc", void sub_0801B45C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B480.inc", void sub_0801B480());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B498.inc", void sub_0801B498());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B4C4.inc", void sub_0801B4C4());

extern "C" DoorDestinationInfo* getDoorDestinationInfo(u16 index) {
    return &((DoorDestinationInfo*)Blob_GetEntry(&gDoorDestinationTable, 0))[index];
}

extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B504.inc", void sub_0801B504());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B520.inc", void sub_0801B520());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B53C.inc", void sub_0801B53C());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B558.inc", void sub_0801B558());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B574.inc", void sub_0801B574());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B5E8.inc", void sub_0801B5E8());
extern "C" ASM_FUNC("asm/non_matching/rom/sub_0801B7D8.inc", void sub_0801B7D8());
