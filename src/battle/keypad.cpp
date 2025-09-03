#include "battle/keypad.h"
#include "battle/clock.h"

extern "C" {
#include "gba/gba.h"
}

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

void* sub_0806CBD8();

extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA48.inc", void sub_0806CA48());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA50.inc", void sub_0806CA50());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA5C.inc", void sub_0806CA5C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA64.inc", void sub_0806CA64());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA70.inc", void sub_0806CA70());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA78.inc", void sub_0806CA78());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA84.inc", void sub_0806CA84());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA8C.inc", void sub_0806CA8C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CA98.inc", void sub_0806CA98());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAA0.inc", void sub_0806CAA0());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAAC.inc", void sub_0806CAAC());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAB4.inc", void sub_0806CAB4());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAC0.inc", void sub_0806CAC0());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAC8.inc", void sub_0806CAC8());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAD4.inc", void sub_0806CAD4());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CADC.inc", void sub_0806CADC());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAE8.inc", void sub_0806CAE8());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAF0.inc", void sub_0806CAF0());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CAFC.inc", void sub_0806CAFC());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB04.inc", void sub_0806CB04());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB10.inc", void sub_0806CB10());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB18.inc", void sub_0806CB18());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB24.inc", void sub_0806CB24());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB2C.inc", void sub_0806CB2C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB38.inc", void sub_0806CB38());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB40.inc", void sub_0806CB40());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB4C.inc", void sub_0806CB4C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB54.inc", void sub_0806CB54());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB60.inc", void sub_0806CB60());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB68.inc", void sub_0806CB68());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB74.inc", void sub_0806CB74());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB7C.inc", void sub_0806CB7C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB88.inc", void sub_0806CB88());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB90.inc", void sub_0806CB90());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CB9C.inc", void sub_0806CB9C());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBA4.inc", void sub_0806CBA4());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBB0.inc", void sub_0806CBB0());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBB8.inc", void sub_0806CBB8());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBC4.inc", void sub_0806CBC4());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBCC.inc", void sub_0806CBCC());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBD8__Fv.inc", void sub_0806CBD8__Fv());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CBE0.inc", void sub_0806CBE0());
extern "C" ASM_FUNC("asm/non_matching/keypad/KeyPadInstance.inc", void KeyPadInstance());
extern "C" ASM_FUNC("asm/non_matching/keypad/sub_0806CC1C.inc", void sub_0806CC1C());

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
