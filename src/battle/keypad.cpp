#include "battle/keypad.h"
#include "battle/clock.h"
#include "gba/gba.h"

extern ClockData callback_update__6KeyPadP5Clock;
extern ClockData callback_emitNewKeys__6KeyPad;

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

MANAGER_IMPL(KeyPad)

KeyPad::KeyPad() : keys(0), new_keys(0), long_keys(0) {
    _20 = 0x2d;
    _22 = 0x8;  // START_BUTTON?

    CpuFill16(0, hold_timers, sizeof(hold_timers));
    listen(ClockManager::get(), SysClock(), callback_update__6KeyPadP5Clock);
    listen(ClockManager::get(), AppClock(), callback_emitNewKeys__6KeyPad);
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

NONMATCH("asm/non_matching/keypad/sub_0806CD5C.inc",
                    void KeyPad::update(Clock* clock)) {
    new_keys = 0;
    long_keys = 0;
    if ((clock->mTime & 1) == 0) {
        u32 keys = REG_KEYINPUT ^ 0x3FF;
        new_keys = keys & ~keys;
        keys = keys;
    }

    for (int i = 0; i < 16; ++i) {
        u16 k = 1 << i;

        if (keys & k) {
            hold_timers[i]++;
            if (hold_timers[i] == _20) {
                long_keys |= k;
            } else if (hold_timers[i] != _20 + _22) {
                long_keys &= ~k;
            } else {
                long_keys |= k;
                hold_timers[i] -= _22;
            }
        }
    }
}
END_NONMATCH

void KeyPad::emitNewKeys() {
    if (new_keys & DPAD_UP) {
        emit(UpKeyPress());
    }
    if (new_keys & DPAD_DOWN) {
        emit(DownKeyPress());
    }
    if (new_keys & DPAD_LEFT) {
        emit(LeftKeyPress());
    }
    if (new_keys & DPAD_RIGHT) {
        emit(RightKeyPress());
    }
    if (new_keys & A_BUTTON) {
        emit(AKeyPress());
    }
    if (new_keys & B_BUTTON) {
        emit(BKeyPress());
    }
    if (new_keys & R_BUTTON) {
        emit(RKeyPress());
    }
    if (new_keys & L_BUTTON) {
        emit(LKeyPress());
    }
    if (new_keys & START_BUTTON) {
        emit(StartKeyPress());
    }
    if (new_keys & SELECT_BUTTON) {
        emit(SelectKeyPress());
    }

    if (long_keys & DPAD_UP) {
        emit(UpKeyLongPress());
    }
    if (long_keys & DPAD_DOWN) {
        emit(DownKeyLongPress());
    }
    if (long_keys & DPAD_LEFT) {
        emit(LeftKeyLongPress());
    }
    if (long_keys & DPAD_RIGHT) {
        emit(RightKeyLongPress());
    }
    if (long_keys & A_BUTTON) {
        emit(AKeyLongPress());
    }
    if (long_keys & B_BUTTON) {
        emit(BKeyLongPress());
    }
    if (long_keys & L_BUTTON) {
        emit(LKeyLongPress());
    }
    if (long_keys & R_BUTTON) {
        emit(RKeyLongPress());
    }
    if (long_keys & START_BUTTON) {
        emit(StartKeyLongPress());
    }
    if (long_keys & SELECT_BUTTON) {
        emit(SelectKeyLongPress());
    }
}
