#include "keypad.h"
#include "core/clock.h"
extern "C" {
#include "gba/gba.h"
}

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

// struct BattleBase : Unk {
//     BattleBase() {}

//     virtual ~BattleBase() {}

//     virtual void* manager();
// };

void* sub_0806CBD8();

void* sub_0806CC58() {
    return sub_0806CBD8();
}

KeyPad::KeyPad() : keys(0), newKeys(0), _48(0) {
    _20 = 0x2d;
    _22 = 0x8;

    CpuFill16(0, holdTimer, sizeof(holdTimer));
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
    return newKeys;
}
