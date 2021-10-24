#include "core/clock.h"

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

    s16 _0;
    s16 _2;
    s16 _4;
    s16 _6;
    s16 _8;
    s16 _a;
    u16 _c[96];
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
