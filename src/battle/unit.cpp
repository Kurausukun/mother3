#include "battle/unit.h"
#include "battle/action.h"
#include "functions.h"

UnitCmd* sub_080651A4(u16, Unit*);
extern u16 gUnknown_08106360[];

RTTI_IMPL(Suspend);
RTTI_IMPL(Resume);
RTTI_IMPL(UnitJoin);
RTTI_IMPL(UnitRevive);
RTTI_IMPL(UnitEscape);
RTTI_IMPL(UnitDie);

Unit::Unit() : mWeaknessCount(0), _54(0) {
    mLevel = 1;
    mHP = 1;
    mMaxHP = 1;
    mPP = 0;
    mMaxPP = 0;
    mOffense = 0;
    mDefense = 0;
    mIQ = 0;
    mSpeed = 0;
    mKindness = 0;
    _d8 = 0;
    _f4.dead = 0;

    u32 value1 = 100;
    for (int i = 0; i < 5; ++i) {
        if (mWeaknessCount + 1 < 6) {
            mWeaknesses[mWeaknessCount++] = value1;
        }
    }

    u32 value2 = 100;
    for (int i = 0; i < 64; ++i) {
        if (_54 + 1 <= 64) {
            mStatusWeaknesses[_54++] = value2;
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
    onDeath();
    setDead(1, 0);
    for (int i = 0; i < statusCount(); ++i) {
        Status* c = getStatus(i);
        if (c->removeOnDeath() == 1) {
            removeOneStatus(getStatusType(i));
            i--;
        }
    }
}

void Unit::revive() {
    setDead(0, 0);
}

bool Unit::setDead(u32 value, u8 force) {
    if (_f4.dead != value || force == 1) {
        _f4.dead = value;
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
        onDeath();
        return false;
    }
    return true;
}

ASM_FUNC("asm/non_matching/unit/unit_68__4Unit.inc", u8 Unit::unit_68());

bool Unit::unit_70(Action* a) {
    return a->action_1a0();
}

void Unit::unit_d8(Action* a1) {
    unit_78(a1);
}

void Unit::unit_78(Action* a1) {}

void Unit::unit_e0(Action* a1) {
    unit_80(a1);
}

void Unit::unit_80(Action* a1) {
}

void Unit::unit_e8(Action* a1) {
    unit_88(a1);
}

void Unit::unit_88(Action* a1) {}

void Unit::unit_f0(Action* a1) {
    unit_90(a1);
}

void Unit::unit_90(Action* a1) {}

void Unit::unit_f8(Action* a1) {
    unit_98(a1);
}

void Unit::unit_98(Action* a1) {}

void Unit::unit_100(Action* a1) {
    unit_a0(a1);
}

void Unit::unit_a0(Action* a1) {}

void Unit::onDeath() {}

void Unit::setLevel(s32 value) {
    mLevel = clampS32(value, 0, 99);
}

void Unit::setHP(s32 value) {
    mHP = clampS32(value, 0, maxHP());
}

void Unit::setMaxHP(s32 value) {
    mMaxHP = clampS32(value, 0, 99999999);
}

void Unit::setPP(s32 value) {
    mPP = clampS32(value, 0, maxPP());
}

void Unit::setMaxPP(s32 value) {
    mMaxPP = clampS32(value, 0, 99999999);
}

void Unit::setOffense(s32 value) {
    mOffense = clampS32(value, 0, 255);
}

void Unit::setDefense(s32 value) {
    mDefense = clampS32(value, 0, 255);
}

void Unit::setIQ(s32 value) {
    mIQ = clampS32(value, 0, 255);
}

void Unit::setSpeed(s32 value) {
    mSpeed = clampS32(value, 0, 255);
}

void Unit::setKindness(s32 value) {
    mKindness = clampS32(value, 0, 255);
}

void Unit::setElementWeakness(s32 idx, s32 value) {
    setClamped(&mWeaknesses[idx], value);
}

void Unit::setStatusWeakness(u16 idx, s32 value) {
    setClamped(&mStatusWeaknesses[idx], value);
}

void Unit::unit_170(u32 value) {
    _d8 = value;
}

s32 Unit::level() const {
    return mLevel;
}

s32 Unit::hpReal() const {
    return mHP;
}

s32 Unit::hp() const {
    return hpReal();
}

s32 Unit::maxHP() const {
    return mMaxHP;
}

s32 Unit::ppReal() const {
    return mPP;
}

s32 Unit::pp() const {
    return ppReal();
}

s32 Unit::maxPP() const {
    return mMaxPP;
}

s32 Unit::offense() const {
    return mOffense;
}

s32 Unit::defense() const {
    return mDefense;
}

s32 Unit::iq() const {
    return mIQ;
}

s32 Unit::speed() const {
    return mSpeed;
}

s32 Unit::kindness() const {
    return mKindness;
}

s32 Unit::getElementWeakness(u32 idx) const {
    return get48(idx);
}

s32 Unit::getStatusWeakness(u16 idx) const {
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

ASM_FUNC("asm/non_matching/unit/unit_270__4UnitUi.inc", s32 Unit::removeOneStatus(s32 idx));

void Unit::removeStatus(Status::Type type) {
    while (hasStatus(type) == 1) {
        removeOneStatus(type);
    }
}

void Unit::clearAllStatuses() {
    while (statusCount() > 0) {
        removeOneStatus(getStatusType(0));
    }
}

s32 Unit::statusCount() const {
    return mStatuses.size();
}

Status::Type Unit::getStatusType(s32 idx) {
    Status* s = mStatuses[idx];
    return s->getStatusType();
}

Status* Unit::getStatus(s32 idx) {
    return mStatuses[idx];
}

bool Unit::hasStatus(Status::Type type) {
    return getStatusIdx(type) < statusCount();
}

s32 Unit::getStatusIdx(Status::Type type) {
    for (int i = 0; i < statusCount(); ++i) {
        if (getStatusType(i) == type) {
            return i;
        }
    }
    return statusCount();
}

ASM_FUNC("asm/non_matching/unit/unit_2b0__4UnitUs.inc", Status* Unit::findStatus(Status::Type type));

s32 Unit::getStatusTypeCount(Status::Type type) {
    s32 num = 0;

    for (int i = 0; i < statusCount(); i++) {
        if (getStatusType(i) == type) {
            num++;
        }
    }
    return num;
}
