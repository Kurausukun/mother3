#ifndef BATTLE_MONSTER_IMPL_H
#define BATTLE_MONSTER_IMPL_H

#include "battle.h"
#include "battle/action.h"
#include "battle/monster.h"
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

#ifndef NONMATCHING
#define getHealthPercent (s32) VT_HACK
#endif
        if (hpReal() < getHealthPercent(70) && mFlameShotCount == 0) {
            return getMonsterSkill(0x132, this);
        }
        if (hpReal() < getHealthPercent(30) && mFlameShotCount < 2) {
            return getMonsterSkill(0x132, this);
        }
#undef getHealthPercent

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

#endif  // BATTLE_MONSTER_IMPL_H
