#include "core/keypad.h"
#include "core/clock.h"

extern "C" {
#include "gba/gba.h"
}

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

void* sub_0806CBD8();

void* sub_0806CC58() {
    return sub_0806CBD8();
}

KeyPad::KeyPad() : keys(0), new_keys(0), long_keys(0) {
    _20 = 0x2d;
    _22 = 0x8;  // START_BUTTON?

    CpuFill16(0, hold_timers, sizeof(hold_timers));
    registerClock(ClockManager::get(), SysClock(), gUnknown_080FF9B4);
    registerClock(ClockManager::get(), AppClock(), gUnknown_080FF9BC);
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
        kp->base_54(UpKeyPress());
    }
    if (kp->new_keys & DPAD_DOWN) {
        kp->base_54(DownKeyPress());
    }
    if (kp->new_keys & DPAD_LEFT) {
        kp->base_54(LeftKeyPress());
    }
    if (kp->new_keys & DPAD_RIGHT) {
        kp->base_54(RightKeyPress());
    }
    if (kp->new_keys & A_BUTTON) {
        kp->base_54(AKeyPress());
    }
    if (kp->new_keys & B_BUTTON) {
        kp->base_54(BKeyPress());
    }
    if (kp->new_keys & R_BUTTON) {
        kp->base_54(RKeyPress());
    }
    if (kp->new_keys & L_BUTTON) {
        kp->base_54(LKeyPress());
    }
    if (kp->new_keys & START_BUTTON) {
        kp->base_54(StartKeyPress());
    }
    if (kp->new_keys & SELECT_BUTTON) {
        kp->base_54(SelectKeyPress());
    }

    if (kp->long_keys & DPAD_UP) {
        kp->base_54(UpKeyLongPress());
    }
    if (kp->long_keys & DPAD_DOWN) {
        kp->base_54(DownKeyLongPress());
    }
    if (kp->long_keys & DPAD_LEFT) {
        kp->base_54(LeftKeyLongPress());
    }
    if (kp->long_keys & DPAD_RIGHT) {
        kp->base_54(RightKeyLongPress());
    }
    if (kp->long_keys & A_BUTTON) {
        kp->base_54(AKeyLongPress());
    }
    if (kp->long_keys & B_BUTTON) {
        kp->base_54(BKeyLongPress());
    }
    if (kp->long_keys & L_BUTTON) {
        kp->base_54(LKeyLongPress());
    }
    if (kp->long_keys & R_BUTTON) {
        kp->base_54(RKeyLongPress());
    }
    if (kp->long_keys & START_BUTTON) {
        kp->base_54(StartKeyLongPress());
    }
    if (kp->long_keys & SELECT_BUTTON) {
        kp->base_54(SelectKeyLongPress());
    }
}
