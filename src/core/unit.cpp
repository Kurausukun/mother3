#include "core/unit.h"

Unit::Unit() : _44(0), _54(0) {
    mLevel = 1;
    mHP = 1;
    mMaxHP = 1;
    mPP = 0;
    mMaxPP = 0;
    _38 = 0;
    _3a = 0;
    _3c = 0;
    _3e = 0;
    _40 = 0;
    _d8 = 0;
    _f4.value = 0;

    u32 value1 = 100;
    for (int i = 0; i < 5; ++i) {
        if (_44 + 1 <= 5) {
            _48[_44++] = value1;
        }
    }

    u32 value2 = 100;
    for (int i = 0; i < 64; ++i) {
        if (_54 + 1 <= 64) {
            _58[_54++] = value2;
        }
    }
}

// matches, but tries to de-inline a copy of ~Object
extern "C" NONMATCH("asm/non_matching/unit/unit_dt.inc", void Unit_dt(Unit* t)) {
    t->nullsub_27();
    t->sub_08075840();
    t->sub_08075400();
}
END_NONMATCH

void Unit::nullsub_106() {}

void Unit::sub_08074BA4() {
    unit_108();
    sub_08074C60(1, 0);
    for (int i = 0; i < unit_288(); ++i) {
        UnitCmd* c = unit_298(i);
        if (c->x_138() == 1) {
            unit_270(unit_290(i));
            i--;
        }
    }
}

void Unit::sub_08074C50() {
    sub_08074C60(0, 0);
}

bool Unit::sub_08074C60(u32 a1, u8 a2) {
    if (_f4.value != a1 || a2 == 1) {
        _f4.value = a1;
        return true;
    }
    return false;
}

bool Unit::unit_c0() {
    return _f4.value == 0;
}

bool Unit::unit_c8() {
    return _f4.value == 1;
}

bool Unit::unit_d0() {
    if (unit_68() != 1) {
        unit_108();
        return false;
    }
    return true;
}

ASM_FUNC("asm/non_matching/unit/unit_68__4Unit.inc", u8 Unit::unit_68());

s32 Unit::unit_70(Unit* u) const {
    return u->getHP();
}

void Unit::unit_d8(u32 a1) {
    unit_78(a1);
}

void Unit::unit_78(u32 a1) {}

void Unit::unit_e0(u32 a1) {
    unit_80(a1);
}

void Unit::unit_80(u32 a1) {}

void Unit::unit_e8(u32 a1) {
    unit_88(a1);
}

void Unit::unit_88(u32 a1) {}

void Unit::unit_f0(u32 a1) {
    unit_90(a1);
}

void Unit::unit_90(u32 a1) {}

void Unit::unit_f8(u32 a1) {
    unit_98(a1);
}

void Unit::unit_98(u32 a1) {}

void Unit::unit_100(u32 a1) {
    unit_a0(a1);
}

void Unit::unit_a0(u32 a1) {}

void Unit::unit_108() {}

void Unit::setLevel(s32 level) {
    mLevel = clampS32(level, 0, 99);
}

void Unit::setHP(s32 hp) {
    mHP = clampS32(hp, 0, getMaxHP());
}

void Unit::setMaxHP(s32 hp) {
    mMaxHP = clampS32(hp, 0, 99999999);
}

void Unit::setPP(s32 pp) {
    mPP = clampS32(pp, 0, getMaxPP());
}

void Unit::setMaxPP(s32 pp) {
    mMaxPP = clampS32(pp, 0, 99999999);
}

void Unit::unit_138(s32 a1) {
    _38 = clampS32(a1, 0, 255);
}

void Unit::unit_140(s32 a1) {
    _3a = clampS32(a1, 0, 255);
}

void Unit::unit_148(s32 a1) {
    _3c = clampS32(a1, 0, 255);
}

void Unit::unit_150(s32 a1) {
    _3e = clampS32(a1, 0, 255);
}

void Unit::unit_158(s32 a1) {
    _40 = clampS32(a1, 0, 255);
}

void Unit::unit_160(s32 idx, s32 value) {
    setClamped(&_48[idx], value);
}

void Unit::unit_168(u16 idx, s32 value) {
    setClamped(&_58[idx], value);
}

void Unit::unit_170(u32 value) {
    _d8 = value;
}

s32 Unit::getLevel() const {
    return mLevel;
}

s32 Unit::getHP() const {
    return mHP;
}

s32 Unit::unit_1a0() const {
    return getHP();
}

s32 Unit::getMaxHP() const {
    return mMaxHP;
}

s32 Unit::getPP() const {
    return mPP;
}

s32 Unit::unit_1b8() const {
    return getPP();
}

s32 Unit::getMaxPP() const {
    return mMaxPP;
}

s32 Unit::unit_1c8() const {
    return _38;
}

s32 Unit::unit_1d0() const {
    return _3a;
}

s32 Unit::unit_1d8() const {
    return _3c;
}

s32 Unit::unit_1e0() const {
    return _3e;
}

s32 Unit::unit_1e8() const {
    return _40;
}

s32 Unit::unit_1f0(u32 idx) const {
    return get48(idx);
}

s32 Unit::unit_1f8(u16 idx) const {
    return get58(idx);
}

s32 Unit::unit_200() const {
    return _d8;
}
