#include "battle/guest.h"
#include "battle/irc.h"
#include "gba/gba.h"
#include "structs.h"

static void main_loop();
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

struct struct_020047E0 {
    u8 _0;
    u8 _1[3];
    u8 _4;
    u8 _5[5];
    u16 _a;
    u8 filler[0x30];
    u8 mIQ;
};
extern struct_020047E0 gEncounter;

extern "C" void clear_ram();
extern "C" void clear_gfx();
extern "C" void copy_ram_magic();
extern "C" void setup_vectors();
extern "C" void seed_rng();
extern "C" void init_audio();
extern "C" void init_sram();
extern "C" void DoReset();
extern "C" void init_all_data();
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
extern "C" void startSong_battle(u32);
extern "C" void sub_08026C28();
extern "C" void init_battle();
extern "C" void snd_vsync_off();
extern "C" void sub_08026CE4();
extern "C" void sub_08026CD0();
extern "C" void set_event_flag(u32, u32);
extern "C" void sub_08056740();
extern "C" void sub_0805850C();
extern "C" void sub_0805BA98();
extern "C" void sub_0805A2DC();
extern "C" void snd_vsync_on();
extern "C" void sub_0805ACF4();
extern "C" void IntrMain();
extern "C" void snd_vsync();
extern "C" void snd_main();
extern "C" void sub_0800303C(u32);
extern "C" void init_save();
extern "C" void sub_08000BE8();
extern "C" u32 get_flag(u32);
extern "C" void init_save();
extern "C" void sub_08000BE8();
extern "C" u32 get_misctext_len(u32);
extern "C" void memFill(void*, u32, s32);
extern "C" u32 get_misctext_msg(u32, u32);
extern "C" void copyText(void*, u32, s16);
extern "C" void sub_0800272C();
extern "C" void sub_0805B528();
extern "C" void sub_080019DC(void*, u32);
extern "C" void memclear(void*, u32);

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
extern const IrqTable gUnknown_080C17A0;
extern IrqTable gIntrHandlers;
extern u8 gIntrVector;
extern const char gUnknown_08CDB8A8[];
extern u8 gUnknown_03000008;
extern void* gUnknown_02015E38;

extern "C" void AgbMain() {
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS2_S_1 | WAITCNT_WS2_N_3 | WAITCNT_WS1_S_1 |
                  WAITCNT_WS1_N_3 | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    REG_IE = INTR_FLAG_GAMEPAK;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_MULTI_MODE;

    clear_ram();
    clear_gfx();
    copy_ram_magic();
    setup_vectors();
    seed_rng();

    u32 keys = ~REG_KEYINPUT;
    if (((keys << 0x16) >> 0x16) == 0xf) {
        u8* s = &gUnknown_02004848._0;
        s[1] |= 2;
    }

    init_audio();
    init_sram();

    main_loop();

    DoReset();
}

void main_loop() {
    do {
        switch (gUnknown_02004848._0) {
        case 0:
            init_all_data();
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
                setup_vectors();
                sub_080512CC(0);
            }
            break;
        }
        setup_vectors();
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
    if (gEncounter._0 == 3) {
        gEncounter.mIQ = 1;
        startSong_battle(0);
        sub_08026C28();
        gUnknown_02004848._0 = 5;
        gUnknown_02005080 = 3;
        return;
    }

    init_battle();
    gEncounter._4 = 0;

    if (gEncounter._0 == 2) {
        gUnknown_02004848._0 = 9;
        gUnknown_02004100 = 4;
        snd_vsync_off();
        return;
    }

    switch (gEncounter.mIQ) {
    case 1:
        sub_08026C28();
        break;
    case 3:
        if (gEncounter._0 == 1 && gEncounter._a == 23) {
            sub_08026CD0();
        } else {
            if (gSave._708 == 0) {
                gUnknown_02004848._0 = 10;
                gUnknown_020047D0 = 1;
                snd_vsync_off();
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
    snd_vsync_off();
    sub_0805A2DC();
    snd_vsync_on();
    gUnknown_02004848._0 = 14;
}

void sub_080007CC(void) {
    u32 tmp = gUnknown_02004848.flags_s8._1;
    if (tmp != 0) {
        gUnknown_02004848._0 = 10;
        gUnknown_020047D0 = 0;
        return;
    }

    snd_vsync_off();
    sub_0805ACF4();
    snd_vsync_on();

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

void setup_vectors() {
    REG_IME = 0;
    REG_IE &= ~7;
    REG_DISPSTAT &= ~0x38;
    memcpy((void*)&gIntrHandlers, (void*)&gUnknown_080C17A0, sizeof(gUnknown_080C17A0));
    DmaCopy32(3, IntrMain, &gIntrVector, 0x800);
    INTR_VECTOR = &gIntrVector;
    REG_IME = 1;
}

extern "C" void sub_080008AC() {
    snd_vsync();
    snd_main();

    REG_IME = 0;
    INTR_CHECK = 1;
    REG_IME = 1;
}

extern "C" void sub_080008D0() {
    REG_IF = 2;
}

extern "C" void sub_080008DC() {}

void seed_rng() {
    gUnknown_02004848._0 = 13;
    gUnknown_02004848.flags_s8._2 = 0;
    sub_0800303C(0x1105);
}

void init_sram() {
    sub_080512CC(1);
}

void init_all_data() {
    init_save();
    sub_08000BE8();
}

void sub_08000920() {
    u16 val = get_flag(157);
    init_save();
    set_event_flag(157, val);
    sub_08000BE8();
}

void init_save() {
    u16 i;

    for (i = 0; i < 5; ++i) {
        gSave.party[i] = 0;
    }

    gSave.dp_pocket = 0;
    gSave.dp_bank = 0;

    for (i = 0; i < 0x100; ++i) {
        gSave.key_items[i] = 0;
        gSave.item_guy[i] = 0;
    }

    gSave.playtime = 0;
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
        gSave.shop_flags[i] = 0;
        gSave._380[i] = 0;
        gSave.mIQ0[i] = 0;
    }

    for (i = 0; i < 0x80; ++i) {
        gSave.giftbox_flags[i] = 0;
    }

    gSave._480 = 1;

    for (i = 0; i < 0x80; ++i) {
        gSave._482[i] = 0;
        gSave._582[i] = 100;
    }

    u16 tmp = get_misctext_len(5);

    memFill(gSave.hinawa_name, sizeof gSave.hinawa_name, -1);
    copyText(gSave.hinawa_name, get_misctext_msg(5, 8), tmp);
    memFill(gSave.claus_name, sizeof gSave.claus_name, -1);
    copyText(gSave.claus_name, get_misctext_msg(5, 5), tmp);
    memFill(gSave.fav_food, sizeof gSave.fav_food, -1);
    memFill(gSave.fav_thing, sizeof gSave.fav_thing, -1);
    memFill(gSave.playername_short, sizeof gSave.playername_short, -1);
    memFill(gSave.playername, sizeof gSave.playername, -1);

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
        gSave.enemy_seen_front[i] = 0;
        gSave.enemy_seen_back[i] = 0;
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
    u32 tmp = get_misctext_len(5);
    for (u16 i = 0; i < 0x10; ++i) {
        memFill(&gCharStats[i].name, sizeof gCharStats[i].name, -1);
        copyText(&gCharStats[i].name, get_misctext_msg(6, i), tmp);
    }
    gCharStats[0].charNo = 0;
    gCharStats[0].spriteNo = 0;
    gCharStats[1].charNo = 1;
    gCharStats[1].spriteNo = 1;
    gCharStats[2].charNo = 2;
    gCharStats[2].spriteNo = 3;
    gCharStats[3].charNo = 3;
    gCharStats[3].spriteNo = 15;
    gCharStats[4].charNo = 4;
    gCharStats[4].spriteNo = 11;
    gCharStats[5].charNo = 5;
    gCharStats[5].spriteNo = 9;
    gCharStats[6].charNo = 6;
    gCharStats[6].spriteNo = 18;
    gCharStats[7].charNo = 7;
    gCharStats[7].spriteNo = 14;
    gCharStats[8].charNo = 8;
    gCharStats[8].spriteNo = 32;
    gCharStats[9].charNo = 9;
    gCharStats[9].spriteNo = 116;
    gCharStats[10].charNo = 10;
    gCharStats[10].spriteNo = 86;
    gCharStats[11].charNo = 11;
    gCharStats[11].spriteNo = 88;
    gCharStats[12].charNo = 12;
    gCharStats[12].spriteNo = 17;
    gCharStats[13].charNo = 13;
    gCharStats[13].spriteNo = 5;
    gCharStats[14].charNo = 0;
    gCharStats[14].spriteNo = 0;
    gCharStats[15].charNo = 0;
    gCharStats[15].spriteNo = 0;
    sub_0805B528();
}

extern "C" u8 sub_08000D54() {
    return gUnknown_02004848.flags_u8._1;
}

extern "C" void sub_08000D64(volatile u16 a) {
    gUnknown_02004848.flags_s8._1 = a;
}

extern "C" void sub_08000D88(void) {
    char* dest = (char*)IWRAM_START;

    for (u16 i = 0; i < 8; ++i, ++dest) {
        u32 tmp = gUnknown_02004848.flags_u8._1;
        if (tmp) {
            *dest = gUnknown_08CDB8A8[i];
        } else {
            *dest = '\0';
        }
    }
}

extern "C" void copy_ram_magic() {
    char* dest = (char*)IWRAM_START;

    for (u16 i = 0; i < 8; ++i, ++dest) {
        if (*dest != gUnknown_08CDB8A8[i]) {
            gUnknown_02004848.flags_u8._1 = 0;
            return;
        }
    }
    gUnknown_02004848.flags_u8._1 = 1;
}

void clear_ram(void) {
    sub_080019DC((void*)EWRAM_START, EWRAM_SIZE);
    sub_080019DC(&gUnknown_03000008, 0x7D98);
}

void clear_gfx() {
    memclear((void*)VRAM, VRAM_SIZE);
    memclear((void*)PLTT, PLTT_SIZE);
    memclear((void*)OAM, OAM_SIZE);
}

extern "C" void sub_08000E5C(Unknown_02016078* arg0) {
    // Entry8Byte* ptr1 = &arg0->entries_2000[0];

    OAMEntry* oam_ptr = arg0->oam;
    u16 i;

    // Initialize OAM entries
    for (i = 0; i < 128; i++, oam_ptr++) {
        oam_ptr->x_coord = 240;
        oam_ptr->y_coord = 160;
        oam_ptr->obj_shape = 0;
        oam_ptr->obj_size = 0;

        oam_ptr->rot_scale = 2;
    }

    Entry8Byte_Alt* ptr2 = &arg0->entries_2500[0];

    // Clear second array (32 entries)
    for (i = 0; i < 32; i++, ptr2++) {
        ptr2->field0 = 0;
        ptr2->field2 = 0;
        ptr2->field4 = 0;
        ptr2->field6 = 0;
    }

    // Clear additional fields
    arg0->oam_counter = 0;
    arg0->_2C4A = 0;
}

extern "C" OAMEntry* sub_08000F04(Unknown_02016078* graphics, u16 count) {
    OAMEntry* first_entry = &graphics->oam[graphics->oam_counter];  // Starting OAM entry
    OAMEntry* current_entry = first_entry;

    // Process count number of OAM entries
    for (u16 i = 0; i < count; i++, current_entry++, graphics->oam_counter++) {
        current_entry->h_flip = 0;      // Clear horizontal flip
        current_entry->v_flip = 0;      // Clear vertical flip
        current_entry->color_mode = 0;  // Set to 16 colors/16 palettes
        current_entry->obj_mode = 0;    // Set to normal mode
        current_entry->mosaic = 0;      // Disable mosaic
        current_entry->priority = 1;    // Set priority to 1
        current_entry->rot_scale = 0;   // Disable rotation/scaling
        current_entry->unused1 = 0;     // Clear unused bits
        current_entry->unused = 0;      // Clear unused field
    }

    return first_entry;
}

static void sub_08000FA0(Unknown_02016078* graphics, u16 count, u16 priority) {
    // Start from the last allocated OAM entry and work backwards
    OAMEntry* current_entry = sub_08000F04(graphics, 0) - 1;

    // Update priority for 'count' entries working backwards
    for (u16 i = 0; i < count; i++, current_entry--) {
        current_entry->priority = priority;
    }
}

static Entry8Byte_Alt* sub_08000FE4(Unknown_02016078* graphics, u16 count) {
    Entry8Byte_Alt* first_entry = &graphics->entries_2500[graphics->_2C4A];
    graphics->_2C4A += count;
    return first_entry;
}

ASM_FUNC("asm/non_matching/main/sub_0800100C.inc", void sub_0800100C(void* p, u32 a));

void sub_08001138(void* a, u16 b) {
    gUnknown_02015E38 = a;
    sub_08001158(0, b - 1);
}

ASM_FUNC("asm/non_matching/main/sub_08001158.inc", void sub_08001158(u16 a, u16 b));
