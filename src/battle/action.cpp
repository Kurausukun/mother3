#include "battle/action.h"
#include "battle.h"
#include "battle/archive.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "battle/unitTarget.h"
#include "enums.h"

void sub_08073018(bool, bool);
void sub_08072B70();
void sub_08072D0C();
extern "C" void playSound(u16);

extern "C" u8 IsPlayerAndType(Unit*, u32);
extern "C" u8 isMonsterVariant(Unit*, u32);
extern "C" void hitPlayer(Unit*, u32, bool);
extern "C" s32 randS32(s32, s32);

extern "C" s32 sub_0807066C(s32, s32);
extern "C" bool tellStatusWoreOff(Unit*, u32, u32);
extern "C" void sub_0807335C(u16);
extern "C" void sub_080736F8(Unit*, u32);
extern "C" u8 sub_0807404C(Action*, u32);
extern "C" u8 IsMonsterSkillAndType(Action*, u32);
extern "C" void InitHeal(Unit*, u32, u32);
extern "C" void sub_08073D98(Unit*, u32, u32);
extern "C" bool IsPlayer(Unit*);

extern ClockData gUnknown_08107DB0;
extern ClockData gUnknown_08107DB8;

extern "C" NONMATCH("asm/non_matching/skill/__5SkillUi.inc",
                    void __6ActionP4Unit(Action* thisx, Unit* user)) {
    thisx->mUser = user;
    thisx->_40 = 0;
    thisx->_44 = 0;

    thisx->listen(getPartyInfo(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(getGuestInfo(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(getMonsterInfo(), UnitJoin(), gUnknown_08107DB0);
    thisx->listen(getPartyInfo(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(getGuestInfo(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(getMonsterInfo(), UnitRevive(), gUnknown_08107DB0);
    thisx->listen(getPartyInfo(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(getGuestInfo(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(getMonsterInfo(), UnitEscape(), gUnknown_08107DB8);
    thisx->listen(getPartyInfo(), UnitDie(), gUnknown_08107DB8);
    thisx->listen(getGuestInfo(), UnitDie(), gUnknown_08107DB8);
    thisx->listen(getMonsterInfo(), UnitDie(), gUnknown_08107DB8);
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
    }

    return NULL;
}

s32 Action::getTargetIdx(Unit* target) {
    s32 idx = mPrevTargets.indexOf(target);
    if (idx < mPrevTargets.size())
        return idx;

    idx = mNextTargets.indexOf(target);
    if (idx < mNextTargets.size())
        return mPrevTargets.size() + idx;
    return numTargets();
}

NONMATCH("asm/non_matching/skill/sub_08078410__5Goods.inc", bool Action::fire()) {
    if (action_1b8() == true) {
        return false;
    }

    fieldSet(1, false);
    action_68();
    fieldSet(2, false);
    while (action_1b8() != 1) {
        sub_08073018(true, false);
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
    fieldSet(3, false);
    action_140();
    fieldSet(4, false);
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

    m.print(Color(0, 0, 0), true);
}

void Action::playDim() {
    if (hasDim() == true) {
        PlayAnimationForEach(Animation::DimBG, getUser(), 0, NULL);
    }
}

void Action::playAnim() {
    PlayAnimationForEach(animNo(), getUser(), mNextTargets.size(), mNextTargets.data());
}

void Action::action_a0(Unit* target) {
    if (isResisted(target) == true) {
        tellResisted(target);
        return;
    }

    if (calcDidHit(target) != true) {
        tellMissed(target);
        return;
    }

    // franklin badge check
    if (element() == ElementType::Thunder && IsPlayerAndType(target, Player::Lucas) == true &&
        getPartyInfo()->party_info_f8(0xc1) == true) {
        PlayAnimation(Animation::FranklinBadge, target, target);
        ROMStr(0x188).print(Color(0, 0, 0), 1);
        if (isMonsterVariant(getUser(), Monster::MaskedMan2nd) == true ||
            isMonsterVariant(getUser(), Monster::MaskedMan3rd) == true) {
            hitPlayer(getUser(), randS32(164, 186), 1);
        } else {
            hitPlayer(getUser(), max(0, action_e8(getUser(), target)), 1);
        }
        PlayAnimation(3, getUser(), getUser());
        return;
    }

    switch (effect()) {
    case EffectType::Damage:
        onDamage(target);
        onInflictStatus(target);
        break;
    case EffectType::Attack:
        onAttack(target);
        onInflictStatus(target);
        break;
    case EffectType::PsiDamage:
        onPsiDamage(target);
        onInflictStatus(target);
        break;
    case EffectType::HealHP:
        action_f8(target);
        onPlayAnim(target, false);
        onInflictStatus(target);
        break;
    case EffectType::HealHP2:
        onNoEffect(target);
        onPlayAnim(target, false);
        onInflictStatus(target);
        break;
    case EffectType::PPHeal:
        onPPHeal(target);
        onPlayAnim(target, false);
        onInflictStatus(target);
        break;
    case EffectType::StatusChange:
        onPlayAnim(target, false);
        if (hasAction() == true) {
            onInflictStatus(target);
        } else {
            onFail(target);
        }
        break;
    case EffectType::Misc:
        onSuccess(target);
        onPlayAnim(target, false);
        onInflictStatus(target);
        break;
    }
    getUser()->alertActionFinish(this);
    target->alertActionReceive(this);
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
        return false;
    }
    return false;
}

void Action::tellResisted(Unit* target) {
    // It had no visible effect on [25 EF][12 FF]!
    ROMStr(0xec).print(Color(0, 0, 0), true);
}

u8 Action::calcDidHit(Unit* target) {
    if (hitChance() >= 100)
        return true;

    s32 chance = hitChance();
    s32 x = getUser()->speed();
    s32 y = target->speed();
    s32 difference = max(0, x - y);
    chance -= (difference / 4);
    return randS32(0, 99) < chance;
}

void Action::tellMissed(Unit* target) {
    sub_0807335C(action_298());
    sub_080736F8(target, 1);
}

// minor regalloc
NONMATCH("asm/non_matching/skill/skill_08078D4C.inc", void Action::onDamage(Unit* target)) {
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
            s->activeMsg().print(Color(0, 0, 0), 1);
            PlayAnimation(0x33, target, target);
            t /= 2;
        }
    }
    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    onPlayAnim(target, crit);

    if (element() != 0) {
        return;
    }

    if (target->hasStatus(Status::Counter) == 1) {
        Status* s = target->findStatus(Status::Counter);
        s->activeMsg().print(Color(0, 0, 0), 1);
        PlayAnimation(0x36, target, target);
        hitPlayer(getUser(), max(1, t), 1);
        PlayAnimation(successAnimNo(), target, getUser());
        tellStatusWoreOff(target, Status::Counter, 1);
    } else if (target->hasStatus(Status::Shield) == 1) {
        tellStatusWoreOff(target, Status::Shield, 1);
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/skill/sub_08079018.inc", void Action::onAttack(Unit* target)) {
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
        s->activeMsg().print(Color(0, 0, 0), 1);
        PlayAnimation(0x33, target, target);
        t /= 2;
    }

    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    onPlayAnim(target, crit);

    if (target->hasStatus(Status::Counter) == 1) {
        Status* s = target->findStatus(Status::Counter);
        s->activeMsg().print(Color(0, 0, 0), 1);
        PlayAnimation(0x36, target, target);
        hitPlayer(getUser(), max(1, t), 1);
        PlayAnimation(successAnimNo(), target, getUser());
        tellStatusWoreOff(target, Status::Counter, 1);
    } else if (target->hasStatus(Status::Shield) == 1) {
        tellStatusWoreOff(target, Status::Shield, 1);
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
    s32 usr_offense = user->offense();
    s32 tgt_defense = target->defense();
    s32 z = (a * lvl + (usr_offense - tgt_defense) * b) >> 16;
    return sub_0807066C(attackMult() * z, 15);
}

NONMATCH("asm/non_matching/skill/sub_080793B8.inc", void Action::onPsiDamage(Unit* target)) {
    s32 h = action_e8(getUser(), target);
    s32 w = max(0, target->getElementWeakness(element()));
    s32 x = sub_0807066C(w * h, 100);
    s32 t = max(1, randS32((((x << 3) - x) << 1) >> 4, ((x << 4) + x) >> 4));

    s32 crit = calcCrit(target);
    if (crit == 1) {
        t += max(1, t / 2);
    }

    if (sub_0807404C(this, 15) != 1 && sub_0807404C(this, 16) != 1 && sub_0807404C(this, 17) != 1 &&
        sub_0807404C(this, 18) != 1 && IsMonsterSkillAndType(this, 98) != 1 &&
        IsMonsterSkillAndType(this, 99) != 1 && IsMonsterSkillAndType(this, 100) != 1 &&
        IsMonsterSkillAndType(this, 101) != 1) {
        if (target->hasStatus(Status::PsiCounter) == 1) {
            t /= 2;
        } else if (target->hasStatus(Status::PsiShield) == 1) {
            Status* s = target->findStatus(Status::PsiShield);
            s->activeMsg().print(Color(0, 0, 0), 1);
            PlayAnimation(0x39, target, target);
            t /= 2;
        }
    }

    sub_0807335C(crit == true ? action_290() : action_288());
    hitPlayer(target, max(1, t), 1);
    onPlayAnim(target, crit);

    if (sub_0807404C(this, 15) != 1 && sub_0807404C(this, 16) != 1 && sub_0807404C(this, 17) != 1 &&
        sub_0807404C(this, 18) != 1 && IsMonsterSkillAndType(this, 98) != 1 &&
        IsMonsterSkillAndType(this, 99) != 1 && IsMonsterSkillAndType(this, 100) != 1 &&
        IsMonsterSkillAndType(this, 101) != 1) {
        if (target->hasStatus(Status::PsiCounter) == 1) {
            Status* s = target->findStatus(Status::PsiCounter);
            s->activeMsg().print(Color(0, 0, 0), 1);
            PlayAnimation(0x3c, target, target);
            hitPlayer(getUser(), max(1, t), 1);
            PlayAnimation(successAnimNo(), target, getUser());
            tellStatusWoreOff(target, Status::PsiCounter, 1);
        } else if (target->hasStatus(Status::PsiShield) == 1) {
            tellStatusWoreOff(target, Status::PsiShield, 1);
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
    // separate temps for user iq and target iq maybe
    s32 v2 = (user->iq() - target->iq());
    s32 v3;
    // this could be user->iq() < target->iq()
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
    s32 val2 = sub_0807066C(val * getUser()->kindness(), 100);
    InitHeal(target, val + val2, 1);
}

void Action::onNoEffect(Unit* target) {
    s32 val = randS32(healLo(), healHi());
    s32 val2 = sub_0807066C(val * getUser()->kindness(), 100);
    InitHeal(target, val + val2, 1);
}

void Action::onPPHeal(Unit* target) {
    s32 val = randS32(healLo(), healHi());
    sub_08073D98(target, val, 1);
}

void Action::onSuccess(Unit* target) {}

void Action::onInflictStatus(Unit* target) {
    if (ailment() != Status::None && target->hp() > 0) {
        calcStatusInflict(target, ailment(), ailmentChance(), 1);
    }
}

ASM_FUNC("asm/non_matching/skill/sub_08079A4C.inc",
         bool Action::calcStatusInflict(Unit* target, u16 status, s32 chance, bool unk));

void Action::onFail(Unit* target) {
    if (ailment() != 0 && target->hp() > 0) {
        action_130(target, ailment(), ailmentChance(), true);
    }
}

// message objects arent being optimized into one
NONMATCH("asm/non_matching/skill/sub_08079EE4.inc",
         bool Action::action_130(Unit* target, u16 status, s32 chance, bool unk)) {
    if (target->hasStatus(status) != 1) {
        if (effect() == 6 && unk == 1) {
            ROMStr(0xeb).print(Color(0, 0, 0), 1);
        }
        return false;
    } else if (randS32(0, 99) < chance) {
        ROMStr(0xec).print(Color(0, 0, 0), 1);
        return false;
    } else {
        return tellStatusWoreOff(target, status, unk);
    }
}
END_NONMATCH

void Action::onPlayAnim(Unit* target, bool crit) {
    if ((effect() != EffectType::Damage && effect() != EffectType::Attack &&
         effect() != EffectType::PsiDamage) ||
        target->hpReal() > 0 || target->isAlive() != true || IsPlayer(target) != true) {
        if (crit == true) {
            PlayAnimation(critAnimNo(), getUser(), target);
        } else {
            PlayAnimation(successAnimNo(), getUser(), target);
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
    if (hasDim() == true) {
        PlayAnimationForEach(Animation::RestoreBG, getUser(), 0, NULL);
    }
}

void Action::action_150() {}

void Action::action_1a8() {
    fieldSet(5, false);
}

bool Action::action_1b0() {
    return _44 & 1;
}

bool Action::action_1b8() {
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

extern "C" ASM_FUNC("asm/non_matching/skill/sub_0807A3A4.inc",
                    void unit_leave_callback(Action* s1, Action* s2));

bool Action::fieldSet(s32 value, bool force = false) {
    if (_40 == 5 && force != true) {
        return false;
    }
    if (_40 != value || force == true) {
        _40 = value;
    }
    return true;
}

// Msg ROMStrFmt(u32, const Msg&, const Msg&, const Msg&);

Msg Action::ROMStr(u16 idx) const {
    return ROMStrFmt(idx, name(), getUser()->name(),
                     mNextTargets.size() > 0 ? mNextTargets[0]->name() : Msg());
}

Msg Action::action_160(u16 idx, const Msg& m) const {
    return ROMStrFmt(idx, m, getUser()->name(),
                     mNextTargets.size() > 0 ? mNextTargets[0]->name() : Msg());
}
