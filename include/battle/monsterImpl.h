#ifndef BATTLE_MONSTER_IMPL_H
#define BATTLE_MONSTER_IMPL_H

#include "battle.h"
#include "battle/action.h"
#include "battle/monster.h"
#include "enums.h"

extern ClockData gUnknown_080F8E5C;
extern ClockData gUnknown_080F8E64;

extern "C" Action* sub_080741AC(u32, Unit*);
extern s32 gUnknown_080F8E6C[];
extern "C" s32 sub_0807066C(s32, s32);
extern "C" void sub_0805CD30(u16, u16, u16);
extern "C" void playSound(u16);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" bool sub_08074234(Action*);
s32 sub_08072DFC();
Monster* sub_08072E18(s32);
extern "C" bool sub_080742EC(Action*, Monster*);
extern "C" u8 sub_080741E8(Action*, u32);
extern "C" bool sub_080740D8(Action*, u32);

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

    Action* monster_2c0() override {
        if (numSkills() > 0) {
            return sub_080741AC(getSkill(randS32(0, numSkills() - 1)), this);
        }
        return NULL;
    }

    bool unit_70(Action* a) override {
        if (monster_400() == true) {
            return false;
        }
        if (monster_408() == true) {
            return false;
        }
        if (monster_410() == true) {
            return false;
        }
        if (Unit::unit_70(a) == true) {
            _140 = a->id();
            _144++;
            return true;
        }
        return false;
    }

    virtual bool monster_400() {
        if (hasBackSprite() == true && surprised() == true) {
            return sub_08074234(sub_080741AC(0x1, this));
        }
        return false;
    }

    virtual bool monster_408() {
        for (int i = 0; i < sub_08072DFC(); i++) {
            Monster* m = sub_08072E18(i);
            if (m != this && m->hasStatus(Status::Smelly) == true) {
                return sub_080742EC(sub_080741AC(0xb3, this), m);
            }
        }
        return false;
    }

    virtual bool monster_410() {
        if (randS32(0, 99) < gUnknown_080F8E6C[getStatusTypeCount(Status::Strange)]) {
            findStatus(Status::Strange)->activeMsg().print(Color::Black(), true);
            if (level() < 20) {
                sub_08074234(sub_080741AC(0x1b6, this));
            } else if (level() < 40) {
                sub_08074234(sub_080741AC(0x1b7, this));
            } else {
                sub_08074234(sub_080741AC(0x1b8, this));
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

    void unit_f8(Action* a1) override {
        if (sub_080726B8() != true) {
            Unit::unit_f8(a1);
        }
    }

    void unit_98(Action* a1) override {
        Unit::unit_98(a1);

        if (hpReal() > 0 && a1->effect() == EffectType::Attack && hasStatus(Status::Electrocuted) == true) {
            setsleep(20);
            findStatus(Status::Electrocuted)->activeMsg().print(Color::Black(), true);
            playSound(0x64e);
            playSeq(BattleSeq::YellowFlash, this, this);
            hitPlayer(a1->getUser(), 0x14, 1);
            playSeq(BattleSeq::NoEffect, a1->getUser(), a1->getUser());
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

    virtual void monster_418(u32 value) {
        _144 = value;
    }

    virtual s32 monster_420() {
        return _144;
    }

    virtual u16 monster_428() {
        return _140;
    }

    // TODO: virtual, but removed qualifier so vtable is aligned
    // thanks to the vt hack
    /* virtual */ s32 monster_430(s32 value) {
        return sub_0807066C(maxHP() * value, 100);
    }

    /*{
        s32 rand = randS32_(0, 99);
        s32 prob = 50;
        return sub_080741AC(rand < prob ? 0x27E : 0x27F, this);
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

    u16 _140;
    u32 _144;
};

class ReconstructedCaribou : public DefaultMonster {
public:
    ReconstructedCaribou(u16 idx, u16 id);
    virtual ~ReconstructedCaribou() override {}

    Action* monster_2c0() override {
        if (monster_428() == 0x12f) {
            return sub_080741AC(0x12d, this);
        }
        s32 chance = 50;
        return sub_080741AC(randS32_(0, 99) < chance ? 0x12c : 0x12f, this);
    }

    INLINE_VT_END
};

class MechaDrago : public DefaultMonster {
public:
    MechaDrago(u16 idx, u16 id);
    virtual ~MechaDrago() override {}

    void onKill() override {
        sub_08074234(sub_080741AC(0x96, this));
        sub_08080F54();
    }

    NONMATCH("asm/non_matching/monster/sub_080AEBB8.inc", Action* monster_2c0()) override {
        if (hpReal() < monster_430(70) && b == 0) {
            return sub_080741AC(0x132, this);
        }

        if (hpReal() < monster_430(30) && b < 2) {
            return sub_080741AC(0x132, this);
        }

        if (a != 0) {
            s32 chance = randS32_(0, 99);
            s32 prob = 50;
            return sub_080741AC(chance < prob ? 0x130 : 0x131, this);
        }
        s32 chance = randS32_(0, 99);
        if (chance < 33) {
            return sub_080741AC(0x130, this);
        }
        return sub_080741AC(chance < 66 ? 0x131 : 0x133, this);
    }
    END_NONMATCH

    bool unit_70(Action* a1) override {
        if (DefaultMonster::unit_70(a1) == false) {
            return false;
        }
        if (sub_080741E8(a1, 0x133) == true) {
            this->a++;
        }
        if (sub_080741E8(a1, 0x132) == true) {
            b++;
        }
        return true;
    }

    void unit_98(Action* a1) override {
        DefaultMonster::unit_98(a1);
        if (hpReal() > 0 && sub_080740D8(a1, 0xaf) == true) {
            m_438(1, false);
        }
    }

    virtual bool m_438(u32 a1, bool force) {
        if (c != a1 || force == true) {
            c = a1;
            monster_418(0);
            return true;
        }
        return false;
    }

    s32 getElementWeakness(u32 idx) const override {
        if (c != 0) {
            return DefaultMonster::getElementWeakness(idx);
        }
        return 0;
    }

    INLINE_VT_END

    u8 a, b;
    u32 c;
};

class BakedYammomonster : public DefaultMonster {
public:
    BakedYammomonster(u16 idx, u16 id);
    virtual ~BakedYammomonster() override {}

    NONMATCH("asm/non_matching/monster/sub_080AE818.inc", Action* monster_2c0() override) {
        if (monster_428() == 0xc2) {
            return sub_080741AC(0x1d, this);
        }

        if (_148 > 0) {
            s32 chance = randS32_(0, 99);
            s32 prob = 50;
            return sub_080741AC(chance < prob ? 0x130 : 0x131, this);
        }
        s32 chance = randS32_(0, 99);
        if (chance < 33) {
            return sub_080741AC(0x130, this);
        }
    }
    END_NONMATCH

    bool unit_70(Action* a1) override {
        if (DefaultMonster::unit_70(a1) == false) {
            return false;
        }
        if (sub_080741E8(a1, 0x84) == true) {
            _148++;
        }
        return true;
    }

    INLINE_VT_END

    u32 _148;
};

class SootDumpling : public DefaultMonster {
public:
    SootDumpling(u16 idx, u16 id);
    virtual ~SootDumpling() override {}

    Action* monster_2c0() override {
        s32 prob1 = 65;
        s32 prob2 = 40;
        s32 prob3 = 70;
        s32 v4;

        if (monster_420() < 1) {
            s32 chance = randS32_(0, 99);
            return sub_080741AC(chance < prob1 ? 2 : 55, this);
        }

        s32 chance = randS32_(0, 99);
        v4 = 2;
        if ( chance >= prob2 )
        {
            v4 = chance < prob3 ? 55 : 241;
        }
        return sub_080741AC(v4, this);
    }

    INLINE_VT_END
};

#endif // BATTLE_MONSTER_IMPL_H
