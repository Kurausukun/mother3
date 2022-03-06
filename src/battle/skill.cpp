#include "battle/skill.h"

extern "C" Base* sub_080728B8();
extern "C" Base* sub_080728D8();
extern "C" Base* sub_080728F8();

extern "C" void sub_0807A714(Skill*, u32, u32);
extern "C" void sub_08073018(u32, u32);
extern "C" void sub_08072B70();
extern "C" void sub_08072D0C();
extern "C" void playSound(u16);

extern ClockData gUnknown_08107DB0;
extern ClockData gUnknown_08107DB8;

extern "C" NONMATCH("asm/non_matching/skill/__5SkillUi.inc", void __5SkillP4Unit(Skill* thisx, Unit* user)) {
    thisx->mUser = user;
    thisx->_40 = 0;
    thisx->_44 = 0;

    thisx->listen(sub_080728B8(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(sub_080728D8(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(sub_080728F8(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(sub_080728B8(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(sub_080728D8(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(sub_080728F8(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(sub_080728B8(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(sub_080728D8(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(sub_080728F8(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(sub_080728B8(), UnitDie(), gUnknown_08107DB8);
    thisx->listen(sub_080728D8(), UnitDie(), gUnknown_08107DB8);
    thisx->listen(sub_080728F8(), UnitDie(), gUnknown_08107DB8);
}
END_NONMATCH

Skill::~Skill() {}

Unit* Skill::getUser() const {
    return mUser;
}

Unit* Skill::addTarget(Unit* u) {
    mEnemyTargets.append(u);
    return u;
}

bool Skill::removeTarget(Unit* u) {
    return mAllyTargets.remove(u) || mEnemyTargets.remove(u);
}

void Skill::clearTargets() {
    mAllyTargets.clear();
    mEnemyTargets.clear();
}

s32 Skill::numTargets() const {
    return mAllyTargets.size() + mEnemyTargets.size();
}

//! @bug if something is appended to mAllyTargets, then all indexes for mEnemyTargets are invalidated...
Unit* Skill::getTarget(s32 idx) const {
    if (idx < mAllyTargets.size()) {
        return mAllyTargets[idx];
    } else if (idx < mAllyTargets.size() + mEnemyTargets.size()) {
        return mEnemyTargets[idx - mAllyTargets.size()];
    } else {
        return NULL;
    }
}

s32 Skill::getTargetIdx(Unit* u) const {
    s32 idx = mAllyTargets.indexOf(u);
    if (idx < mAllyTargets.size())
        return idx;
    
    idx = mEnemyTargets.indexOf(u);
    if (idx < mEnemyTargets.size())
        return mAllyTargets.size() + idx;
    return numTargets();
}

NONMATCH("asm/non_matching/skill/sub_08078410__5Goods.inc", u32 Skill::skill_1a0()) {
    if (skill_1b8() == 1) {
        return 0;
    }

    sub_0807A714(this, 1, 0);
    skill_68();
    sub_0807A714(this, 2, 0);
    while (skill_1b8() != 1) {
        sub_08073018(1, 0);
        sub_08072B70();
        sub_08072D0C();

        if (skill_1b8() == 1)
            break;

        bool x = mEnemyTargets.size() <= 0;
        if (x) break;

        skill_a0(mEnemyTargets[0]);
        mAllyTargets.append(mEnemyTargets[0]);
        mEnemyTargets.popFront();
    }
    sub_0807A714(this, 3, 0);
    skill_140();
    sub_0807A714(this, 4, 0);
    return _40 == 4;
}
END_NONMATCH

void Skill::skill_68() {
    sub_08073018(1, 0);
    sub_08072B70();
    sub_08072D0C();
    if (skill_1b8() == 1)
        return;

    getUser()->unit_d8(this);
    for (int i = 0; i < numTargets(); i++) {
        getTarget(i)->unit_f0(this);
    }
    skill_70();
    skill_78();
    sub_08073018(1, 0);
    sub_08072B70();
    sub_08072D0C();
    if (skill_1b8() == 1)
        return;

    _44 |= 1;
    skill_80();
    if (skill_1b8() == 1)
        return;

    skill_88();
    skill_90();
}

void Skill::skill_70() {}

void Skill::skill_78() {
    playSound(sfxNo());
}

void Skill::skill_80() {
    Msg m = showUseMessage();

    m.print(PrintSettings(0, 0, 0), true);
}

extern "C" void sub_08073150(u32, Unit*, u32, Unit**);

void Skill::skill_88() {
    if (hasDim() == 1) {
        sub_08073150(0xb5, getUser(), 0, 0);
    }
}

void Skill::skill_90() {
    sub_08073150(animNo(), getUser(), mEnemyTargets.size(), mEnemyTargets.data());
}
