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
    u8 kindness;
    u8 _2d;
    u8 _2e;
    u8 _2f;
    u16 ailments;
    u16 _32;
    u8 equipment[4];
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

typedef struct Position {
    u16 x;
    u16 y;
} Position;

typedef struct Size {
    u16 w;
    s16 h;
} Size;

typedef struct MovementVector {
    s16 x;
    s16 y;
} MovementVector;

typedef struct Object {
    s16 xpos;
    s16 ypos;
    u8 _4_0 : 5;
    u8 _4_1 : 3;
    u8 _5[0x13];
    s32 _18;
    u32 _1c;
    u16 _20;
    u16 _22;
    u8 _24[0x10];
    MovementVector* speed;
    u8 _38[4];
    u32 _3c;
    u8 _40[0x34];
    s8 _74[0x11];
    u8 character;
    u8 _86;
    u8 _87;
    u16 _88;
    u8 _8a;
    u8 _8b;
    u16 _8c;
    u8 _8e[2];
    u8 _90;
    u8 _91;
    u16 _92[10];
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
    u8 direction : 3;
    u8 _bc_3 : 1;
    u8 _bc_4 : 1;
    u8 _bc_5 : 1;
    u8 _bd_0 : 3;
    u8 _bd_1 : 2;
    u8 _bd_2 : 2;
    u8 _bd_3 : 1;
    u8 _be;
    u8 _bf_1 : 3;
    u8 _bf_8 : 1;
    u8 _bf_10 : 1;
    u8 _bf_20 : 1;
    u8 _bf_40 : 1;
    u8 _bf_80 : 1;
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
    u8 _ca_1 : 1;
    u8 _ca_2 : 1;
    u8 _ca_4 : 1;
    u8 _ca_8 : 1;
    u8 _ca_10 : 1;
    u8 _ca_20 : 1;
    u8 _ca_40 : 1;
    u8 _ca_80 : 1;
    u8 _cb_0 : 3;
    u8 _cb_1 : 1;
    u8 _cb_2 : 4;
    u8 _cc_1 : 1;
    u8 _cc_2 : 1;
    u8 _cc_4 : 1;
    u8 _cc_8 : 1;
    u8 _cc_10 : 1;
    u8 _cc_20 : 1;
    u8 _cc_40 : 1;
    u8 _cc_80 : 1;
} Object;

extern Object gUnknown_0200C3C8[];

typedef struct TileInfo {
    u16 tile_num : 10;    // 0x04 bits 0-9 - Tile/character number
    u16 priority : 2;     // 0x04 bits 10-11 - Priority vs BG
    u16 palette_num : 4;  // 0x04 bits 12-15 - Palette number
} TileInfo;

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
    /* 0x0000 / 0x0050 */ u16 _0[0x400];
    /* 0x0800 / 0x0850 */ u16 _800[0x400];
    /* 0x1000 / 0x1050 */ u16 _1000[0x400];
    /* 0x1800 / 0x1850 */ u16 _1800[0x400];
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
static_assert(sizeof(((Unknown_02016078*)0)->_0[0]) == 0x2);
static_assert(sizeof(((Unknown_02016078*)0)->_0) == 0x800);

typedef struct InputState {
    u16 justPressed;
    u16 pressed;
    u16 debounceTimer;
    u16 _6;
    u16 pressedPending;
    u16 lastPressed;
    u16 numRepeats;
    u8 gotInput : 1;
    u8 _e_2 : 1;
    u8 _e_4 : 6;
    u8 _f;
} InputState;

typedef struct Direction {
    u16 buttonCombo;
    s16 xVel;
    s16 yVel;
    u16 previous;
    u16 opposite;
    u16 turnLeft90;
    u16 turnRight90;
} Direction;

typedef struct MenuState {
    u16 id;
    u16 numItems;
    u16 cursorPos;
    u16 numItemsVisible;
    u16 scrollOffset;
    u16 currentTab;
    s16 prevMenuID;
    u8 pad_e[0x20 - 0xE];
} MenuState;
static_assert(sizeof(MenuState) == 0x20);

typedef struct TransactionState {
    u16 _0;
    u16 numTabs;
    u16 tabIndex;
    u16 _6[2];
    u16 transactionType;
} TransactionState;
static_assert(sizeof(TransactionState) == 0xC);

typedef struct SoundUnkInfo {
    u16 _0;
    u16 _2;
    u16 _4;
    u16 _6;
    u8 _8_1 : 1;
    u8 _8_2 : 3;
    u16 _9;
} SoundUnkInfo;
static_assert(sizeof(SoundUnkInfo) == 0xC);

typedef struct DebugMenuState {
    u16 _0;
    u16 numItems;
    u16 itemIndex;
    u16 _6[2];
    u16 subItemIndex;
} DebugMenuState;
static_assert(sizeof(DebugMenuState) == 0xC);

typedef struct struct_2018D00 {
    s32 _0;
    s32 hpMod;
    s32 _8;
    s16 _c;
    s16 ppMod;
    s16 _10;
    s16 _12;
    s16 offenseMod;
    u16 _16;
    s16 _18;
    s16 defenseMod;
    u16 _1c;
    s16 _1e;
    s16 iqMod;
    u16 _22;
    s16 _24;
    s16 speedMod;
    u16 _28;
    s16 _2a;
    s16 kindnessMod;
    u16 _2e;
    u32 maxHP;
    u16 maxPP;
    u16 pad_36;
} struct_2018D00;

typedef struct MenuGoodsEntry {
    u8 id;
    u8 _1;
    u16 _2_1 : 6;
    u16 _2_40 : 1;
} MenuGoodsEntry;

typedef struct TownMapInfo {
    u16 townMapID;
    u16 topLeftX;
    u16 topLeftY;
    u16 bottomRightX;
    u16 bottomRightY;
    u16 _a;
} TownMapInfo;

typedef struct struct_02016028 {
    vu16 bldcnt;
    vu16 bldalpha;
    vu16 bldy;
    u8 pad_6[0x8 - 0x6];
    vu16 dispcnt;
    vu16 bgcnt[4];
    vu16 _12[4];
    vu16 _1A[4];
    vu16 _22;
    vu16 _24;
    vu16 _26;
    vu16 _28;
    vu16 _2A;
    vu16 _2C;
    vu16 _2E;
    vu16 _30;
    vu16 _32;
    vu16 _34;
    vu16 _36;
    vu16 _38;
    vu16 _3A;
    vu16 _3C;
    vu16 _3E;
    vu32 _40;
    vu32 _44;
    vu32 _48;
    vu32 _4C;
    Unknown_02016078 _50;
    InputState input;
    void* _2CB0;
    u16 _2cb4[0x12];
    struct_2018D00 _2cd8[5];
    u32 _2df0[2];
    u16 _2dfa;
    u16 partyCount;
    u16 playablePartyCount;
    u16 _2dfe;
    MenuState menus[0x13];
    MenuState _3060;
    u8 pad_3080[0x30B4 - 0x3080];
    u8 pad_30B4[0x3480 - 0x30B4];
    MenuGoodsEntry _3480[0x10];
    MenuGoodsEntry equippableItems[0x10];
    u8 pad_3500[0x351C - 0x3500];
    u32 selectedTransactableDp;
    u32 totalTransactableDp;
    u16 _3524;
    u16 _3526;
    u8 pad_3528[0x3530 - 0x3528];
    u8 _3530;
    u8 _3531;
    u8 _3532;
    u8 pad_3533[0x35BA - 0x3533];
    u8 _35ba_1 : 1;
    u8 _35ba_2 : 2;
    u8 _35ba_8 : 1;
    u8 pad_35bb;
    DebugMenuState debugMenuPages[6];
    u8 _3604[0x360E - 0x3604];
    u8 _360e_1 : 1;
    u8 _360e_2 : 3;
    u8 _360e_10 : 1;
    u8 _360e_20 : 1;
    u8 _360e_40 : 1;
    u8 _360e_80 : 1;
    u8 _360f[0x3612 - 0x360F];
    u16 currentDebugPage;
    u16 debugRoomID;
    u16 debugObjectTable;
    u16 debugBgm;
    u16 debugEncounterBgm;
    u32 debugDpPocket;
    u32 debugDpBank;
    u32 debugSessionPlaytime;
    u8 pad_3628[0x3668 - 0x3628];
    u8 _3668_1 : 1;
    u8 _3668_2 : 1;
    u8 _3668_4 : 1;
    u8 _3668_8 : 1;
    u8 _3668_10 : 1;
    u8 _3668_20 : 1;
    u8 _3668_40 : 1;
    u8 _3668_80 : 1;
    u8 pad_3669[0x3678 - 0x3669];
    u16 mapTopLeftX;
    u16 mapTopLeftY;
    u16 mapBottomRightX;
    u16 mapBottomRightY;
    u8 pad_3680[0x3800 - 0x3680];
    s32 _3800[0xFF];
    s32 _3bfc[0x170];
    u16 _41bc;
    u8 pad_41be[0x41C6 - 0x41BE];
    u8 _41c6_1 : 1;
    u8 pad_41c7[0x41DA - 0x41C7];
    u8 _41da_1 : 1;
    u8 pad_41db[0x41E6 - 0x41DB];
    u8 _41e6_1 : 1;
    u8 pad_41e7[0x4234 - 0x41E7];
    u16 _4234;
    u16 _4236;
    u8 pad_4237[0x423C - 0x4238];
    u8 _423c;
    u8 pad_423d[0x4244 - 0x423D];
    u8 _4244;
    u8 pad_4245[0x424C - 0x4245];
    u8 _424c;
    u8 pad_424d[0x4254 - 0x424D];
    u8 _4254;
    u8 pad_4255[0x4260 - 0x4255];
    u8 currentMenu;
    u8 _4261;
    s8 _4262;
    u8 _4263;
    u8 _4264;
    u8 pad_4265[0x426A - 0x4265];
    u16 _426a;
    u16 _426c;
    u16 numEquippableItems;
    u8 pad_4270[0x427A - 0x4270];
    u16 _427a;
    u16 _427c;
    u16 _427e;
    u16 _4280;
    u8 pad_4282[0x4294 - 0x4282];
    u8 _4294;
    u8 pad_4295[0x43AC - 0x4295];
    u16 memoTextBuffer[0xA0];
    u8 pad_44ec[0x44F2 - 0x44EC];
    u8 _44f2_1 : 1;
    u8 _44f2_2 : 1;
    u8 _44f2_4 : 1;
    u8 _44f2_8 : 1;
    u8 _44f2_10 : 1;
    u8 _44f2_20 : 1;
    u8 _44f2_40 : 1;
    u8 _44f2_80 : 1;
    u8 _44f3_1 : 3;
    u8 _44f3_8 : 1;
    u8 pad_44f4[0x44f8 - 0x44F4];
    u8 _44f8;
    u8 pad_44fa[0x4501 - 0x44F9];
    u8 _4501_1 : 1;
    u8 _4501_2 : 1;
    u8 pad_4502[0x4a30 - 0x4502];
    u8 _4a30;
    u8 pad_4a31[0x4ad0 - 0x4A31];
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
    u8 _4b1a[0x4DF4 - 0x4B1A];
    u16* menuTextBuffer;
    u8 _4df8[0x4ECE - 0x4DF8];
    u8 menuTextCursorPos : 5;
    u8 _4ece_20 : 3;
    u8 _4ecf_1 : 4;
    u8 _4ecf_10 : 1;
    u8 _4ed0[0x566C - 0x4ED0];
    u8 _566c_1 : 1;
    u8 _566d[0x567c - 0x566D];
    SoundUnkInfo _567c[21];
    u8 _5778[0xC5AD - 0x5778];
    u8 _c5ad_1 : 1;
    u8 _c5ae[0xC5B5 - 0xC5AE];
    u8 _c5b5_1 : 2;
    u8 _c5b5_4 : 1;
    u8 _c5b5_8 : 2;
    u8 _c5b5_20 : 1;
    u8 _c5b5_40 : 1;
    u8 _c5b5_80 : 1;
    u8 _c5b6[0xC61C - 0xC5B6];
    u32 _c61c;
    void* _C620;
    u8 pad_C624[0x11C88 - 0xC624];
    u8 _11C88;
    u8 _11C89;
    u8 pad_11C8A;
    u8 _11C8B;
    u8 pad_11C8C[0x11C92 - 0x11C8C];
    u8 _11C92_1 : 1;
    u8 _11C92_2 : 3;
    u8 _11C92_10 : 1;
    u8 _11C92_20 : 1;
    u8 _11C92_40 : 2;
    u8 pad_11C93[0x121B6 - 0x11C93];
    u8 _121b6_1 : 1;
    u8 _121b6_2 : 1;
    u8 _121b6_4 : 6;
    u8 _121b7;
    u8 _121b8_1 : 3;
    u8 _121b8_8 : 1;
    u8 _121b8_10 : 1;
    u8 _121b8_20 : 3;
    u8 _121b9;
    u8 _121ba;
    u8 _121bb_1 : 3;
    u8 _121bb_8 : 1;
    u8 _121bb_10 : 1;
    u8 _121bc[0x121C8 - 0x121BC];

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
    u8 pad_121d0[0x1ED10 - 0x121D0];
    u8 _1ed10_1 : 1;
    u8 _1ed10_2 : 1;
    u8 _1ed10_4 : 1;
    u8 _1ed10_8 : 1;
    u8 _1ed10_10 : 1;
    u8 _1ed10_20 : 1;
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
    u32 sessionPlaytime;
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

extern Save gSave;
extern struct_02016028 gSomeBlend;

typedef struct LevelUpExpInfo {
    u32 ch_no;
    u32 deltas[99];
} LevelUpExpInfo;
extern const LevelUpExpInfo gLevelUpExpTable[];

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

typedef struct PsiLearnInfo {
    u16 psi_no;
    u8 level;
} PsiLearnInfo;

typedef struct PsiInfo {
    u32 psi_num;
    u32 type;
    u32 overworld_usable;
    u32 pp_cost;
    MoveInfo move;
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
    PsiLearnInfo psi_learning_table[32];
    u32 attack_sounds;
} LevelStats;
static_assert(sizeof(LevelStats) == 0x144);

extern const LevelStats gLevelStatTable[];

typedef struct GoodsInfo {
    u8 item_id;
    u32 item_type;
    u8 key_item;
    u16 sell_price;
    u32 equip_flags;
    s32 hp_mod;
    s16 pp_mod;
    s16 _14;
    s8 off_mod;
    s8 def_mod;
    s8 iq_mod;
    s8 spd_mod;
    s8 kindness_mod;
    u8 _19;
    u8 _1a;
    u8 _1b;
    s16 ailment_resist[11];
    s8 element_resist[5];
    u8 attack_type[5];
    MoveInfo action;
    u8 _68;
    u8 _69;
    u8 consumable;
} GoodsInfo;
extern const GoodsInfo gGoodsInfo[];

typedef struct ShopInfo {
    u16 items[30];
} ShopInfo;
extern const ShopInfo gShopInfo[];

typedef struct SoundPlayerEntry {
    u16 songID;
    u16 playerID;
    u32 minimumChapter;
    u32 duration;
} SoundPlayerEntry;
extern const SoundPlayerEntry gSoundPlayerTable[];

typedef struct SystemEntry {
    u16 data[0x15];
    u8 _2A[8];
    u8 _32;
    u8 padding[0x64 - 0x33];
} SystemEntry;

typedef struct struct_020050C0 {
    SystemEntry entries[2];
    u8 filler[84];
    u8 _284;
} struct_020050C0;
extern struct_020050C0 gUnknown_020050C0;

typedef struct StatMeter {
    u8 digits[3];
    u8 timers[3];
    u16 current;
    u16 target;
    u16 prevTarget;
} StatMeter;

typedef struct struct_200D818 {
    s32 _0;
    s32 hp;
    s32 _8;
    u16 _c;
    s16 pp;
    s16 _10;
    u16 _12;
    s16 offense;
    u16 _16;
    u16 _18;
    s16 defense;
    u16 _1c;
    u16 _1d;
    s16 iq;
    u16 _22;
    u16 _24;
    s16 speed;
    u16 _28;
    u16 _2a;
    s16 kindness;
    u16 _2e;
} struct_200D818;

typedef struct RhythmInfo {  // TODO: This should probably be part of a class?
    u16 id;                  // Entry ID (is there any point to this?)
    u16 songNum;             // Internal Song ID
    u8 greatWindow;          // Number of frames allowed for a "great" hit
    u8 okayWindow;           // Number of frames allowed for an "okay" hit
} RhythmInfo;  // note that in the final game, "great" and "okay" hits do the same thing, so
               // effectively only the "okay" window matters

typedef struct MapGraphicsInfo {
    s16 tileSetIndices[12];
    s16 paletteIndex;
} MapGraphicsInfo;

typedef struct DoorDestinationInfo {
    u8 _0;
    u8 collsionEnabled;
    u16 _2;
    u16 mapID;
    u8 xPos;
    u8 yPos;
} DoorDestinationInfo;

#endif  // STRUCTS_H
