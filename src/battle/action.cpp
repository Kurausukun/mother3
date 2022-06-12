#include "battle/action.h"
#include "battle/archive.h"
#include "battle/unitTarget.h"

struct Messager : public Base {
    Messager();
    virtual ~Messager();

    virtual void messager_68();
    virtual void messager_70();
    virtual void messager_78();
    virtual void messager_80();
    virtual void messager_88();
    virtual void messager_90();
    virtual void messager_98();
    virtual void messager_a0();
    virtual void messager_a8();
    virtual void messager_b0();
    virtual void messager_b8();
    virtual void messager_c0();
    virtual void messager_c8();
    virtual void messager_d0();
    virtual void messager_d8();
    virtual void messager_e0();
    virtual void messager_e8();
    virtual void messager_f0();
    virtual u8 messager_f8(u32);
    virtual void messager_100();
};

extern "C" Base* sub_080728D8();
extern "C" Base* sub_080728F8();

extern "C" void fieldSet__6Actionib(Action*, u32, u32);
void sub_08073018(s32, s32);
void sub_08072B70();
void sub_08072D0C();
extern "C" void playSound(u16);

extern "C" u8 unitIsPlayer(Unit*, u32);
extern "C" Messager* sub_080728B8();
extern "C" void playSeq(u32, Unit*, Unit*);
extern "C" u8 sub_08072D84(Unit*, u32);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" s32 randS32(s32, s32);

extern "C" s32 sub_0807066C(s32, s32);
extern "C" bool sub_08073EE8(Unit*, u32, u32);
extern "C" void sub_0807335C(u16);
extern "C" void sub_080736F8(Unit*, u32);
extern "C" u8 sub_0807404C(Action*, u32);
extern "C" u8 sub_080741E8(Action*, u32);
extern "C" void sub_08073C4C(Unit*, u32, u32);
extern "C" void sub_08073D98(Unit*, u32, u32);
extern "C" bool sub_08072938(Unit*);

extern ClockData gUnknown_08107DB0;
extern ClockData gUnknown_08107DB8;

extern "C" NONMATCH("asm/non_matching/skill/__5SkillUi.inc",
                    void __6ActionP4Unit(Action* thisx, Unit* user)) {
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

Action::~Action() {}

Unit* Action::getUser() const {
    return mUser;
}

Unit* Action::addTarget(Unit* target) {
    mNextTargets.append(target);
    return target;
}

bool Action::removeTarget(Unit* target) {
    return mPrevTargets.remove(target) || mNextTargets.remove(target);
}

void Action::clearTargets() {
    mPrevTargets.clear();
    mNextTargets.clear();
}

s32 Action::numTargets() const {
    return mPrevTargets.size() + mNextTargets.size();
}

//! @bug if something is appended to mPrevTargets, then all indexes for mNextTargets are
//! invalidated...
Unit* Action::getTarget(s32 idx) const {
    if (idx < mPrevTargets.size()) {
        return mPrevTargets[idx];
    } else if (idx < mPrevTargets.size() + mNextTargets.size()) {
        return mNextTargets[idx - mPrevTargets.size()];
    } else {
        return NULL;
    }
}

s32 Action::getTargetIdx(Unit* target) const {
    s32 idx = mPrevTargets.indexOf(target);
    if (idx < mPrevTargets.size())
        return idx;

    idx = mNextTargets.indexOf(target);
    if (idx < mNextTargets.size())
        return mPrevTargets.size() + idx;
    return numTargets();
}

NONMATCH("asm/non_matching/skill/sub_08078410__5Goods.inc", u32 Action::action_1a0()) {
    if (action_1b8() == 1) {
        return 0;
    }

    fieldSet__6Actionib(this, 1, 0);
    action_68();
    fieldSet__6Actionib(this, 2, 0);
    while (action_1b8() != 1) {
        sub_08073018(1, 0);
        sub_08072B70();
        sub_08072D0C();

        if (action_1b8() == 1)
            break;

        bool x = mNextTargets.size() <= 0;
        if (x)
            break;

        action_a0(mNextTargets[0]);
        mPrevTargets.append(mNextTargets[0]);
        mNextTargets.popFront();
    }
    fieldSet__6Actionib(this, 3, 0);
    action_140();
    fieldSet__6Actionib(this, 4, 0);
    return _40 == 4;
}
END_NONMATCH

void Action::action_68() {
    sub_08073018(1, 0);
    sub_08072B70();
    sub_08072D0C();
    if (action_1b8() == 1)
        return;

    getUser()->unit_d8(this);
    for (int i = 0; i < numTargets(); i++) {
        getTarget(i)->unit_f0(this);
    }
    action_70();
    playSfx();
    sub_08073018(1, 0);
    sub_08072B70();
    sub_08072D0C();
    if (action_1b8() == 1)
        return;

    _44 |= 1;
    tellUseMessage();
    if (action_1b8() == 1)
        return;

    playDim();
    playAnim();
}

void Action::action_70() {}

void Action::playSfx() {
    playSound(sfxNo());
}

void Action::tellUseMessage() {
    Msg m = getUseMessage();

    m.print(PrintSettings(0, 0, 0), true);
}

extern "C" void sub_08073150(u32, Unit*, u32, Unit**);

void Action::playDim() {
    if (hasDim() == 1) {
        sub_08073150(0xb5, getUser(), 0, 0);
    }
}

void Action::playAnim() {
    sub_08073150(animNo(), getUser(), mNextTargets.size(), mNextTargets.data());
}

void Action::action_a0(Unit* target) {
    if (isResisted(target) == 1) {
        tellResisted(target);
        return;
    }

    if (calcMissed(target) != 1) {
        tellMissed(target);
        return;
    }

    // franklin badge check
    if (element() == ElementType::Thunder && unitIsPlayer(target, 2) == 1 &&
        sub_080728B8()->messager_f8(0xc1) == 1) {
        playSeq(0xc3, target, target);
        createMsg(0x188).print(PrintSettings(0, 0, 0), 1);
        if (sub_08072D84(getUser(), 0xbd) == 1 || sub_08072D84(getUser(), 0xbe) == 1) {
            hitPlayer(getUser(), randS32(164, 186), 1);
        } else {
            hitPlayer(getUser(), max(0, action_e8(getUser(), target)), 1);
        }
        playSeq(3, getUser(), getUser());
        return;
    }

    switch (effect()) {
    case EffectType::Damage:
        calcHit(target);
        action_118(target);
        break;
    case EffectType::Attack:
        action_d0(target);
        action_118(target);
        break;
    case EffectType::PsiDamage:
        action_e0(target);
        action_118(target);
        break;
    case EffectType::HealHP:
        action_f8(target);
        action_138(target, 0);
        action_118(target);
        break;
    case EffectType::HealHP2:
        onNoEffect(target);
        action_138(target, 0);
        action_118(target);
        break;
    case EffectType::PPHeal:
        action_108(target);
        action_138(target, 0);
        action_118(target);
        break;
    case EffectType::StatusChange:
        action_138(target, 0);
        if (hasAction() == 1) {
            action_118(target);
        } else {
            onFail(target);
        }
        break;
    case EffectType::Misc:
        onSuccess(target);
        action_138(target, 0);
        action_118(target);
        break;
    }
    getUser()->unit_e0(this);
    target->unit_f8(this);
}

bool Action::isResisted(Unit* target) {
    switch (effect()) {
    case EffectType::Damage:
    case EffectType::Attack:
    case EffectType::PsiDamage:
        return target->getElementWeakness(element()) <= 0;
    case EffectType::HealHP:
    case EffectType::HealHP2:
    case EffectType::PPHeal:
    case EffectType::StatusChange:
    case EffectType::Misc:
        return 0;
    }
    return 0;
}

void Action::tellResisted(Unit* target) {
    createMsg(0xec).print(PrintSettings(0, 0, 0), 1);
}

u8 Action::calcMissed(Unit* target) {
    if (hitChance() >= 100)
        return true;

    s32 chance = hitChance();
    s32 x = getUser()->clumsiness();
    s32 y = target->clumsiness();
    s32 difference = max(0, x - y);
    chance -= (difference / 4);
    return randS32(0, 99) < chance;
}

void Action::tellMissed(Unit* target) {
    sub_0807335C(action_298());
    sub_080736F8(target, 1);
}

// minor regalloc
NONMATCH("asm/non_matching/skill/skill_08078D4C.inc", void Action::calcHit(Unit* target)) {
    s32 heal = randS32(healLo(), healHi());
    s32 weak = max(0, target->getElementWeakness(element()));
    s32 t = sub_0807066C(weak * heal, 100);

    s32 crit = calcCrit(target);
    if (crit == 1) {
        t += max(1, t / 2);
    }
    if (element() == 0) {
        if (target->hasStatus(Status::Counter) == 1) {
            t /= 2;
        } else if (target->hasStatus(Status::Shield) == 1) {
            Status* s = target->findStatus(Status::Shield);
            s->status_128().print(PrintSettings(0, 0, 0), 1);
            playSeq(0x33, target, target);
            t /= 2;
        }
    }
    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    action_138(target, crit);

    if (element() != 0) {
        return;
    }

    if (target->hasStatus(Status::Counter) == 1) {
        Status* s = target->findStatus(Status::Counter);
        s->status_128().print(PrintSettings(0, 0, 0), 1);
        playSeq(0x36, target, target);
        hitPlayer(getUser(), max(1, t), 1);
        playSeq(successAnimNo(), target, getUser());
        sub_08073EE8(target, Status::Counter, 1);
    } else if (target->hasStatus(Status::Shield) == 1) {
        sub_08073EE8(target, Status::Shield, 1);
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/skill/sub_08079018.inc", void Action::action_d0(Unit* target)) {
    s32 h = action_d8(getUser(), target);
    s32 w = max(0, target->getElementWeakness(element()));
    s32 x = sub_0807066C(w * h, 100);
    s32 t = randS32((((x << 3) - x) << 1) >> 4, ((x << 4) + x) >> 4);
    // s32 t = randS32(x * 14 / 16, x * 17 / 16);

    bool crit = calcCrit(target);
    if (crit == 1) {
        t += max(1, t / 2);
    }

    if (target->hasStatus(Status::Defense) == 1) {
        t /= 2;
    }

    if (target->hasStatus(Status::Counter) == 1) {
        t /= 2;
    } else if (target->hasStatus(Status::Shield) == 1) {
        Status* s = target->findStatus(Status::Shield);
        s->status_128().print(PrintSettings(0, 0, 0), 1);
        playSeq(0x33, target, target);
        t /= 2;
    }

    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    action_138(target, crit);

    if (target->hasStatus(Status::Counter) == 1) {
        Status* s = target->findStatus(Status::Counter);
        s->status_128().print(PrintSettings(0, 0, 0), 1);
        playSeq(0x36, target, target);
        hitPlayer(getUser(), max(1, t), 1);
        playSeq(successAnimNo(), target, getUser());
        sub_08073EE8(target, Status::Counter, 1);
    } else if (target->hasStatus(Status::Shield) == 1) {
        sub_08073EE8(target, Status::Shield, 1);
    }
}
END_NONMATCH

s32 Action::action_d8(Unit* user, Unit* target) {
    s32 var1 = user->level();
    s32 mult1 = 347;
    s32 a = var1 * mult1 + 4915;

    s32 var2 = user->level();
    s32 mult2 = -170;
    s32 b = var2 * mult2 + 36608;

    s32 lvl = user->level();
    s32 user_iq = user->iq();
    s32 target_speed = target->speed();
    s32 z = (a * lvl + (user_iq - target_speed) * b) >> 16;
    return sub_0807066C(attackMult() * z, 15);
}

NONMATCH("asm/non_matching/skill/sub_080793B8.inc", void Action::action_e0(Unit* target)) {
    s32 h = action_e8(getUser(), target);
    s32 w = max(0, target->getElementWeakness(element()));
    s32 x = sub_0807066C(w * h, 100);
    s32 t = max(1, randS32((((x << 3) - x) << 1) >> 4, ((x << 4) + x) >> 4));

    s32 crit = calcCrit(target);
    if (crit == 1) {
        t += max(1, t / 2);
    }

    if (sub_0807404C(this, 15) != 1 && sub_0807404C(this, 16) != 1 && sub_0807404C(this, 17) != 1 &&
        sub_0807404C(this, 18) != 1 && sub_080741E8(this, 98) != 1 && sub_080741E8(this, 99) != 1 &&
        sub_080741E8(this, 100) != 1 && sub_080741E8(this, 101) != 1) {
        if (target->hasStatus(Status::PsiCounter) == 1) {
            t /= 2;
        } else if (target->hasStatus(Status::PsiShield) == 1) {
            Status* s = target->findStatus(Status::PsiShield);
            s->status_128().print(PrintSettings(0, 0, 0), 1);
            playSeq(0x39, target, target);
            t /= 2;
        }
    }

    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    action_138(target, crit);

    if (sub_0807404C(this, 15) != 1 && sub_0807404C(this, 16) != 1 && sub_0807404C(this, 17) != 1 &&
        sub_0807404C(this, 18) != 1 && sub_080741E8(this, 98) != 1 && sub_080741E8(this, 99) != 1 &&
        sub_080741E8(this, 100) != 1 && sub_080741E8(this, 101) != 1) {
        if (target->hasStatus(Status::PsiCounter) == 1) {
            Status* s = target->findStatus(Status::PsiCounter);
            s->status_128().print(PrintSettings(0, 0, 0), 1);
            playSeq(0x3c, target, target);
            hitPlayer(getUser(), max(1, t), 1);
            playSeq(successAnimNo(), target, getUser());
            sub_08073EE8(target, Status::PsiCounter, 1);
        } else if (target->hasStatus(Status::PsiShield) == 1) {
            sub_08073EE8(target, Status::PsiShield, 1);
        }
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/skill/sub_08079780.inc",
         s32 Action::action_e8(Unit* user, Unit* target)) {
    s32 lo = healLo();
    s32 hi = healHi();
    s32 add = (hi + lo) / 2;
    s32 sub = (hi - lo) / 2;
    s32 v2 = (user->unit_1d8() - target->unit_1d8());
    s32 v3;
    if (v2 < 0) {
        v3 = lo + -v2 * sub / 16;
    } else {
        v3 = add + v2 * sub / 16;
    }
    return randS32(v3, v3 + sub);
}
END_NONMATCH

bool Action::calcCrit(Unit* target) {
    return randS32(0, 99) < critChance();
}

void Action::action_f8(Unit* target) {
    s32 val = randS32(healLo(), healHi());
    s32 val2 = sub_0807066C(val * getUser()->unit_1e8(), 100);
    sub_08073C4C(target, val + val2, 1);
}

void Action::onNoEffect(Unit* target) {
    s32 val = randS32(healLo(), healHi());
    s32 val2 = sub_0807066C(val * getUser()->unit_1e8(), 100);
    sub_08073C4C(target, val + val2, 1);
}

void Action::action_108(Unit* target) {
    s32 val = randS32(healLo(), healHi());
    sub_08073D98(target, val, 1);
}

void Action::onSuccess(Unit* target) {}

void Action::action_118(Unit* target) {
    if (ailment() != 0 && target->hp() > 0) {
        calcStatusInflict(target, ailment(), ailmentChance(), 1);
    }
}

ASM_FUNC("asm/non_matching/skill/sub_08079A4C.inc",
         bool Action::calcStatusInflict(Unit* target, u16 status, s32 chance, bool unk));

void Action::onFail(Unit* target) {
    if (ailment() != 0 && target->hp() > 0) {
        action_130(target, ailment(), ailmentChance(), 1);
    }
}

// message objects arent being optimized into one
NONMATCH("asm/non_matching/skill/sub_08079EE4.inc",
         bool Action::action_130(Unit* target, u16 status, s32 chance, bool unk)) {
    if (target->hasStatus(status) != 1) {
        if (effect() == 6 && unk == 1) {
            createMsg(0xeb).print(PrintSettings(0, 0, 0), 1);
        }
        return false;
    } else if (randS32(0, 99) < chance) {
        createMsg(0xec).print(PrintSettings(0, 0, 0), 1);
        return false;
    } else {
        return sub_08073EE8(target, status, unk);
    }
}
END_NONMATCH

void Action::action_138(Unit* target, bool crit) {
    if ((effect() != 0 && effect() != 1 && effect() != 2) || target->hpReal() > 0 ||
        target->isAlive() != 1 || sub_08072938(target) != 1) {
        if (crit == true) {
            playSeq(nextAnim(), getUser(), target);
        } else {
            playSeq(successAnimNo(), getUser(), target);
        }
    }
}

void Action::action_140() {
    action_148();
    action_150();
    getUser()->unit_e8(this);

    for (int i = 0; i < numTargets(); i++) {
        getTarget(i)->unit_100(this);
    }
}

void Action::action_148() {
    if (hasDim() == 1) {
        sub_08073150(0xb4, getUser(), 0, NULL);
    }
}

void Action::action_150() {}

void Action::action_1a8() {
    fieldSet__6Actionib(this, 5, 0);
}

u8 Action::action_1b0() {
    return _44 & 1;
}

u8 Action::action_1b8() {
    return _40 == 5;
}

NONMATCH("asm/non_matching/skill/action_fixme__6Actioni.inc", Msg Action::action_fixme(s32 idx)) {
    Msg m = action_1d8();
    s32 i, j = 0;
    s32 count = 0;
    while (i < m.len()) {
        if (*m.sub_0806E334(i) == 0xFF01) {
            if (++count > idx) {
                break;
            } else {
                j = i + 1;
            }
        }
        i++;
    }

    if (idx < count + 1) {
        return Msg(m.sub_0806E334(i), i - j);
    } else {
        return Msg();
    }
}
END_NONMATCH

extern "C" void unit_join_callback(Action* s1, Action* s2) {
    if (s1->action_1b8() != 1) {
        UnitTarget target(s1->target(), s1->getUser());
        if (target.attackdata_c8() == 0 && s1->_40 < 2) {
            for (int i = 0; i < s1->numTargets(); i++) {
                target.attackdata_108(s1->getTarget(i));
            }
            for (int i = 0; i < target.attackdata_110(); i++) {
                if (target.attackdata_118(i) != s2->_20) {
                    target.attackdata_108(target.attackdata_118(i));
                    i--;
                }
            }
            for (int i = 0; i < target.attackdata_110(); i++) {
                s1->addTarget(target.attackdata_118(i));
            }
        }
    }
}

extern "C" ASM_FUNC("asm/non_matching/skill/sub_0807A3A4.inc", void unit_leave_callback(Action* s1, Action* s2));

bool Action::fieldSet(s32 value, bool force) {
    if (_40 == 5 && force != true) {
        return false;
    }
    if (_40 != value || force == true) {
        _40 = value;
    }
    return true;
}

// Msg sub_08073460(u32, const Msg&, const Msg&, const Msg&);

Msg Action::createMsg(u16 idx) const {
    return Msg::sub_08073460(idx, name(), getUser()->name(), mNextTargets.size() > 0 ? mNextTargets[0]->name() : Msg());
}

Msg Action::action_160(u16 idx, const Msg& m) const {
    return Msg::sub_08073460(idx, m, getUser()->name(), mNextTargets.size() > 0 ? mNextTargets[0]->name() : Msg());
}
