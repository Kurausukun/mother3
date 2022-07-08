#include "battle/clock.h"
#include "gba/gba.h"

struct BattleFader {
    BattleFader();
    ~BattleFader();

    struct A {
        virtual ~A() {}
    };

    void set(u32 r0);
    void set2(u32 r0);
    void set4(u32 r0);
    void setAll(u32 r0);
    void setB(u32 r0);
    void setB2(u32 r0);
    void setB4(u32 r0);
    void setBAll(u32 r0);
    u32 get();
    u32 get2();
    u32 get4();
    u32 getB();
    u32 getB2();
    u32 getB4();

    void sub_0806A67C(s32, u16*, u16*);
    void sub_0806A760();
    void sub_0806A80C();
    void sub_0806A8BC();

    s16 _0;
    s16 _2;
    s16 _4;
    s16 _6;
    s16 _8;
    s16 _a;
    u16 _c[0x20];
    u8 _4c[0x40];
    u8 _8c[0x40];
    u8 _cc;
    A _d0;
};

BattleFader::BattleFader() {
    _0 = 0x100;
    _2 = 0x100;
    _4 = 0x100;
    _6 = 0x100;
    _8 = 0x100;
    _a = 0x100;
    _cc = 0x7;
}

BattleFader::~BattleFader() {}

void BattleFader::set(u32 r0) {
    _0 = r0;
    _cc |= 1;
}

void BattleFader::set2(u32 r0) {
    _2 = r0;
    _cc |= 2;
}

void BattleFader::set4(u32 r0) {
    _4 = r0;
    _cc |= 4;
}

void BattleFader::setAll(u32 r0) {
    _0 = r0;
    _2 = r0;
    _4 = r0;
    _cc |= 1 | 2 | 4;
}

void BattleFader::setB(u32 r0) {
    _6 = r0;
    _cc |= 1;
}

void BattleFader::setB2(u32 r0) {
    _8 = r0;
    _cc |= 2;
}

void BattleFader::setB4(u32 r0) {
    _a = r0;
    _cc |= 4;
}

void BattleFader::setBAll(u32 r0) {
    _6 = r0;
    _8 = r0;
    _a = r0;
    _cc |= 1 | 2 | 4;
}

u32 BattleFader::get() {
    return _0;
}

u32 BattleFader::get2() {
    return _2;
}

u32 BattleFader::get4() {
    return _4;
}

u32 BattleFader::getB() {
    return _6;
}

u32 BattleFader::getB2() {
    return _8;
}

u32 BattleFader::getB4() {
    return _a;
}

NONMATCH("asm/non_matching/BattleFader/sub_0806A67C.inc",
         void BattleFader::sub_0806A67C(s32 a2, u16* a3, u16* a4)) {
    if (_cc & 1) {
        sub_0806A760();
        _cc &= ~1;
    }
    if (_cc & 2) {
        sub_0806A80C();
        _cc &= ~2;
    }
    if (_cc & 4) {
        sub_0806A8BC();
        _cc &= ~4;
    }
    if (_cc & (0x8 | 0x10 | 0x20)) {
        for (int i = 0; i < a2; i++) {
            u32 x, y, z;
            x = (*a3 & 0x1F);
            y = (*a3 & (0x1F << 5));
            z = (*a3 & (0x1F << 10));
            *a4 = _c[x] | *(u16*)(_4c + (y >> 4)) | *(u16*)(_8c + (z >> 9));
            ++a3, ++a4;
        }
    } else if (a2 << 1 > 0) {
        DmaSet(3, a3, a4, ((a2 << 1) >> 1) | 0x80000000);
    }
}
END_NONMATCH

ASM_FUNC("asm/non_matching/BattleFader/sub_0806A760.inc", void BattleFader::sub_0806A760())

ASM_FUNC("asm/non_matching/BattleFader/sub_0806A80C.inc", void BattleFader::sub_0806A80C())

ASM_FUNC("asm/non_matching/BattleFader/sub_0806A8BC.inc", void BattleFader::sub_0806A8BC())
