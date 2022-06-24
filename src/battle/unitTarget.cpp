#include "battle/unitTarget.h"
#include "battle/keypad.h"
#include "battle/monster.h"

extern "C" bool sub_08072938(Unit* u);
extern "C" bool typeIsMonster(Unit* u);
s32 sub_08072A88();
Monster* sub_08072AA4(s32);
extern "C" s32 getPartyCount();
extern "C" Monster* getPlayer(s32);
extern "C" s32 sub_08072EA8();
extern "C" Unit* sub_08072EC4(s32);
extern "C" Unit* sub_08072A18(u16);
extern "C" s32 sub_0807067C(s32, s32);
extern "C" s32 randrange(s32, s32);
extern "C" s32 randrange2(s32, s32);
extern "C" Base* getPartyInfo();

extern ClockData gUnknown_08107070;
extern ClockData gUnknown_08107078;
extern ClockData gUnknown_08107080;
extern ClockData gUnknown_08107088;
extern ClockData gUnknown_08107090;
extern ClockData gUnknown_08107098;
extern ClockData gUnknown_081070A0;
extern ClockData gUnknown_081070A8;

UnitTarget::UnitTarget(u16 target, Unit* unit) {
    mInfo = &gUnitTargetData[target];
    mUnit = unit;
}

UnitTarget::~UnitTarget() {}

u32 UnitTarget::getType() const {
    return mInfo->type;
}

Unit* UnitTarget::getUnit() const {
    return mUnit;
}

u32 UnitTarget::getSelection() const {
    return mInfo->selection;
}

bool UnitTarget::targettingAlly() {
    switch (getSelection()) {
    case 0:
        return sub_08072938(getUnit());
    case 1:
    case 2:
    case 3:
        return 1;
    case 4:
    case 5:
        return 0;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
        return 1;
    default:
        return 0;
    }
}

bool UnitTarget::attackdata_98() {
    switch (getSelection()) {
    case 0:
        return typeIsMonster(getUnit());
    case 1:
    case 2:
    case 3:
        return 0;
    case 4:
    case 5:
    case 6:
        return 1;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
        return 0;
    default:
        return 0;
    }
}

s32 UnitTarget::attackdata_a0() const {
    return mInfo->_8;
}

bool UnitTarget::attackdata_a8() const {
    return attackdata_a0() < 2;
}

bool UnitTarget::attackdata_b0() const {
    return attackdata_a0() > 1;
}

u32 UnitTarget::attackdata_b8() const {
    return mInfo->_c;
}

bool UnitTarget::attackdata_c0() const {
    return mInfo->_10 != 0;
}

s32 UnitTarget::attackdata_c8() {
    if (attackdata_68() != 1)
        return 1;

    if (attackdata_70() != 1)
        return 1;

    return attackdata_110() < 1;
}

bool UnitTarget::attackdata_68() {
    while (numTargets() > 0) {
        removeTarget(attackdata_f0(0));
    }

    switch (getSelection()) {
    case 0:
        addTarget(getUnit());
        break;
    case 1:
        for (int i = 0; i < sub_08072A88(); i++) {
            if (sub_08072AA4(i) != getUnit()) {
                addTarget(sub_08072AA4(i));
            }
        }
        break;
    case 2:
        for (int i = 0; i < sub_08072A88(); i++) {
            addTarget(sub_08072AA4(i));
        }
        break;
    case 3:
        for (int i = 0; i < getPartyCount(); i++) {
            addTarget(getPlayer(i));
        }
        break;
    case 4:
        for (int i = 0; i < sub_08072EA8(); i++) {
            if (sub_08072EC4(i) != getUnit()) {
                addTarget(sub_08072EC4(i));
            }
        }
        break;
    case 5:
        for (int i = 0; i < sub_08072EA8(); i++) {
            addTarget(sub_08072EC4(i));
        }
        break;
    case 6:
        for (int i = 0; i < sub_08072A88(); i++) {
            addTarget(sub_08072AA4(i));
        }
        for (int i = 0; i < sub_08072EA8(); i++) {
            addTarget(sub_08072EC4(i));
        }
        break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
        if (sub_08072A18(getSelection() - 6)) {
            addTarget(sub_08072A18(getSelection() - 6));
        }
        break;
    }
    return mTargets.empty();
}

Unit* UnitTarget::addTarget(Unit* u) {
    mTargets.append(u);
    return u;
}

bool UnitTarget::removeTarget(Unit* u) {
    return mTargets.remove(u);
}

s32 UnitTarget::numTargets() const {
    return mTargets.size();
}

s32 UnitTarget::attackdata_e8() const {
    s32 a = numTargets();
    s32 b = attackdata_a0();
    if (b > a)
        b = a;
    return b;
}

Unit* UnitTarget::attackdata_f0(s32 idx) {
    return mTargets[idx];
}

s32 UnitTarget::attackdata_f8(Unit* unit) const {
    return mTargets.indexOf(unit);
}

NONMATCH("asm/non_matching/unitTarget/attackdata_70.inc", bool UnitTarget::attackdata_70()) {
    s32 h;

    while (attackdata_110() > 0) {
        attackdata_108(attackdata_118(0));
    }
    switch (attackdata_b8()) {
    case 0:
        for (int i = 0; i < attackdata_e8(); i++) {
            attackdata_100(attackdata_f0(i));
        }
        break;
    case 1:
        for (int i = 0; i < attackdata_a0(); i++) {
            attackdata_100(attackdata_f0(sub_0807067C(i, numTargets())));
        }
        break;
    case 2:
        h = numTargets() / 2;
        if (mTargets.size() > 0) {
            for (int i = 0; i < h; i++) {
                s32 ia = randrange(0, mTargets.size() - 1);
                s32 ib = randrange(0, mTargets.size() - 1);
                Unit* tmp = mTargets[ia];
                mTargets[ia] = mTargets[ib];
                mTargets[ib] = tmp;
            }
        }
        for (int i = 0; i < attackdata_e8(); i++) {
            attackdata_100(attackdata_f0(i));
        }
        break;
    case 3:
        for (int i = 0; i < attackdata_a0(); i++) {
            attackdata_100(attackdata_f0(randrange2(0, mTargets.size() - 1)));
        }
        break;
    case 4:
        Vector<Unit*> v;
        for (int i = 0; i < numTargets(); i++) {
            v.append(attackdata_f0(i));
        }
        for (int i = 0; i < v.size(); i++) {
            for (int j = v.size() - 2; j >= i; j--) {
                if (v[j]->hpReal() > v[j + 1]->hpReal()) {
                    Unit* tmp = v[j];
                    v[j] = v[j - 1];
                    v[j - 1] = tmp;
                }
            }
        }
        for (int i = 0; i < attackdata_a0(); i++) {
            if (i >= v.size())
                break;
            attackdata_100(v[i]);
        }
        break;
    }
    return attackdata_110() > 0;
}
END_NONMATCH

Unit* UnitTarget::attackdata_100(Unit* u) {
    _38.append(u);
    return u;
}

bool UnitTarget::attackdata_108(Unit* u) {
    return _38.remove(u);
}

s32 UnitTarget::attackdata_110() const {
    return _38.size();
}

Unit* UnitTarget::attackdata_118(s32 idx) {
    return _38[idx];
}

s32 UnitTarget::attackdata_120(Unit* unit) const {
    return _38.indexOf(unit);
}

extern "C" NONMATCH("asm/non_matching/unitTargetChoice/__16UnitTargetChoiceUsP4Unit.inc",
                    void __16UnitTargetChoiceUsP4Unit(UnitTargetChoice* thisx, u16 target,
                                                      Unit* unit)) {
    thisx->_5c = 0;
    thisx->_60 = 1;
    thisx->_64 = 0;

    thisx->listen(&thisx->mKeyFocuser, LeftKeyPress(), gUnknown_08107070);
    thisx->listen(&thisx->mKeyFocuser, LeftKeyLongPress(), gUnknown_08107070);
    thisx->listen(&thisx->mKeyFocuser, RightKeyPress(), gUnknown_08107078);
    thisx->listen(&thisx->mKeyFocuser, RightKeyLongPress(), gUnknown_08107078);
    thisx->listen(&thisx->mKeyFocuser, AKeyPress(), gUnknown_08107080);
    thisx->listen(&thisx->mKeyFocuser, AKeyLongPress(), gUnknown_08107080);
    thisx->listen(&thisx->mKeyFocuser, LKeyPress(), gUnknown_08107080);
    thisx->listen(&thisx->mKeyFocuser, LKeyLongPress(), gUnknown_08107080);
    thisx->listen(&thisx->mKeyFocuser, BKeyPress(), gUnknown_08107088);
    thisx->listen(getPartyInfo(), Suspend(), gUnknown_08107090);
    thisx->listen(getPartyInfo(), UnitJoin(), gUnknown_08107098);
    thisx->listen(getPartyInfo(), UnitRevive(), gUnknown_08107098);
    thisx->listen(getPartyInfo(), UnitEscape(), gUnknown_081070A0);
    thisx->listen(getPartyInfo(), UnitDie(), gUnknown_081070A0);
    thisx->listen(getPartyInfo(), Resume(), gUnknown_081070A8);
}
END_NONMATCH

UnitTargetChoice::~UnitTargetChoice() {
    for (int i = 0; i < _154.size(); i++) {
        delete _154[i];
    }
    for (int i = 0; i < numTargets(); i++) {
        sub_08077CF0(attackdata_f0(i), 0);
    }
}
