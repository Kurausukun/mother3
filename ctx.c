# 1 "src/core/unit.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 379 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "src/core/unit.cpp" 2
# 1 "include/core/unit.h" 1



# 1 "include/core/base.h" 1



# 1 "include/core/fit.h" 1



# 1 "include/global.h" 1



# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2



typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef u32 BOOL;

struct DispCnt
{
    u16 mode:3;
    u16 cgbMode:1;
    u16 bmpFrameNum:1;
    u16 hblankIntervalFree:1;
    u16 obj1dMap:1;
    u16 forcedBlank:1;
    u16 bg0_on:1;
    u16 bg1_on:1;
    u16 bg2_on:1;
    u16 bg3_on:1;
    u16 obj_on:1;
    u16 win0_on:1;
    u16 win1_on:1;
    u16 objWin_on:1;
};

struct DispStat
{
    u16 vblankFlag:1;
    u16 hblankFlag:1;
    u16 vcountFlag:1;
    u16 vblankIrqEnable:1;
    u16 hblankIrqEnable:1;
    u16 vcountIrqEnable:1;
    u16 dummy:2;
    u8 vcountCompare;
};

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 colorMode:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};

struct WinCnt
{
    u8 win0_bg0_on:1;
    u8 win0_bg1_on:1;
    u8 win0_bg2_on:1;
    u8 win0_bg3_on:1;
    u8 win0_obj_on:1;
    u8 win0_blend_on:1;
    u8 dummy1:2;

    u8 win1_bg0_on:1;
    u8 win1_bg1_on:1;
    u8 win1_bg2_on:1;
    u8 win1_bg3_on:1;
    u8 win1_obj_on:1;
    u8 win1_blend_on:1;
    u8 dummy2:2;
};

struct BlendCnt
{
    u16 target1_bg0_on:1;
    u16 target1_bg1_on:1;
    u16 target1_bg2_on:1;
    u16 target1_bg3_on:1;
    u16 target1_obj_on:1;
    u16 target1_bd_on:1;
    u16 effect:2;
    u16 target2_bg0_on:1;
    u16 target2_bg1_on:1;
    u16 target2_bg2_on:1;
    u16 target2_bg3_on:1;
    u16 target2_obj_on:1;
    u16 target2_bd_on:1;
};

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
} ;

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;
# 137 "include/gba/types.h"
             u32 x:9;
             u32 unused_9:3;
             u32 hflip:1;
             u32 vflip:1;

             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 169 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 221 "include/gba/types.h"
struct WaitCnt
{
    u16 sramWait:2;
    u16 rom0_1stAcc:2;
    u16 rom0_2ndAcc:1;
    u16 rom1_1stAcc:2;
    u16 rom1_2ndAcc:1;
    u16 rom2_1stAcc:2;
    u16 rom2_2ndAcc:1;
    u16 phiTerminalClock:2;
    u16 dummy:1;
    u16 prefetchBufEnable:1;
    u16 gamePakType:1;
};
# 5 "include/global.h" 2
# 5 "include/core/fit.h" 2

struct Fit {
    Fit() {
        *(u32*)sig = 0;
        size = 0;
        next = 0;
    }

    ~Fit() {
        if (next)
            delete next;
    }

    char sig[4];
    u32 size;
    Fit* next;
};

class FitAllocator {
public:
    FitAllocator(u32 size, Fit* fit);
    virtual ~FitAllocator();

    void* malloc(u32 size);
    void free(void* ptr);
    void collapse();

    u32 bytesRemaining();
    void check();
    void getInfo();

private:
    u32 buf_size;
    Fit* _4;
    Fit* _8;
    u32 _c;
    Fit* head;
};
# 5 "include/core/base.h" 2
# 1 "include/core/singleton.h" 1



# 1 "include/core/base.h" 1
# 5 "include/core/singleton.h" 2


struct Singleton {
    struct Allocator {
        static Allocator* get();

        s32 count;
        Singleton* start;
        Singleton* end;

        static Allocator instance;
        static s32 guard;
    };

    Singleton();

    Singleton* sub_08068978();
    u32 debugStub(const char*);


    virtual const char* getName();
    virtual void* init();

    Singleton* prev;
    Singleton* next;
};
# 6 "include/core/base.h" 2

class Clock;
class Base;

typedef void (*Callback)(Base*, Clock*);

struct BaseNode {
    Base* sender;
    Base* receiver;
    Base* base;
    u32 mask;
    Callback fn;
};

struct ClockData {
    u32 mask;
    Callback callback;
};

class Base {
public:
    Base();
    virtual ~Base();

    virtual void* getInstance();
    virtual void base_1c();
    virtual s32 base_24();
    virtual void base_2c();
    virtual void base_34();
    virtual void registerClock(Base* sender, const Base& receiver, ClockData data);
    virtual void base_44();
    virtual void base_4c(u32 mask, Base& base, u32 mask2);
    virtual void base_54(const Base& clock);
    virtual void base_5c();
    virtual void base_64();

    void free_fit1();
    void free_fit2();

    s16 _0;
    s16 _2;
    Fit mFit1;
    Fit mFit2;
};

struct Unk : public Base {
    Unk() {}
    ~Unk() {}
};
# 5 "include/core/unit.h" 2

struct Object {};

class Unit : public Base, public Object {
    Unit();

    u16 _28;
    u32 _2c;
    u32 _30;
    u16 _34;
    u16 _36;
    u16 _38;
    u16 _3a;
    u16 _3c;
    u16 _3e;
    u16 _40;
    u32 _44;
    u16 _48[6];
    u32 _54;
    u16 _58[64];
    u32 _d8;
    u32 _dc;
    u32 _e0;
    u32 _e4;
    u32 _e8;
    u32 _ec;
    u32 _f0;
    u32 _f4;
};
# 2 "src/core/unit.cpp" 2

Unit::Unit() {}
