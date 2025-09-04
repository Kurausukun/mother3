#ifndef STRUCTS_H
#define STRUCTS_H

#include "global.h"

typedef struct MoveInfo {
    u32 effect;
    u32 element;
    u32 target;
    u8 atk_mult;
    u16 heal_lo;
    u16 heal_hi;
    u8 ailment;
    u8 ailment_chance;
    u8 action;
    u32 priority;
    u16 msg_no;
    u8 has_dim;
    u8 anim_no;
    u8 anim_success;
    u16 sfx_no;
    u8 miss_chance;
    u8 smash_chance;
    u8 redirectable;
    u8 redirectable2;
} MoveInfo;

typedef struct CharStats {
    u8 charNo;
    u8 spriteNo;
    u8 name[16];
    u8 level;
    u32 xp;
    s32 curHP;
    s16 curPP;
    s32 maxHP;
    s16 maxPP;
    u8 _26[2];
    u8 offense;
    u8 defense;
    u8 iq;
    u8 speed;
    u8 _2c;
    u8 _2d;
    u8 _2e;
    u8 _2f;
    u16 ailments;
    u16 _32;
    u8 weapon;
    u8 body;
    u8 head;
    u8 other;
    u32 equip_lyt;
    u8 inventory[16];
    u16 item_timers[16];
} CharStats;
extern CharStats gCharStats[];
static_assert(sizeof(CharStats) == 0x6c);

enum ItemType {
    Weapon,
    BodyArmor,
    Headgear,
    Armgear,
    Food,
    StatusHeal,
    Damage,
    SpecialEff,
    Key,
    UnusedKey
};

enum EquipFlags { _1, Flint, Lucas, Duster, Kumatora, Boney, Salsa, _80 };

// struct ItemData {
//     u32 id;
//     ItemType type;
//     u16 key_item_flags;
//     u16 sell_price;
//     EquipFlags equip_flags;
//     s32 hp_increase;
//     s32 pp_increase;
//     s8 off_increase;
//     s8 def_increase;
//     s8 iq_increase;
//     s8 spd_increase;
//     s8 knd_increase;
//     u8 status_protect[22];
//     u8 elem_protect[5];
//     u8 attack_type[5];
//     u8 gen_info[40];
//     u32 battle_info;
// };

struct Object {
    s16 xpos;
    s16 ypos;
    u8 _4_0 : 5;
    u8 _4_1 : 3;
    u8 filler[0x1b];
    u16 _20;
    u16 _22;
    u8 _24[0x10];
    u32 speed;
    u8 _38[0x3c];
    u8 _74[0x11]; // size is a guess
    u8 character;
    u8 _86;
    u8 _87;
    u16 _88;
    u8 _8a;
    u8 _8b;
    u8 _8c[2];
    u16 _8e[12];
    u16 _a6;
    u16 _a8;
    u16 _aa[2];
    u16 _ae;
    u16 _b0;
    u16 _b2;
    u16 _b4[2];
    u8 _b8[4];
    u8 _bc_0 : 1;
    u8 _bc_1 : 1;
    u8 _bc_2 : 3;
    u8 _bc_3 : 1;
    u8 _bc_4 : 1;
    u8 _bc_5 : 1;
    u8 _bd_0 : 3;
    u8 _bd_1 : 2;
    u8 _bd_2 : 3;
    u8 _be;
    u8 _bf_1 : 6;
    u8 _bf_2 : 1;
    u8 _bf_3 : 1;
    u8 _c0[7];
    u8 _c7_0 : 1;
    u8 _c7_1 : 1;
    u8 _c7_2 : 1;
    u8 _c7_3 : 1;
    u8 _c7_4 : 4;
    u8 _c8_0 : 5;
    u8 _c8_1 : 1;
    u8 _c8_2 : 1;
    u8 _c8_3 : 1;
    u8 _c9_0 : 1;
    u8 _c9_1 : 2;
    u8 _c9_2 : 5;
    u8 _ca;
    u8 _cb_0 : 3;
    u8 _cb_1 : 1;
    u8 _cb_2 : 4;
};

/* size: 8 bytes */
typedef struct OAMEntry {
    // Attribute 0 (0x00-0x01)
    u16 y_coord : 8;     // 0x00 - Y coordinate (0-255)
    u16 rot_scale : 2;   // 0x01 bit 8 - Rotation/Scaling flag
    u16 obj_mode : 2;    // 0x01 bits 10-11 - OBJ mode
    u16 mosaic : 1;      // 0x01 bit 12 - Mosaic
    u16 color_mode : 1;  // 0x01 bit 13 - 16/256 colors
    u16 obj_shape : 2;   // 0x01 bits 14-15 - Square/Horizontal/Vertical

    // Attribute 1 (0x02-0x03)
    u16 x_coord : 9;   // bits 0-8 - X coordinate
    u16 unused1 : 3;   // bits 9-11 - Not used
    u16 h_flip : 1;    // bit 12 - Horizontal flip
    u16 v_flip : 1;    // bit 13 - Vertical flip
    u16 obj_size : 2;  // bits 14-15 - Size

    // Attribute 2 (0x04-0x05)
    u16 tile_num : 10;    // 0x04 bits 0-9 - Tile/character number
    u16 priority : 2;     // 0x04 bits 10-11 - Priority vs BG
    u16 palette_num : 4;  // 0x04 bits 12-15 - Palette number

    u16 unused;  // 0x06-0x07 - Rotation/scaling data
} OAMEntry;
static_assert(sizeof(OAMEntry) == 0x8);

typedef struct Entry8Byte_Alt {
    volatile u16 field0;  // 0x00
    volatile u16 field2;  // 0x02
    volatile u16 field4;  // 0x04
    volatile u16 field6;  // 0x06
} Entry8Byte_Alt;
static_assert(sizeof(OAMEntry) == 0x8);

typedef struct Unknown_02016078 {
    /* 0x0000 / 0x0050 */ u8 _0[0x800];
    /* 0x0800 / 0x0850 */ u8 _800[0x800];
    /* 0x1000 / 0x1050 */ u8 _1000[0x800];
    /* 0x1800 / 0x1850 */ u8 _1800[0x800];
    /* 0x2000 / 0x2050 */ OAMEntry oam[128];
    /* 0x2400 / 0x2450 */ u8 pad_2400[0x2500 - 0x2400];
    /* 0x2500 / 0x2550 */ Entry8Byte_Alt entries_2500[32];
    /* 0x2600 / 0x2650 */ u8 pad_2600[0x2700 - 0x2600];
    /* 0x2700 / 0x2750 */ vu16 _2700[0x20][0x10];
    /* 0x2C00 / 0x2C50 */ u8 pad_2C00[0x2C40 - 0x2B00];
    /* 0x2C40 / 0x2C90 */ vu16 _2C40;
    /* 0x2C42 / 0x2C92 */ vu16 _2C42;
    /* 0x2C44 / 0x2C94 */ vu16 _2C44;
    /* 0x2C46 / 0x2C96 */ vu16 _2C46;
    /* 0x2C48 / 0x2C98 */ vu16 oam_counter;
    /* 0x2C4A / 0x2C9A */ vu16 _2C4A;
    /* 0x2C4C / 0x2C9C */ vu8 r;
    /* 0x2C4D / 0x2C9D */ vu8 g;
    /* 0x2C4E / 0x2C9E */ vu8 b;
    /* 0x2C4F / 0x2C9F */ u8 pad_2C4F[0x2C50 - 0x2C4F];
} Unknown_02016078;

typedef struct Unknown_02018CC8 {
    u16 _0;
    u16 _2;
    s16 _4;
    u16 _6;
    u16 _8;
    u16 _A;
    u16 _C;
    u8 _E_0 : 1;
    u8 pad_F[0x10 - 0xF];
} Unknown_02018CC8;
static_assert(sizeof(Unknown_02018CC8) == 0x10);

typedef struct struct_02016028 {
    /* 0x00 */ vu16 bldcnt;
    /* 0x02 */ vu16 bldalpha;
    /* 0x04 */ vu16 bldy;
    /* 0x06 */ u8 pad_6[0x8 - 0x6];
    /* 0x08 */ vu16 dispcnt;
    /* 0x0A */ vu16 bgcnt[4];
    /* 0x12 */ vu16 _12[4];
    /* 0x1A */ vu16 _1A[4];
    /* 0x22 */ vu16 _22;
    /* 0x24 */ vu16 _24;
    /* 0x26 */ vu16 _26;
    /* 0x28 */ vu16 _28;
    /* 0x2A */ vu16 _2A;
    /* 0x2C */ vu16 _2C;
    /* 0x2E */ vu16 _2E;
    /* 0x30 */ vu16 _30;
    /* 0x32 */ vu16 _32;
    /* 0x34 */ vu16 _34;
    /* 0x36 */ vu16 _36;
    /* 0x38 */ vu16 _38;
    /* 0x3A */ vu16 _3A;
    /* 0x3C */ vu16 _3C;
    /* 0x3E */ vu16 _3E;
    /* 0x40 */ vu32 _40;
    /* 0x44 */ vu32 _44;
    /* 0x48 */ vu32 _48;
    /* 0x4C */ vu32 _4C;
    /* 0x50 */ Unknown_02016078 _50;

    /* 0x2CA0 */ Unknown_02018CC8 _2CA0;

    // TODO: figure out if this is a pointer or an array
    /* 0x2CB0 */ void* _2CB0;  // palette ptr?
    /* 0x2CB4 */ u16 _2CB4[0x200];

    u8 _2ca3[0x4ad0 - 0x30B4];
    u32 char_names[0xd];
    u16 msg_type;
    u16 _4b06;
    u16 msg_choice;
    u16 _4b0a;
    u16 _4b0c;
    u16 _4b0e;
    u16 _4b10;
    u16 _4b12;
    u16 _4b14;
    u16 _4b16;
    u8 _4b18;
    u8 _4b19 : 2;
    u8 _4b1a[0x5778 - 0x4b1a];
    u8 _5778[0xC620 - 0x5778];
    /* 0xC620 */ void* _C620;  // pointer to OAM data
    u8 pad_C624[0x121b8 - 0xC624];
    u8 _121b8_0 : 3;
    u8 _121b8_3 : 1;
    u8 _121b8_4 : 4;
    u8 _121b9;
    u8 _121ba;
    u8 _121bb_1 : 3;
    u8 _121bb_8 : 1;
    u8 _121bb_10 : 1;
    u8 _121bc[0x121C8 - 0x121BC];
#ifdef __cplusplus
    union {
        u64 _121c8;
        struct {
            u8 b0;
            u8 b1;
            u8 b2;
            u8 b3;
            u8 b4;
            u8 b5;
            u8 b6;
            u8 b7;
        } _121c8_b;
    };
#else
    u64 _121c8;
#endif
} struct_02016028;

typedef struct Save {
    u8 party[5];
    u32 dp_pocket;
    u32 dp_bank;
    u8 key_items[0x100];
    u8 item_guy[0x100];
    u32 playtime;
    u8 _214;
    u32 _218;
    u32 _21c;
    u16 _220;
    u16 _222[5];
    u16 _22c[5];
    u16 _236[5];
    u8 event_flags[0x100];
    u8 shop_flags[0x40];
    u8 _380[0x40];
    u8 mIQ0[0x40];
    u8 giftbox_flags[0x80];
    u8 _480;
    u8 _481;
    u16 _482[0x80];
    u16 _582[0x80];
    u8 hinawa_name[0x10];
    u8 claus_name[0x10];
    u8 fav_food[0x12];
    u8 fav_thing[0x12];
    u8 playername_short[0x12];
    u8 playername[0x20];
    u16 _6f8;
    u16 _6fa;
    u16 _6fc;
    u16 _6fe;
    u16 _700;
    u16 _702;
    u16 _704;
    u16 _706;
    u16 _708;
    u16 _70a;
    u16 _70c;
    u16 _70e;
    u8 _710[10];
    u8 _71a;
    u8 _71b;
    u16 _71c;
    u16 _71e;
    u8 _720[10];
    u8 _72a[10];
    u8 _734;
    u8 _735;
    u16 _736;
    u8 _738[12];
    u32 _744;
    u16 _748;
    u8 enemy_seen_front[0x20];
    u8 enemy_seen_back[0x20];
    u8 _78a;
    u8 _78b;
    u8 _78c;
    u8 _78d;
    u16 _78e[0x40];
    u8 _80e[0x10];
    u8 _81e;
} Save;

// extern ItemData gGoodsInfo[];
extern Save gSave;
extern struct_02016028 gSomeBlend;

struct Size {
    u16 w;
    s16 h;
};

typedef struct ExpInfo {
    u32 ch_no;
    u32 deltas[99];
} ExpInfo;
extern ExpInfo gExpTable[];

typedef struct Stats {
    u32 hp;
    u32 pp;
    u8 offense;
    u8 defense;
    u8 iq;
    u8 speed;
    u32 kindness;
} Stats;
static_assert(sizeof(Stats) == 0x10);

typedef struct PsiInfo {
    u16 psi_no;
    u8 level;
} PsiInfo;

typedef struct LevelStats {
    u8 ch_no;
    u16 ch_start_level;
    u16 start_equipment[4];
    Stats start_stats;
    Stats level_status[10];
    u8 overworld_playable;
    u8 battle_playable;
    u16 animal_value;
    PsiInfo psi_table[32];
    u32 attack_sounds;
} LevelStats;
extern LevelStats gLevelStatTable[];
static_assert(sizeof(LevelStats) == 0x144);

typedef struct GoodsInfo {
    u8 item_id;
    u32 item_type;
    u8 key_item;
    u16 sell_price;
    u32 equip_flags;
    s32 hp_mod;
    s32 pp_mod;
    s8 off_mod;
    s8 def_mod;
    s8 iq_mod;
    s8 spd_mod;
    s32 kindness_mod;
    s16 ailment_resist[11];
    s8 element_resist[5];
    u8 attack_type[5];
    MoveInfo action;
    u8 _68;
    u8 _69;
    u8 consumable;
} GoodsInfo;
extern GoodsInfo gGoodsInfo[];

typedef struct SystemEntry {
    u8 data[0x2A];           
    u8 _2A[8];
    u8 _32;          
    u8 padding[100 - 0x33];  
} SystemEntry;

typedef struct struct_020050C0 {
    SystemEntry entries[2];
    u8 filler[84];
    u8 _284;
} struct_020050C0;
extern struct_020050C0 gUnknown_020050C0;

#endif  // STRUCTS_H
