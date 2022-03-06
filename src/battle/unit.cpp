#include "battle/unit.h"
#include "functions.h"

UnitCmd* sub_080651A4(u16, Unit*);
extern u16 gUnknown_08106360[];

SINGLETON_IMPL(Suspend);
SINGLETON_IMPL(Resume);
SINGLETON_IMPL(UnitJoin);
SINGLETON_IMPL(UnitRevive);
SINGLETON_IMPL(UnitEscape);
SINGLETON_IMPL(UnitDie);

Unit::Unit() : _44(0), _54(0) {
    mLevel = 1;
    mHP = 1;
    mMaxHP = 1;
    mPP = 0;
    mMaxPP = 0;
    mIQ = 0;
    mSpeed = 0;
    _3c = 0;
    _3e = 0;
    _40 = 0;
    _d8 = 0;
    _f4.dead = 0;

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
    t->unit_230();
}
END_NONMATCH

void Unit::nullsub_106() {}

void Unit::kill() {
    unit_108();
    setDead(1, 0);
    for (int i = 0; i < unit_288(); ++i) {
        UnitCmd* c = unit_298(i);
        if (c->x_138() == 1) {
            unit_270(unit_290(i));
            i--;
        }
    }
}

void Unit::revive() {
    setDead(0, 0);
}

bool Unit::setDead(u32 a1, u8 a2) {
    if (_f4.dead != a1 || a2 == 1) {
        _f4.dead = a1;
        return true;
    }
    return false;
}

bool Unit::isAlive() {
    return _f4.dead == 0;
}

bool Unit::isDead() {
    return _f4.dead == 1;
}

u8 Unit::unit_d0() {
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

void Unit::unit_d8(Skill* a1) {
    unit_78(a1);
}

void Unit::unit_78(Skill* a1) {}

void Unit::unit_e0(u32 a1) {
    unit_80(a1);
}

void Unit::unit_80(u32 a1) {
}

void Unit::unit_e8(u32 a1) {
    unit_88(a1);
}

void Unit::unit_88(u32 a1) {}

void Unit::unit_f0(Skill* a1) {
    unit_90(a1);
}

void Unit::unit_90(Skill* a1) {}

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

void Unit::setIQ(s32 a1) {
    mIQ = clampS32(a1, 0, 255);
}

void Unit::setSpeed(s32 a1) {
    mSpeed = clampS32(a1, 0, 255);
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

s32 Unit::level() const {
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

s32 Unit::getIQ() const {
    return mIQ;
}

s32 Unit::getSpeed() const {
    return mSpeed;
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

UnitCmd* Unit::unit_220(u32 a1) {
    UnitCmd* u = sub_080651A4(a1, this);
    u->x_68();
    _dc.append(u);
    return u;
}

ASM_FUNC("asm/non_matching/unit/unit_228__4UnitUi.inc", bool Unit::unit_228(u32 a1));

void Unit::unit_230(void) {
    while (unit_238() > 0) {
        unit_228(unit_240(0));
    }
}

s32 Unit::unit_238() const {
    return _dc.size();
}

u16 Unit::unit_240(s32 a1) {
    return _dc[a1]->x_78();
}

UnitCmd* Unit::unit_248(s32 a1) {
    return _dc[a1];
}

bool Unit::unit_250(u16 a1) {
    return unit_258(a1) < unit_238();
}

s32 Unit::unit_258(u16 a1) {
    for (int i = 0; i < unit_238(); ++i) {
        if (unit_240(i) == a1) {
            return i;
        }
    }
    return unit_238();
}

s32 Unit::unit_260(u16 a1) {
    for (int i = 0; i < unit_238(); ++i) {
        if (unit_240(i) == a1) {
            return unit_240(i);
        }
    }
    return 0;
}

ASM_FUNC("asm/non_matching/unit/unit_268__4UnitUi.inc", u32 Unit::unit_268(u32 a1));

bool Unit::flagStuff(u16 idx) {
    u16 x = idx - 1;
    if (x <= 7) {
        set_event_flag(gUnknown_08106360[idx - 1], 1);
        return true;
    }
    return false;
}

ASM_FUNC("asm/non_matching/unit/unit_270__4UnitUi.inc", u32 Unit::unit_270(u32 a1));

void Unit::removeStatus(u16 a1) {
    while (hasStatus(a1) == 1) {
        unit_270(a1);
    }
}

void Unit::unit_280(void) {
    while (unit_288() > 0) {
        unit_270(unit_290(0));
    }
}

s32 Unit::unit_288() const {
    return _e8.size();
}

u16 Unit::unit_290(s32 a1) {
    UnitCmd* tmp = _e8[a1];
    return tmp->x_e0();
}

UnitCmd* Unit::unit_298(s32 a1) {
    return _e8[a1];
}

bool Unit::hasStatus(u16 a1) {
    return unit_2a8(a1) < unit_288();
}

s32 Unit::unit_2a8(u16 a1) {
    for (int i = 0; i < unit_288(); ++i) {
        if (unit_290(i) == a1) {
            return i;
        }
    }
    return unit_288();
}

ASM_FUNC("asm/non_matching/unit/unit_2b0__4UnitUs.inc", s32 Unit::setAilment(u16 a1));

s32 Unit::unit_2b8(u16 a1) {
    s32 num = 0;

    for (int i = 0; i < unit_288(); i++) {
        if (unit_290(i) == a1) {
            num++;
        }
    }
    return num;
}
