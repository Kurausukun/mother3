#include "core/clock.h"
#include "gba/gba.h"

u32 PostSysClock::getTime() {
    return mTime;
}
PostSysClock::PostSysClock(u32 time) : mTime(time) {}
PostSysClock::PostSysClock() {}

u32 PostAppClock::getTime() {
    return mTime;
}
PostAppClock::PostAppClock(u32 time) : mTime(time) {}
PostAppClock::PostAppClock() {}

u32 AppClock::getTime() {
    return mTime;
}
AppClock::AppClock(u32 time) : mTime(time) {}
AppClock::AppClock() {}

u32 PreAppClock::getTime() {
    return mTime;
}
PreAppClock::PreAppClock(u32 time) : mTime(time) {}
PreAppClock::PreAppClock() {}

u32 SysClock::getTime() {
    return mTime;
}
SysClock::SysClock(u32 time) : mTime(time) {}
SysClock::SysClock() {}

u32 PreSysClock::getTime() {
    return mTime;
}
PreSysClock::PreSysClock(u32 time) : mTime(time) {}
PreSysClock::PreSysClock() {}

struct struct_0806A57C {
    struct_0806A57C();
    ~struct_0806A57C();

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

struct_0806A57C::struct_0806A57C() {
    _0 = 0x100;
    _2 = 0x100;
    _4 = 0x100;
    _6 = 0x100;
    _8 = 0x100;
    _a = 0x100;
    _cc = 0x7;
}

struct_0806A57C::~struct_0806A57C() {}

void struct_0806A57C::set(u32 r0) {
    _0 = r0;
    _cc |= 1;
}

void struct_0806A57C::set2(u32 r0) {
    _2 = r0;
    _cc |= 2;
}

void struct_0806A57C::set4(u32 r0) {
    _4 = r0;
    _cc |= 4;
}

void struct_0806A57C::setAll(u32 r0) {
    _0 = r0;
    _2 = r0;
    _4 = r0;
    _cc |= 1 | 2 | 4;
}

void struct_0806A57C::setB(u32 r0) {
    _6 = r0;
    _cc |= 1;
}

void struct_0806A57C::setB2(u32 r0) {
    _8 = r0;
    _cc |= 2;
}

void struct_0806A57C::setB4(u32 r0) {
    _a = r0;
    _cc |= 4;
}

void struct_0806A57C::setBAll(u32 r0) {
    _6 = r0;
    _8 = r0;
    _a = r0;
    _cc |= 1 | 2 | 4;
}

u32 struct_0806A57C::get() {
    return _0;
}

u32 struct_0806A57C::get2() {
    return _2;
}

u32 struct_0806A57C::get4() {
    return _4;
}

u32 struct_0806A57C::getB() {
    return _6;
}

u32 struct_0806A57C::getB2() {
    return _8;
}

u32 struct_0806A57C::getB4() {
    return _a;
}

NONMATCH("asm/non_matching/struct_0806A57C/sub_0806A67C.inc",
         void struct_0806A57C::sub_0806A67C(s32 a2, u16* a3, u16* a4)) {
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

ASM_FUNC("asm/non_matching/struct_0806A57C/sub_0806A760.inc", void struct_0806A57C::sub_0806A760())

ASM_FUNC("asm/non_matching/struct_0806A57C/sub_0806A80C.inc", void struct_0806A57C::sub_0806A80C())

ASM_FUNC("asm/non_matching/struct_0806A57C/sub_0806A8BC.inc", void struct_0806A57C::sub_0806A8BC())
