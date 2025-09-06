#include "battle/keypad.h"
#include "battle/clock.h"
#include "gba/gba.h"

extern int gUnknown_02001D30;
extern int gUnknown_02001D3C;
extern int gUnknown_02001D48;
extern int gUnknown_02001D54;
extern int gUnknown_02001D60;
extern int gUnknown_02001D6C;
extern int gUnknown_02001D78;
extern int gUnknown_02001D84;
extern int gUnknown_02001D90;
extern int gUnknown_02001D9C;
extern int gUnknown_02001DA8;
extern int gUnknown_02001DB4;
extern int gUnknown_02001DC0;
extern int gUnknown_02001DCC;
extern int gUnknown_02001DD8;
extern int gUnknown_02001DE4;
extern int gUnknown_02001DF0;
extern int gUnknown_02001DFC;
extern int gUnknown_02001E08;
extern int gUnknown_02001E14;
extern int gUnknown_02001E20;
extern s32 gUnknown_02001E2C;
extern KeyPad* gUnknown_02001E30;

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

extern "C" void* sub_0806CBD8();

extern "C" void* sub_0806CA48(void) {
    return &gUnknown_02001E20;
}

extern "C" void* sub_0806CA50(void) {
    return sub_0806CA48();
}

extern "C" void* sub_0806CA5C(void) {
    return &gUnknown_02001E14;
}

extern "C" void* sub_0806CA64(void) {
    return sub_0806CA5C();
}

extern "C" void* sub_0806CA70(void) {
    return &gUnknown_02001E08;
}

extern "C" void* sub_0806CA78(void) {
    return sub_0806CA70();
}

extern "C" void* sub_0806CA84(void) {
    return &gUnknown_02001DFC;
}

extern "C" void* sub_0806CA8C(void) {
    return sub_0806CA84();
}

extern "C" void* sub_0806CA98(void) {
    return &gUnknown_02001DF0;
}

extern "C" void* sub_0806CAA0(void) {
    return sub_0806CA98();
}

extern "C" void* sub_0806CAAC(void) {
    return &gUnknown_02001DE4;
}

extern "C" void* sub_0806CAB4(void) {
    return sub_0806CAAC();
}

extern "C" void* sub_0806CAC0(void) {
    return &gUnknown_02001DD8;
}

extern "C" void* sub_0806CAC8() {
    return sub_0806CAC0();
}

extern "C" void* sub_0806CAD4(void) {
    return &gUnknown_02001DCC;
}

extern "C" void* sub_0806CADC(void) {
    return sub_0806CAD4();
}

extern "C" void* sub_0806CAE8(void) {
    return &gUnknown_02001DC0;
}

extern "C" void* sub_0806CAF0(void) {
    return sub_0806CAE8();
}

extern "C" void* sub_0806CAFC(void) {
    return &gUnknown_02001DB4;
}

extern "C" void* sub_0806CB04(void) {
    return sub_0806CAFC();
}

extern "C" void* sub_0806CB10(void) {
    return &gUnknown_02001DA8;
}

extern "C" void* sub_0806CB18(void) {
    return sub_0806CB10();
}

extern "C" void* sub_0806CB24(void) {
    return &gUnknown_02001D9C;
}

extern "C" void* sub_0806CB2C(void) {
    return sub_0806CB24();
}

extern "C" void* sub_0806CB38(void) {
    return &gUnknown_02001D90;
}

extern "C" void* sub_0806CB40(void) {
    return sub_0806CB38();
}

extern "C" void* sub_0806CB4C(void) {
    return &gUnknown_02001D84;
}

extern "C" void* sub_0806CB54(void) {
    return sub_0806CB4C();
}

extern "C" void* sub_0806CB60(void) {
    return &gUnknown_02001D78;
}

extern "C" void* sub_0806CB68(void) {
    return sub_0806CB60();
}

extern "C" void* sub_0806CB74(void) {
    return &gUnknown_02001D6C;
}

extern "C" void* sub_0806CB7C(void) {
    return sub_0806CB74();
}

extern "C" void* sub_0806CB88(void) {
    return &gUnknown_02001D60;
}

extern "C" void* sub_0806CB90(void) {
    return sub_0806CB88();
}

extern "C" void* sub_0806CB9C(void) {
    return &gUnknown_02001D54;
}

extern "C" void* sub_0806CBA4(void) {
    return sub_0806CB9C();
}

extern "C" void* sub_0806CBB0(void) {
    return &gUnknown_02001D48;
}

extern "C" void* sub_0806CBB8(void) {
    return sub_0806CBB0();
}

extern "C" void* sub_0806CBC4(void) {
    return &gUnknown_02001D3C;
}

extern "C" void* sub_0806CBCC(void) {
    return sub_0806CBC4();
}

extern "C" void* sub_0806CBD8(void) {
    return &gUnknown_02001D30;
}

extern "C" void* sub_0806CBE0(void) {
    // Only allocate on first call
    if (gUnknown_02001E2C++ == 0) {
        gUnknown_02001E30 = new KeyPad();
    }

    return gUnknown_02001E30;
}

extern "C" KeyPad* KeyPadInstance(void) {
    return gUnknown_02001E30;
}

extern "C" void sub_0806CC1C() {
    if (gUnknown_02001E2C > 0) {
        if (--gUnknown_02001E2C == 0) {
            delete gUnknown_02001E30;
            gUnknown_02001E30 = NULL;
        }
    }
}

void* sub_0806CC58() {
    return sub_0806CBD8();
}

KeyPad::KeyPad() : keys(0), new_keys(0), long_keys(0) {
    _20 = 0x2d;
    _22 = 0x8;  // START_BUTTON?

    CpuFill16(0, hold_timers, sizeof(hold_timers));
    listen(ClockManager::get(), SysClock(), gUnknown_080FF9B4);
    listen(ClockManager::get(), AppClock(), gUnknown_080FF9BC);
}

KeyPad::~KeyPad() {}

void KeyPad::set_20(u32 val) {
    _20 = val;
}

void KeyPad::set_22(u32 val) {
    _22 = val;
}

u32 KeyPad::get_20() {
    return _20;
}

u32 KeyPad::get_22() {
    return _22;
}

u32 KeyPad::getKeys() {
    return keys;
}

u32 KeyPad::getNewKeys() {
    return new_keys;
}

extern "C" NONMATCH("asm/non_matching/keypad/sub_0806CD5C.inc",
                    void sub_0806CD5C(KeyPad* kp, Clock* clock)) {
    kp->new_keys = 0;
    kp->long_keys = 0;
    if ((clock->mTime & 1) == 0) {
        u32 keys = REG_KEYINPUT ^ 0x3FF;
        kp->new_keys = keys & ~kp->keys;
        kp->keys = keys;
    }

    for (int i = 0; i < 16; ++i) {
        u16 k = 1 << i;

        if (kp->keys & k) {
            kp->hold_timers[i]++;
            if (kp->hold_timers[i] == kp->_20) {
                kp->long_keys |= k;
            } else if (kp->hold_timers[i] != kp->_20 + kp->_22) {
                kp->long_keys &= ~k;
            } else {
                kp->long_keys |= k;
                kp->hold_timers[i] -= kp->_22;
            }
        }
    }
}
END_NONMATCH

void sub_0806CE0C(KeyPad* kp) {
    if (kp->new_keys & DPAD_UP) {
        kp->emit(UpKeyPress());
    }
    if (kp->new_keys & DPAD_DOWN) {
        kp->emit(DownKeyPress());
    }
    if (kp->new_keys & DPAD_LEFT) {
        kp->emit(LeftKeyPress());
    }
    if (kp->new_keys & DPAD_RIGHT) {
        kp->emit(RightKeyPress());
    }
    if (kp->new_keys & A_BUTTON) {
        kp->emit(AKeyPress());
    }
    if (kp->new_keys & B_BUTTON) {
        kp->emit(BKeyPress());
    }
    if (kp->new_keys & R_BUTTON) {
        kp->emit(RKeyPress());
    }
    if (kp->new_keys & L_BUTTON) {
        kp->emit(LKeyPress());
    }
    if (kp->new_keys & START_BUTTON) {
        kp->emit(StartKeyPress());
    }
    if (kp->new_keys & SELECT_BUTTON) {
        kp->emit(SelectKeyPress());
    }

    if (kp->long_keys & DPAD_UP) {
        kp->emit(UpKeyLongPress());
    }
    if (kp->long_keys & DPAD_DOWN) {
        kp->emit(DownKeyLongPress());
    }
    if (kp->long_keys & DPAD_LEFT) {
        kp->emit(LeftKeyLongPress());
    }
    if (kp->long_keys & DPAD_RIGHT) {
        kp->emit(RightKeyLongPress());
    }
    if (kp->long_keys & A_BUTTON) {
        kp->emit(AKeyLongPress());
    }
    if (kp->long_keys & B_BUTTON) {
        kp->emit(BKeyLongPress());
    }
    if (kp->long_keys & L_BUTTON) {
        kp->emit(LKeyLongPress());
    }
    if (kp->long_keys & R_BUTTON) {
        kp->emit(RKeyLongPress());
    }
    if (kp->long_keys & START_BUTTON) {
        kp->emit(StartKeyLongPress());
    }
    if (kp->long_keys & SELECT_BUTTON) {
        kp->emit(SelectKeyLongPress());
    }
}
