#include "battle/keypad.h"
#include "battle/clock.h"
#include "gba/gba.h"

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

RTTI_IMPL(UpKeyPress);
RTTI_IMPL(UpKeyLongPress);
RTTI_IMPL(DownKeyPress);
RTTI_IMPL(DownKeyLongPress);
RTTI_IMPL(LeftKeyPress);
RTTI_IMPL(LeftKeyLongPress);
RTTI_IMPL(RightKeyPress);
RTTI_IMPL(RightKeyLongPress);
RTTI_IMPL(AKeyPress);
RTTI_IMPL(AKeyLongPress);
RTTI_IMPL(BKeyPress);
RTTI_IMPL(BKeyLongPress);
RTTI_IMPL(LKeyPress);
RTTI_IMPL(LKeyLongPress);
RTTI_IMPL(RKeyPress);
RTTI_IMPL(RKeyLongPress);
RTTI_IMPL(StartKeyPress);
RTTI_IMPL(StartKeyLongPress);
RTTI_IMPL(SelectKeyPress);
RTTI_IMPL(SelectKeyLongPress);

SINGLETON_IMPL(KeyPad)

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

// Regression due to the singleton impls on keys/keypad, come back to this later!
extern "C" NONMATCH("asm/non_matching/keypad/emitNewKeys.inc",
                    void emitNewKeys(KeyPad* kp)) {
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
END_NONMATCH
