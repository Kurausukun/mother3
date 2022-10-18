#ifndef BATTLE_MONSTER_IMPL_H
#define BATTLE_MONSTER_IMPL_H

#include "battle.h"
#include "battle/action.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "enums.h"

extern ClockData gUnknown_080F8E5C;
extern ClockData gUnknown_080F8E64;

extern "C" Action* getMonsterSkill(u32, Unit*);
extern s32 gUnknown_080F8E6C[];
extern "C" s32 sub_0807066C(s32, s32);
extern "C" void sub_0805CD30(u16, u16, u16);
extern "C" void playSound(u16);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" bool triggerMonsterSkill(Action*);
s32 sub_08072DFC();
Monster* sub_08072E18(s32);
extern "C" bool sub_080742EC(Action*, Monster*);
extern "C" u8 IsMonsterSkillAndType(Action*, u32);
extern "C" bool IsGoodsAndType(Action*, u32);
extern "C" s32 GetMonsterCount();
extern "C" Unit* GetMonster(s32);

class DefaultMonster : public Monster {
public:
    DefaultMonster(u16 idx, u16 id);
    virtual ~DefaultMonster() override {}

    NAKED virtual void monster_3c8() {}
    NAKED virtual void monster_3d0() {}
    NAKED virtual void monster_3d8() {}
    NAKED virtual void monster_3e0() {}
    NAKED virtual void monster_3e8() {}

    virtual void monster_3f0() {}
    virtual void monster_3f8() {}

    Action* calcAction() override {
        if (numSkills() > 0) {
            return getMonsterSkill(getSkill(randS32(0, numSkills() - 1)), this);
        }
        return NULL;
    }

    bool onAction(Action* a) override {
        if (isBackTurned() == true) {
            return false;
        }
        if (isFriendlyFire() == true) {
            return false;
        }
        if (isStrangeStatus() == true) {
            return false;
        }
        if (Unit::onAction(a) == true) {
            mLastAction = a->id();
            mActionCount++;
            return true;
        }
        return false;
    }

    virtual bool isBackTurned() {
        if (hasBackSprite() == true && surprised() == true) {
            return triggerMonsterSkill(getMonsterSkill(0x1, this));
        }
        return false;
    }

    virtual bool isFriendlyFire() {
        for (int i = 0; i < sub_08072DFC(); i++) {
            Monster* m = sub_08072E18(i);
            if (m != this && m->hasStatus(Status::Smelly) == true) {
                return sub_080742EC(getMonsterSkill(0xb3, this), m);
            }
        }
        return false;
    }

    virtual bool isStrangeStatus() {
        if (randS32(0, 99) < gUnknown_080F8E6C[getStatusTypeCount(Status::Strange)]) {
            findStatus(Status::Strange)->activeMsg().print(Color::Black(), true);
            if (level() < 20) {
                triggerMonsterSkill(getMonsterSkill(0x1b6, this));
            } else if (level() < 40) {
                triggerMonsterSkill(getMonsterSkill(0x1b7, this));
            } else {
                triggerMonsterSkill(getMonsterSkill(0x1b8, this));
            }
            return true;
        }
        return false;
    }

    void unit_f0(Action* a1) override {
        if (sub_080726B8() != true) {
            Unit::unit_f0(a1);
        }
    }

    void alertActionReceive(Action* a1) override {
        if (sub_080726B8() != true) {
            Unit::alertActionReceive(a1);
        }
    }

    void onActionReceive(Action* a1) override {
        Unit::onActionReceive(a1);

        if (hpReal() > 0 && a1->effect() == EffectType::Attack &&
            hasStatus(Status::Electrocuted) == true) {
            setsleep(20);
            findStatus(Status::Electrocuted)->activeMsg().print(Color::Black(), true);
            playSound(0x64e);
            PlayAnimation(Animation::YellowFlash, this, this);
            hitPlayer(a1->getUser(), 0x14, 1);
            PlayAnimation(Animation::NoEffect, a1->getUser(), a1->getUser());
            // [10 FF] received an electric shock!
            ROMStrFmt(0x27c, a1->getUser()->name(), Msg(), Msg()).print(Color::Black(), true);
        }
    }

    void unit_100(Action* a1) override {
        if (sub_080726B8() != true) {
            Unit::unit_100(a1);
        }
    }

    u32 scaledExperience() override {
        s32 base = Monster::scaledExperience();
        if (hasStatus(Status::NoExp) == true) {
            base = 0;
        }
        if (hasStatus(Status::ParamsUp) == true) {
            base *= 2;
        }
        if (hasStatus(Status::ParamsDown) == true) {
            base /= 2;
        }
        return base;
    }

    void monster_300(s32 a1) override {
        Monster::monster_300(a1);
        sub_0805CD30(id(), surprised() != 0, true);
    }

    virtual void setActionCount(u32 value) { mActionCount = value; }

    virtual s32 numActionsDone() { return mActionCount; }

    virtual u16 lastAction() { return mLastAction; }

    // TODO: virtual, but removed qualifier so vtable is aligned
    // thanks to the vt hack
    /* virtual */ s32 getHealthPercent(s32 value) { return sub_0807066C(maxHP() * value, 100); }

    /*{
        s32 rand = randS32_(0, 99);
        s32 prob = 50;
        return getMonsterSkill(rand < prob ? 0x27E : 0x27F, this);
    }*/

    /*{
        (void)max(1, value); // WHAT THE F BRO
        Monster::setHP(max(1, value));
    }*/

    //    DefaultMonster(u16 idx, u16 id) : Monster(idx, id) {
    //        _140 = 0;
    //        _144 = 0;
    //
    //        listen(BattleManager::get(), UnitTurnBegin(), gUnknown_080F8E5C);
    //        listen(BattleManager::get(), UnitTurnEnd(), gUnknown_080F8E64);
    //    }

    INLINE_VT_END

    u16 mLastAction;
    u32 mActionCount;
};

#ifndef NONMATCHING
#define getHealthPercent (s32) VT_HACK
#endif

class ReconstructedCaribou : public DefaultMonster {
public:
    ReconstructedCaribou(u16 idx, u16 id);
    virtual ~ReconstructedCaribou() override {}

    Action* calcAction() override {
        if (lastAction() == 0x12f) {
            return getMonsterSkill(0x12d, this);
        }
        s32 chance = 50;
        return getMonsterSkill(randS32_(0, 99) < chance ? 0x12c : 0x12f, this);
    }

    INLINE_VT_END
};

class MechaDrago : public DefaultMonster {
public:
    MechaDrago(u16 idx, u16 id);
    virtual ~MechaDrago() override {}

    void onKill() override {
        triggerMonsterSkill(getMonsterSkill(0x96, this));
        sub_08080F54();
    }

    Action* calcAction() override {
        s32 prob1 = 50;
        s32 prob2 = 33;
        s32 prob3 = 66;
        s32 val;

        if (hpReal() < getHealthPercent(70) && mFlameShotCount == 0) {
            return getMonsterSkill(0x132, this);
        }
        if (hpReal() < getHealthPercent(30) && mFlameShotCount < 2) {
            return getMonsterSkill(0x132, this);
        }

        if (mWarCryCount != 0) {
            s32 chance = randS32_(0, 99);
            return getMonsterSkill(chance < prob1 ? 0x130 : 0x131, this);
        }

        s32 chance = randS32_(0, 99);
        val = 0x130;
        if (chance >= prob2) {
            val = chance < prob3 ? 0x131 : 0x133;
        }
        return getMonsterSkill(val, this);
    }

    bool onAction(Action* a1) override {
        if (DefaultMonster::onAction(a1) == false) {
            return false;
        }
        if (IsMonsterSkillAndType(a1, 0x133) == true) {
            mWarCryCount++;
        }
        if (IsMonsterSkillAndType(a1, 0x132) == true) {
            mFlameShotCount++;
        }
        return true;
    }

    void onActionReceive(Action* a1) override {
        DefaultMonster::onActionReceive(a1);
        if (hpReal() > 0 && IsGoodsAndType(a1, ItemDragoFang) == true) {
            onUseFang(1, false);
        }
    }

    virtual bool onUseFang(u32 value, bool force) {
        if (mPlayerUsedFang != value || force == true) {
            mPlayerUsedFang = value;
            setActionCount(0);
            return true;
        }
        return false;
    }

    s32 getElementWeakness(u32 idx) const override {
        if (mPlayerUsedFang != 0) {
            return DefaultMonster::getElementWeakness(idx);
        }
        return 0;
    }

    INLINE_VT_END

    u8 mWarCryCount;
    u8 mFlameShotCount;
    u32 mPlayerUsedFang;
};

class BakedYammomonster : public DefaultMonster {
public:
    BakedYammomonster(u16 idx, u16 id);
    virtual ~BakedYammomonster() override {}

    Action* calcAction() override {
        s32 prob1 = 50;
        s32 prob2 = 33;
        s32 prob3 = 66;
        s32 val;

        if (lastAction() == 0xc2) {
            return getMonsterSkill(0x1d, this);
        }

        if (mScaryFaceCount > 0) {
            s32 chance = randS32_(0, 99);
            return getMonsterSkill(chance < prob1 ? 2 : 0xc2, this);
        }
        s32 chance = randS32_(0, 99);
        val = 2;
        if (chance >= prob2) {
            val = chance < prob3 ? 0x84 : 0xc2;
        }
        return getMonsterSkill(val, this);
    }

    bool onAction(Action* a1) override {
        if (DefaultMonster::onAction(a1) == false) {
            return false;
        }
        if (IsMonsterSkillAndType(a1, 0x84) == true) {
            mScaryFaceCount++;
        }
        return true;
    }

    INLINE_VT_END

    s32 mScaryFaceCount;
};

class SootDumpling : public DefaultMonster {
public:
    SootDumpling(u16 idx, u16 id);
    virtual ~SootDumpling() override {}

    Action* calcAction() override {
        s32 prob1 = 65;
        s32 prob2 = 40;
        s32 prob3 = 70;
        s32 v4;

        if (numActionsDone() < 1) {
            s32 chance = randS32_(0, 99);
            return getMonsterSkill(chance < prob1 ? 2 : 55, this);
        }

        s32 chance = randS32_(0, 99);
        v4 = 2;
        if (chance >= prob2) {
            v4 = chance < prob3 ? 55 : 241;
        }
        return getMonsterSkill(v4, this);
    }

    INLINE_VT_END
};

class PotatoBug : public DefaultMonster {
public:
    PotatoBug(u16 idx, u16 id);
    virtual ~PotatoBug() override {}

    Action* calcAction() override {
        s32 prob2 = 70;
        s32 prob3 = 85;
        s32 rand;

        for (int i = 0; i < GetMonsterCount(); i++) {
            if (GetMonster(i)->hpReal() < GetMonster(i)->maxHP() / 2 && randS32(0, 99) < 30) {
                return getMonsterSkill(0x9f, this);
            }
        }
        if (GetMonsterCount() > 2 || (rand = randS32_(0, 99)) < prob2) {
            return getMonsterSkill(2, this);
        }
        if (rand >= prob3) {
            return getMonsterSkill(0x22, this);
        }
        return getMonsterSkill(0x20e, this);
    }

    INLINE_VT_END
};

class WalkingBushie : public DefaultMonster {
public:
    WalkingBushie(u16 idx, u16 id);
    virtual ~WalkingBushie() override {}

    Action* calcAction() override {
        s32 prob1 = 40;

        for (int i = 0; i < sub_08072A88(); i++) {
            Unit* m = sub_08072AA4(i);
            if (m->hasStatus(Status::Poison) == true || m->hasStatus(Status::Numb) == true || m->hasStatus(Status::Sleep) == true || m->hasStatus(Status::Strange) == true || m->hasStatus(Status::Crying) == true || m->hasStatus(Status::Forgetful) == true || m->hasStatus(Status::Nauseous) == true || m->hasStatus(Status::Fleas) == true) {
                return getMonsterSkill(0x208, this);
            }
        }
        for (int i = 0; i < sub_08072A88(); i++) {
            Unit* m = sub_08072AA4(i);
            if (m->hpReal() < m->maxHP()) {
                return getMonsterSkill(0x207, this);
            }
        }
        if (numActionsDone() > 1) {
            return getMonsterSkill(0x209, this);
        }
        s32 chance = randS32_(0, 99);
        if (chance >= prob1) {
            return getMonsterSkill(0xe1, this);
        }
        return getMonsterSkill(0x7f, this);
    }

    bool monster_2c8(Action* a) override {
        if (IsMonsterSkillAndType(a, 0x208) == true) {
            for (int i = 0; i < sub_08072A88(); i++) {
                Unit* m = sub_08072AA4(i);
                if (m->hasStatus(Status::Poison) == true || m->hasStatus(Status::Numb) == true || m->hasStatus(Status::Sleep) == true || m->hasStatus(Status::Strange) == true || m->hasStatus(Status::Crying) == true || m->hasStatus(Status::Forgetful) == true || m->hasStatus(Status::Nauseous) == true || m->hasStatus(Status::Fleas) == true) {
                    a->addTarget(m);
                    return true;
                }
            }
        } else if (IsMonsterSkillAndType(a, 0x207) == true) {
            for (int i = 0; i < sub_08072A88(); i++) {
                Unit* m = sub_08072AA4(i);
                if (m->hpReal() < m->maxHP()) {
                    a->addTarget(m);
                    return true;
                }
            }
        }
        return Monster::monster_2c8(a);
    }

    bool onAction(Action* a) override {
        if (DefaultMonster::onAction(a) != true) {
            return false;
        }
        if (IsMonsterSkillAndType(a, 0x208) == true) {
            setActionCount(0);
        }
        if (IsMonsterSkillAndType(a, 0x207) == true) {
            setActionCount(0);
        }
        return true;
    }

    INLINE_VT_END
};

class BaldingEagle : public DefaultMonster {
public:
    BaldingEagle(u16 idx, u16 id);
    virtual ~BaldingEagle() override {}

    NONMATCH("asm/non_matching/monster/sub_080AE118.inc", Action* calcAction() override) {
        s32 prob1 = 35;
        s32 prob2 = 55;
        s32 prob3 = 85;
        s32 prob4 = 20;
        s32 prob5 = 60;

        s32 val;

        if (hpReal() < getHealthPercent(50)) {
            if (mActionCount > 0) {
                s32 chance = randS32_(0, 99);
                val = 9;
                if (chance >= prob4) {
                    val = 153;
                    if (chance < prob2) {
                        val = 17;
                    }
                }
                return getMonsterSkill(val, this);
            }
            s32 chance = randS32_(0, 99);
            val = 9;
            if (chance >= prob4) {
                val = 17;
                if (chance >= prob2) {
                    val = 153;
                    if (chance < prob5) {
                        val = 227;
                    }
                }
            }
            return getMonsterSkill(val, this);
        }

        if (mActionCount > 0) {
            s32 chance = randS32_(0, 99);
            val = 16;
            if (chance < prob1) {
                val = 9;
            }
            return getMonsterSkill(val, this);
        }

        s32 chance = randS32_(0, 99);;
        val = 9;
        if (chance >= prob1) {
            val = 227;
            if (chance < prob3) {
                val = 17;
            }
        }
        return getMonsterSkill(val, this);
    }
    END_NONMATCH

    bool onAction(Action* a) override {
        if (DefaultMonster::onAction(a) != true) {
            return false;
        }
        if (IsMonsterSkillAndType(a, 0xe3) == true) {
            _148++;
        }
        return true;
    }

    u32 _148;

    INLINE_VT_END
};

class Tree : public DefaultMonster {
public:
    Tree(u16 idx, u16 id);
    virtual ~Tree() override {}

    void onKill() override {
        triggerMonsterSkill(getMonsterSkill(0x2d, this));
        sub_08080F54();
    }

    Action* calcAction() override {
        Vector<u16> skills;
        skills.append(2);

        if (mVacuumAttackCount < 2) {
            skills.append(0x8c);
        }
        if (mSpreadRootsCount < 1) {
            skills.append(0x107);
        }
        if (mCalledForHelpCount < 1) {
            skills.append(0xf0);
        }
        return getMonsterSkill(skills[randS32(0, skills.size() - 1)], this);
    }

    bool onAction(Action* a) override {
        if (DefaultMonster::onAction(a) != true) {
            return false;
        }
        if (IsMonsterSkillAndType(a, 0x8c) == true) {
            mVacuumAttackCount++;
        }
        if (IsMonsterSkillAndType(a, 0x107) == true) {
            mSpreadRootsCount++;
        }
        if (IsMonsterSkillAndType(a, 0xf0) == true) {
            mCalledForHelpCount++;
        }
        return true;
    }

    INLINE_VT_END

    s32 mVacuumAttackCount;
    s32 mSpreadRootsCount;
    s32 mCalledForHelpCount;
};

class MrPassion : public DefaultMonster {
public:
    MrPassion(u16 idx, u16 id);
    virtual ~MrPassion() override {}

    void monster_3f0() override {
        if (hpReal() < getHealthPercent(50)) {
            setPhase(1, false);
        }
    }

    virtual bool setPhase(s32 val, bool force) {
        if (mPhase != val || force == true) {
            mPhase = val;
            setActionCount(0);
            return true;
        }
        return false;
    }

    NONMATCH("asm/non_matching/monster/sub_080ADBE8.inc", Action* calcAction() override) {
        if (mPhase == 0) {
            return calcActionPhaseOne();
        }
        if (mPhase == 1) {
            return calcActionPhaseTwo();
        }
        if (numSkills() > 0) {
            return getMonsterSkill(getSkill(randS32(0, numSkills() - 1)), this);
        }
        return NULL;
    }
    END_NONMATCH

    NONMATCH("asm/non_matching/monster/sub_080ADB54.inc", virtual Action* calcActionPhaseOne()) {
        u16 skills[5]; // = { 0x13B, 0x13C, 0x13E, 0x13F, 0x13D };
        s32 prob1 = 30;
        s32 prob2 = 55;
        s32 prob3 = 85;
        s32 prob4 = 90;

        if (mLostInMusicCount > 2) {
            skills[4] = 0x13C;
        }
        if (mMouseSentFlyingCount > 0) {
            skills[3] = 0x13E;
        }
        s32 rand = randS32_(0, 99);
        if (rand < prob1) {
            return getMonsterSkill(skills[0], this);
        }
        if (rand < prob2) {
            return getMonsterSkill(skills[1], this);
        }
        if (rand < prob3) {
            return getMonsterSkill(skills[2], this);
        }
        if (rand < prob4) {
            return getMonsterSkill(skills[3], this);
        }
        return getMonsterSkill(skills[4], this);
    }
    END_NONMATCH

    ASM_FUNC("asm/non_matching/monster/sub_080ADA9C.inc", virtual Action* calcActionPhaseTwo());

    bool onAction(Action* a) override {
        if (DefaultMonster::onAction(a) != true) {
            return false;
        }
        if (IsMonsterSkillAndType(a, 0x13d) == true) {
            mLostInMusicCount++;
        }
        if (IsMonsterSkillAndType(a, 0x13f) == true) {
            mMouseSentFlyingCount++;
        }
        return true;
    }

    INLINE_VT_END

    s32 mLostInMusicCount;
    s32 mMouseSentFlyingCount;
    s32 mPhase;
};

class Clayman : public DefaultMonster {
    Clayman(u16 idx, u16 id);
    virtual ~Clayman() override {}

    void monster_3f0() override {
        if (hpReal() < getHealthPercent(40) && mPhase == 0) {
            m_450(1, false);
        }
    }

    Action* calcAction() override {
        switch (mPhase) {
        case 0:
            return m_438();
        case 1:
            return m_440();
        case 2:
            return m_448();
        default:
            return DefaultMonster::calcAction();
        }
    }

    virtual Action* m_438() {
        s32 prob1 = 45;
        s32 prob2 = 80;
        s32 val;

        s32 chance = randS32_(0, 99);
        val = 0x145;
        if (chance >= prob1) {
            val = 0x148;
            if (chance < prob2) {
                val = 0x146;
            }
        }
        return getMonsterSkill(val, this);
    }

    virtual Action* m_440() {
        return getMonsterSkill(0x147, this);
    }

    virtual Action* m_448() {
        s32 prob1 = 35;
        s32 prob2 = 65;
        s32 prob3 = 80;
        s32 val;

        if (numActionsDone() < 1) {
            return getMonsterSkill(0x149, this);
        } else if (numActionsDone() < 2) {
            return getMonsterSkill(0x14a, this);
        }

        s32 chance = randS32_(0, 99);
        val = 0x145;
        if (chance >= prob1) {
            val = 0x146;
            if (chance >= prob2) {
                val = chance < prob3 ? 0x148 : 0x147;
            }
        }
        return getMonsterSkill(val, this);
    }

    bool onAction(Action* a) override {
        if (DefaultMonster::onAction(a) != true) {
            return false;
        }
        if (IsMonsterSkillAndType(a, 0x147) == true) {
            m_450(2, true);
        }
        return true;
    }

    virtual bool m_450(s32 val, bool force) {
        if (force == true || mPhase != val) {
            mPhase = val;
            setActionCount(0);
            return true;
        }
        return false;
    }

    INLINE_VT_END

    s32 mPhase;
};

#undef getHealthPercent

#endif  // BATTLE_MONSTER_IMPL_H
