#ifndef OVERWORLD_SCRIPT_H
#define OVERWORLD_SCRIPT_H

#include "global.h"
#include "structs.h"

#define _22_5_DEGREES 0x1000
#define _45_DEGREES 0x2000

#define FRAMES_PER_SECOND 60
#define FRAMES_PER_MINUTE (FRAMES_PER_SECOND * 60)
#define FRAMES_PER_HOUR (FRAMES_PER_MINUTE * 60)

#define SECONDS_TO_FRAMES(seconds) (seconds * FRAMES_PER_SECOND)
#define HOURS_TO_FRAMES(hours) (hours * FRAMES_PER_HOUR)

#define LEDERS_BELL_THRESHOLD (HOURS_TO_FRAMES(3))

extern u16 (*gScriptCmdTable[])(s32* sp);

namespace ScriptCoreOperations {
    enum CoreCommands {
        FRAME2STACK = 0x0,
        PUSH_IMM = 0x1,
        FRAME_ADDR = 0x2,
        STACK2FRAME = 0x3,
        EXTENDED = 0x4,
        CALLF = 0x5,
        RETF = 0x6,
        CALL = 0x7,
        RET = 0x8,
        END = 0x9,
        FRAME_PUSH = 0xA,
        SP_ALLOC = 0xB,
        JUMP = 0xC,
        JUMP_IF = 0xD,
        MATH = 0xE
    };
    enum CoreMathOperations {
        NEGATIVE = 0x0,
        ADD = 0x1,
        SUBTRACT = 0x2,
        MULTIPLY = 0x3,
        DIVIDE = 0x4,
        MODULO = 0x5,
        INCREMENT = 0x6,
        DECREMENT = 0x7,
        AND = 0x8,
        OR = 0x9,
        IS_EQUAL = 0xA,
        IS_NOT_EQUAL = 0xB,
        IS_LESS_THAN = 0xC,
        IS_GREATER_THAN = 0xD,
        IS_LESS_THAN_OR_EQUAL = 0xE,
        IS_GREATER_THAN_OR_EQUAL = 0xF,
        COPY = 0x10,
        POP_NOOP = 0x11,
        POP_NOOP2 = 0x12,
        NOOP = 0x13
    };
}

enum Mode {
    MODE_NORMAL = 0x0,
    MODE_SCRIPT = 0x1,
    MODE_TITLE_CARD = 0x4,
    MODE_FADE_IN = 0x6,
    MODE_LOAD_ROOM = 0x7,
    MODE_PAUSE_MENU = 0xA,
    MODE_LOGO_DISPLAY = 0xB,
    MODE_STAFFROLL_DISPLAY = 0xC,
    MODE_MAP_VIEW = 0xD,
    MODE_DROPDOWN = 0xE,
    MODE_DEBUG_MENU = 0xF
};

typedef struct BgFlags {
    u8 _0_0 : 3;
    u8 _0_1 : 3;
    u8 _0_2 : 2;
    u8 _1_0 : 2;
    u8 _1_1 : 6;
    u8 _2;
    u8 _3;
} BgFlags;

struct Game {
    u8 mode;
    u8 _1_1 : 1;
    u8 _1_2 : 3;
    u8 _1_10 : 1;
    u8 _1_20 : 1;
    u8 _1_40 : 1;
    u8 _1_80 : 1;
    u32 _2_1 : 7;
    u32 _2_40 : 4;
    u32 gbPlayerModeEnabled : 1;
    u32 _3_10 : 1;
    u32 _3_20 : 3;
    u32 _2_4 : 16;
    u16 _6;
    u8 collisionEnabled : 1;
    u8 _8_2 : 1;
    u8 encountersEnabled : 1;
    u8 obstacleEvasionEnabled : 1;
    u8 displayProcessLoadEnabled : 1;
    u8 gammaCorrectionEnabled : 1;
    u8 _8_40 : 1;
    u8 _8_80 : 1;
    u8 _9;
    u16 _a[2];
    u8 _e;
    u8 _f;
    u8 _10;
    u8 _11;
    u8 _12[0x1c - 0x12];
    BgFlags bg_flags[3];
    u32 _28;
    u8 _2c[0x595a - 0x2c];
    u8 room_enter_dir;
    u8 _595b[0x5960 - 0x595b];
    u16 _5960;
    u8 _5962[0x5978 - 0x5962];
    u16 next_room;
    u16 _597a;
    Position room_entered_from;
    u16 last_room;
    s16 _5982;
    MovementVector _5984;
    u8 _5988[0x598C - 0x5988];
    u8 _598c_1 : 1;
    u8 _598c_2 : 1;
    u8 _598c_4 : 1;
    u8 _598d[0x679c - 0x598D];
    u16 _679c;
    u16 _679e;
    u16 _67a0;
    u8 _67a2[0x67ac - 0x67a2];
    u16 cur_room;
    u16 cur_track; //67ae
    u16 cur_track_alt; //67b0
    u8 _67b2[0x67b8 - 0x67b2];
    s16 cam_target;
    u8 _67ba[0x67c0 - 0x67ba];
    u16 _67c0;
    u16 _67c2;
    u8 _67c4_1 : 4;
    u8 _67c4_10 : 1;
    u8 _67c4_20 : 1;
    u8 _67c4_40 : 1;
    u8 _67c5[0x7d08 - 0x67c5];
    u32 path_memory[0x140];
    u8 _8208[0x8299 - 0x8208];
    u8 party_count;
    u8 _829a;
    u8 _829b;
    u8 _829c;
    u8 _829d[0x82ad - 0x829e];
    u16 _82ac;
    s8 _82ae;
    u8 _82af[0x82b4 - 0x82af];
    u16 _82b4;
    u16 _82b6_1 : 1;
    u16 _82b6_2 : 4;
    u16 _82b6_20 : 4;
    u16 _82b6_200 : 7;
    u8 _82b8_1 : 5;
    u8 _82b8_20 : 1;
    u8 _82b9[0x8370 - 0x82b9];
    u8 _8370;
    u8 _8371;
    u8 _8372;
    u8 _8373[0x83a4 - 0x8373];
    s32 _83a4;
    u16 _83a8;
    u16 _83aa;
    u16 _83ac;
    u8 _83ae[0x8450 - 0x83ae];
    s16 _8450;
    u8 _8452[0x8462 - 0x8452];
    u16 _8462;
    u8 _8464[0x846f - 0x8464];
    u8 _846f[0x847a - 0x846f];
    s16 _847a; //847a
    s16 _847c; //847c
    u16 _847e;
    u16 _8480;
    u16 _8482;
    u32 _8484;
    u8 _8488[8];
    u32 _8490;
    u8 disable_collision : 1;
    u8 _8494_2 : 1;
    u8 _8494_4 : 1;
    u8 _8494_5 : 1;
    s8 _8495;
    u8 _8496_1 : 1;
    u8 _8496_2 : 1;
    u8 _8497[0x25];
    u8* script_pc;
    void* _84c0;
    s32 stack[1000];
    u16 registers[4];
    s32 _946c;
    u16* _9470;
    u16 sp;
    u16 _0476;
    u16 _0478;
    u16 delay;
    s16 _947c;
    s16 _947e;
    u8 state_1 : 3;
    u8 state_8 : 1;
    u8 state_10 : 1;
    u8 state_20 : 1;
    u8 state_40 : 1;
    u8 state_80 : 1;
    u8 _9481;
    u8 _9482;
    u8 _9483;
    u8 _9484;
    u8 _9485;
    u8 _9486 : 1;
    u8 _9486_2 : 1;
    u8 _9487;
    u32 _9488;
    u16 _948c[1022];
    u8 _9c88[0x80];
    u32 _9d08;
    u16 _9d0c;
    u16 _9d0e;
    u32 _9d10;
    u8 battle_mode;
};

extern struct Game gGame;

struct C2Struct {
    u32 _0_0 : 3;
    u32 _0_1 : 5;
    u32 filler;
};

#endif  // OVERWORLD_SCRIPT_H
