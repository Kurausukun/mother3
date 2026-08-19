#ifndef BATTLE_GOODS_IMPL_H
#define BATTLE_GOODS_IMPL_H

#include "battle.h"
#include "battle/goods.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "battle/rhythm.h"
#include "enums.h"
#include "factory.h"

extern "C" bool typeIsMonster(Unit*);
extern "C" Monster* dynaCastMonster(Unit*);
extern "C" void setsleep(u32);
extern "C" void PlaySoundBlocking(u32);
extern "C" Monster* sub_08072EE4(u16);
extern "C" void playSound(u16);
extern "C" s32 sub_0807066C(s32, s32);
extern "C" void sub_08073E3C(Unit*, u32, u32);
extern "C" s32 randS32(s32, s32);
extern "C" bool IsBossBattle();
extern "C" void InitHeal(Unit*, u32, u32);
extern "C" void sub_08073D98(Unit*, u32, u32);
extern "C" bool IsPlayerAndType(Unit*, u16);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" bool isMonsterVariant(Unit*, u16);
extern "C" void sub_0807392C(Unit*, u32, u32);
extern "C" bool sub_08073198(u16, Unit*, Unit*);
extern "C" void sub_08073270();
Msg createPlayerName(u16);
extern "C" bool sub_08072648(u16);

extern Status::Type gUnknown_080FB078[];
bool statusWearOff(Unit*, Status::Type, bool);

// TODO: move to DefaultGoods::isResisted
// we are unable to inline DefaultGoods stuff at the moment
static inline bool isResistedD(Action* t, Unit* target) {
    if (t->effect() == EffectType::PPHeal && target->maxPP() <= 0) {
        return true;
    }
    return t->Action::isResisted(target);
}

class DefaultGoods : public Goods {
public:
    DefaultGoods(u16 id, Unit* user, u16 r2) : Goods(id, user, r2) {}
    DefaultGoods(u16 id, void* user, u16 r2);
    virtual ~DefaultGoods() {}

    virtual void tellUseMessage() {
        if ((u8)type() != 1) {
            Action::tellUseMessage();
        }
    }

    virtual bool dogTax() {
        if (IsPlayerAndType(getUser(), Player::Boney) == true) {
            if (getUser()->hasStatus(Status::Nauseous) != true) {
                // 2% chance that boney is feeling mischevious
                if (getTargetIdx(getUser()) >= numTargets() && goods_2b0() == 4 &&
                    randS32(0, 99) < 2) {
                    // his food now
                    clearTargets();
                    addTarget(getUser());
                    ROMStr(0x17e).print(Color::Black(), 1);
                    return true;
                }
            }
        }
        return false;
    }

    bool isResisted(Unit* target) {
        if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
            return true;
        }
        return Action::isResisted(target);
    }

    void action_a0(Unit* target) {
        if (isConsumable(target) != true) {
            Action::action_a0(target);
        }
    }

    virtual bool dg_2(Unit* target) {
        Status* s = target->findStatus(Status::Nauseous);
        if (goods_2b0() == 4 && s != NULL) {
            s->activeMsg().print(Color::Black(), 1);
            return true;
        }
        return false;
    }

    s32 hitChance() const {
        s32 chance = Goods::hitChance();
        if (chance < 100) {
            if (getUser()->hasStatus(Status::Crying) == true) {
                if (effect() == 0 || effect() == 1) {
                    chance = sub_0807066C(chance * 60, 100);
                }
            }
        }
        return chance;
    }

    bool isConsumable(Unit* target) const {
        bool consumable = Goods::isConsumable(target);

        if (isKeyItem() == true)
            consumable = false;

        return consumable;
    }

    virtual bool dg_3() {
        if (goods_2b0() == 4 && numTargets() > 0) {
            if (getTarget(0)->hasStatus(Status::Nauseous) == true) {
                return true;
            }
        }
        return false;
    }
};

class NewYearsEveBomb : public DefaultGoods {
public:
    NewYearsEveBomb(u16 id, Unit* user, u16 a3);
    virtual ~NewYearsEveBomb() {}

    void action_70() {
        Action::action_70();
        _50 = dogTax();
    }

    virtual bool nye_4() {
        for (int i = 0; i < numTargets(); i++) {
            Unit* t = getTarget(i);
            if (typeIsMonster(t) == true) {
                switch (t->id()) {
                case Monster::ReconstructedCaribou:
                case Monster::MrPassion:
                case Monster::OhSoSnake:
                case Monster::Clayman:
                case Monster::MechaDrago:
                case Monster::PorkTank:
                case Monster::MrGenetor:
                case Monster::Porky:
                case Monster::NaturalKillerCyborg:
                case Monster::MaskedMan1st:
                case Monster::WomanizingPigMask1st:
                case Monster::WomanizingPigMask2nd:
                case Monster::JealousBass:
                case Monster::AbsolutelySafeCapsule:
                case Monster::Porky02:
                case Monster::NewFassad:
                case Monster::LordPassion:
                case Monster::Porky03:
                case Monster::Porky08:
                case Monster::MiracleFassad:
                case Monster::Porky01:
                case Monster::BarrierTrio:
                case Monster::EerieSmile3rd:
                case Monster::Zombieshroom:
                case Monster::MissMarshmallow:
                case Monster::AlmostMechaLion:
                case Monster::SteelGorilla:
                case Monster::Porky07:
                case Monster::SadJunkHeap:
                case Monster::Porky06:
                case Monster::MasterEddy:
                case Monster::Porky09:
                case Monster::Porky10:
                case Monster::Porky04:
                case Monster::Porky05:
                case Monster::MaskedMan2nd:
                case Monster::MaskedMan3rd:
                    return true;
                }
            }
        }
        return false;
    }

    void tellUseMessage() {
        if ((u8)type() != 1) {
            Action::tellUseMessage();
        }

        if (_50 == true) {
            // [PAUSE60] But it was a dud...[END]
            ROMStr(0x178).print(Color::Black(), true);
        }
    }

    bool isResisted(Unit* target) { return _50; }

    void tellResisted(Unit* target) {}

    void onDamage(Unit* target) {
        if (target->getElementWeakness(4) < 1) {
            hitPlayer(target, 1, 1);
        } else {
            hitPlayer(target, target->hpReal() - 1, 1);
        }
    }

    u16 animNo() const {
        if (_50 == true) {
            return 0;
        }
        return Goods::animNo();
    }

    bool hasDim() const {
        if (_50 == true) {
            return false;
        }
        return Goods::hasDim();
    }

    bool _50;
};

class SaltwaterGun : public DefaultGoods {
public:
    SaltwaterGun(u16 id, Unit* user, u16 a3);
    virtual ~SaltwaterGun() {}

    bool isResisted(Unit* target) {
        if (isResistedD(this, target) == true) {
            return true;
        }

        Monster* m = dynaCastMonster(target);
        if (m == NULL)
            return true;

        return m->type() != MonsterType::Mechanical &&
               m->type() != MonsterType::MechanicalChimera &&
               isMonsterVariant(m, Monster::StickySlug) != true &&
               isMonsterVariant(m, Monster::SlimySlug) != true;
    }

    void onDamage(Unit* target) {
        Monster* m = dynaCastMonster(target);
        if (m == NULL)
            return;

        if (m->type() == MonsterType::Mechanical ||
            isMonsterVariant(m, Monster::StickySlug) == true ||
            isMonsterVariant(m, Monster::SlimySlug) == true) {
            _50 = 0x100;
        } else if (m->type() == MonsterType::MechanicalChimera) {
            _50 = 0x80;
        }
        Action::onDamage(target);
    }
    s32 healLo() const { return Goods::healLo() * _50 >> 8; }
    s32 healHi() const { return Goods::healHi() * _50 >> 8; }

    u16 _50;
};

class HoneyShower : public DefaultGoods {
public:
    HoneyShower(u16 id, Unit* user, u16 a3);
    virtual ~HoneyShower() {}

    void onDamage(Unit* target) {
        if (randS32(0, 99) < 90) {
            ROMStr(0x166).print(Color::Black(), 1);
            playSound(0x452);

            int total_dmg = 0;
            for (int i = 0; i < 8; i++) {
                int dmg = randS32(8, 16);
                sub_0807392C(target, dmg, 1);
                sub_08073198(Animation::BeeHit, getUser(), target);
                setsleep(randS32(12, 15));
                total_dmg += dmg;
            }
            sub_08073270();
            (void)new AutoCombo(8, ComboRhythm(120, 40));
            (void)new AutoComboResult(total_dmg, ComboRhythm(120, 52));
            setsleep(25);
        } else {
            // bear appeared
            ROMStr(0x167).print(Color::Black(), true);
            PlaySoundBlocking(0x453);
            hitPlayer(target, randS32(800, 860), 1);
            PlayAnimation(Animation::HardHit, getUser(), target);
        }
    }
};

class AncientBanana : public DefaultGoods {
public:
    AncientBanana(u16 id, Unit* user, u16 a3);
    virtual ~AncientBanana() {}

    void playAnim() {
        Action::playAnim();
        playSound(0x55e);

        PlayAnimation(Animation::NoEffect, getUser(), getTarget(0));
        // [04 EF][FMT_ARG2] slipped violently!
        ROMStr(0x190).print(Color::Black(), true);
    }
};

class BugSpray : public DefaultGoods {
public:
    BugSpray(u16 id, Unit* user, u16 a3);
    virtual ~BugSpray() {}

    void onDamage(Unit* target) {
        Monster* m = dynaCastMonster(target);
        if (m != NULL) {
            if (m->type() == MonsterType::Bug) {
                Action::onDamage(m);
            } else {
                ROMStr(0x154).print(Color::Black(), true);
            }
        }
    }
};

class PeculiarCheese : public DefaultGoods {
public:
    PeculiarCheese(u16 id, Unit* user, u16 a3);
    virtual ~PeculiarCheese() {}

    void action_f8(Unit* target) {
        s32 hp;

        if (IsPlayerAndType(target, Player::Flint) == true) {
            hp = 60;
        } else if (IsPlayerAndType(target, Player::Lucas) == true) {
            // lucas likes cheese if name length is odd
            hp = (createPlayerName(Player::Lucas).len() & 1) == 0 ? 20 : 60;
        } else if (IsPlayerAndType(target, Player::Duster) == true) {
            hp = 60;
        } else if (IsPlayerAndType(target, Player::Kumatora) == true) {
            hp = 20;
        } else if (IsPlayerAndType(target, Player::Boney) == true) {
            hp = 20;
        } else if (IsPlayerAndType(target, Player::Salsa) == true) {
            hp = 20;
        } else {
            hp = 20;
        }
        // [FMT_ARG2] loves cheese!
        // [FMT_ARG2] isn't too fond of cheese.
        ROMStr(hp >= 60 ? 0x186 : 0x187).print(Color::Black(), true);
        InitHeal(target, hp, 1);
    }
};

class DoggyFood : public DefaultGoods {
public:
    DoggyFood(u16 id, Unit* user, u16 a3);
    virtual ~DoggyFood() {}

    void action_f8(Unit* target) {
        if (IsPlayerAndType(target, Player::Boney) == true) {
            Action::action_f8(target);
        } else {
            InitHeal(target, 6, 1);
        }
    }
};

class LottoMeal : public DefaultGoods {
public:
    LottoMeal(u16 id, Unit* user, u16 a3);
    virtual ~LottoMeal() {}

    void onInflictStatus(Unit* target) {
        switch (randS32(0, 9)) {
        case 0:
            PlayAnimation(Animation::LifeUpG, target, target);
            InitHeal(target, randS32(80, 140), 1);
            ROMStr(0x1cb).print(Color::Black(), true);
            break;
        case 1:
            PlayAnimation(Animation::PsiMagnetGainA, target, target);
            sub_08073D98(target, randS32(20, 50), 1);
            ROMStr(0x1cc).print(Color::Black(), true);
            break;
        case 2:
            if (calcStatusInflict(target, Status::OffUpStrong, 100, true) == true) {
                ROMStr(0x1cd).print(Color::Black(), true);
            }
            break;
        case 3:
            if (calcStatusInflict(target, Status::OffDownStrong, 100, true) == true) {
                ROMStr(0x1ce).print(Color::Black(), true);
            }
            break;
        case 4:
            if (calcStatusInflict(target, Status::DefUpStrong, 100, true) == true) {
                ROMStr(0x1cf).print(Color::Black(), true);
            }
            break;
        case 5:
            if (calcStatusInflict(target, Status::DefDownStrong, 100, true) == true) {
                ROMStr(0x1d0).print(Color::Black(), true);
            }
            break;
        case 6:
            if (calcStatusInflict(target, Status::MonkeyDanceSP, 100, true) == true) {
                ROMStr(0x1d1).print(Color::Black(), true);
            }
            break;
        case 7:
            if (calcStatusInflict(target, Status::MonkeyDanceSP2, 100, true) == true) {
                ROMStr(0x1d2).print(Color::Black(), true);
            }
            break;
        case 8:
            if (calcStatusInflict(target, Status::Crying, 100, true) == true) {
                ROMStr(0x1d3).print(Color::Black(), true);
            }
            break;
        case 9:
            if (calcStatusInflict(target, Status::Strange, 100, true) == true) {
                ROMStr(0x1d4).print(Color::Black(), true);
            }
            break;
        }
    }
};

class EnemyBufferizer : public DefaultGoods {
public:
    EnemyBufferizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyBufferizer() {}

    bool isResisted(Unit* target) {
        if (isResistedD(this, target) == true) {
            return true;
        }
        return IsBossBattle();
    }
};

class EnemyWimperizer : public DefaultGoods {
public:
    EnemyWimperizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyWimperizer() {}

    bool isResisted(Unit* target) {
        if (isResistedD(this, target) == true) {
            return true;
        }
        return IsBossBattle();
    }
};

class AttackAttractor : public DefaultGoods {
public:
    AttackAttractor(u16 id, Unit* user, u16 a3);
    virtual ~AttackAttractor() {}

    bool isResisted(Unit* target) {
        if (typeIsMonster(target) != true) {
            if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
                return true;
            }
            return Action::isResisted(target);
        }

        return target->getStatusWeakness(0xb) < 1;
    }

    void tellResisted(Unit* target) {
        // But it didn't work on [05 EF][FMT_ARG2]
        ROMStr(0x154).print(Color::Black(), true);
    }

    void onInflictStatus(Unit* target) {
        if (randS32(0, 99) < 50) {
            Action::onInflictStatus(target);
            return;
        }
        // But it didn't work.
        ROMStr(0x159).print(Color::Black(), true);
    }
};

class MadeYouLook : public DefaultGoods {
public:
    MadeYouLook(u16 id, Unit* user, u16 a3);
    virtual ~MadeYouLook() {}

    bool isResisted(Unit* target) {
        if (target->hasStatus(Status::Sleep) == true) {
            return true;
        }

        if (typeIsMonster(target) == true) {
            Monster* m = dynaCastMonster(target);
            if (m->hasBackSprite() != true) {
                return true;
            }
        }

        if (typeIsMonster(target) == true) {
            Monster* m = dynaCastMonster(target);
            if (m->surprised() == true) {
                return true;
            }
        }

        if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
            return true;
        }

        return Action::isResisted(target);
    }

    void tellResisted(Unit* target) {
        PlaySoundBlocking(0x451);
        // But it didn't work on [05 EF][FMT_ARG2]!
        ROMStr(0x154).print(Color::Black(), true);
    }

    void onSuccess(Unit* target) {
        Action::onSuccess(target);
        PlaySoundBlocking(0x451);

        Monster* m = dynaCastMonster(target);
        m->monster_300(true);
        sub_08073E3C(target, 0x33, 0);
        // [04 EF][FMT_ARG2] was tricked into turning around!
        ROMStr(0x176).print(Color::Black(), true);
    }
};

class PaperFan : public DefaultGoods {
public:
    PaperFan(u16 id, Unit* user, u16 a3);
    virtual ~PaperFan() {}

    void onFail(Unit* target) {
        s32 count = target->getStatusTypeCount(Status::Strange);
        if (count > 0) {
            for (int i = 0; i < count; i++) {
                statusWearOff(target, Status::Strange, i + 1 >= count);
            }
        } else {
            // But it didn't work on [05 EF][FMT_ARG2]!
            ROMStr(0x154).print(Color::Black(), true);
        }
    }
};

class SecretHerb : public DefaultGoods {
public:
    SecretHerb(u16 id, Unit* user, u16 a3);
    virtual ~SecretHerb() {}

    NONMATCH("asm/non_matching/goods/onFail__10SecretHerbP4Unit.inc", void onFail(Unit* target)) {
        if (target->isDead() == true) {
            target->setHP(max(1, sub_0807066C(25 * target->maxHP(), 100)));
            return;
        }

        int num = 0;
        for (int i = 0; i < 8; i++) {
            Status::Type t = gUnknown_080FB078[i];
            while (target->getStatusTypeCount(gUnknown_080FB078[i]) > 0) {
                statusWearOff(target, gUnknown_080FB078[i], false);
                num++;
            }
        }
        ROMStr(num > 0 ? 0x156 : 0x154).print(Color::Black(), 1);
    }
    END_NONMATCH
};

class CupOfLifenoodles : public DefaultGoods {
public:
    CupOfLifenoodles(u16 id, Unit* user, u16 a3);
    virtual ~CupOfLifenoodles() {}

    NONMATCH("asm/non_matching/goods/onFail__16CupOfLifenoodlesP4Unit.inc",
             void onFail(Unit* target)) {
        if (target->isDead() == true) {
            target->setHP(target->maxHP());
            return;
        }

        int num = 0;
        for (int i = 0; i < 8; i++) {
            Status::Type t = gUnknown_080FB078[i];
            while (target->getStatusTypeCount(gUnknown_080FB078[i]) > 0) {
                statusWearOff(target, gUnknown_080FB078[i], false);
                num++;
            }
        }
        ROMStr(num > 0 ? 0x156 : 0x154).print(Color::Black(), true);
    }
    END_NONMATCH
};

class ShieldSnatcher : public DefaultGoods {
public:
    ShieldSnatcher(u16 id, Unit* user, u16 a3);
    virtual ~ShieldSnatcher() {}

    void onFail(Unit* target) {
        PlaySoundBlocking(0x62a);
        if (target->hasStatus(Status::Shield) == true ||
            target->hasStatus(Status::Counter) == true ||
            target->hasStatus(Status::PsiShield) == true ||
            target->hasStatus(Status::PsiCounter) == true) {
            target->removeStatus(Status::Shield);
            target->removeStatus(Status::Counter);
            target->removeStatus(Status::PsiShield);
            target->removeStatus(Status::PsiCounter);
            playSound(0x62b);
            PlayAnimation(Animation::KO, target, target);
            // [24 EF][FMT_ARG2]'s shield disappeared!
            ROMStr(0x17a).print(Color::Black(), true);
        } else {
            // But it didn't work on [05 EF][FMT_ARG2]!
            ROMStr(0x154).print(Color::Black(), true);
        }
    }
};

class DragoFang : public DefaultGoods {
public:
    DragoFang(u16 id, Unit* user, u16 a3);
    virtual ~DragoFang() {}

    bool isResisted(Unit* target) { return sub_08072648(4) ^ 1; }

    void tellResisted(Unit* target) {
        // This isn't the best time for that.
        ROMStr(0x184).print(Color::Black(), true);
    }

    bool calcDidHit(Unit* target) {
        Unit* u = sub_08072EE4(5);
        if (u == NULL) {
            return false;
        }
        // see MechaDrago class
        return u->getElementWeakness(0) < 1;
    }

    void onSuccess(Unit* target) {
        Action::onSuccess(target);
        // [FMT_ARG1] grasped the [FMT_ARG0] tightly and pounced on the [FMT_ARG2]![PAUSE30]
        ROMStr(0x182).print(Color::Black(), true);
        PlaySoundBlocking(0x554);
        PlayAnimation(Animation::ShakeLong, target, target);
        // It pierced the [FMT_ARG2]'s tough hide![PAUSE30][WAIT]The [FMT_ARG2] let out a howl!
        ROMStr(0x183).print(Color::Black(), true);
    }

    void tellMissed(Unit* target) {
        // 018A: With the [FMT_ARG0] in hand, [FMT_ARG1] sprung upon the
        // [FMT_ARG2]![PAUSE30][WAIT]But the [FMT_ARG2]'s tough hide had already been pierced![END]
        ROMStr(0x18a).print(Color::Black(), true);
    }
};

class TriviaCard1 : public DefaultGoods {
public:
    TriviaCard1(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard1() {}

    bool isResisted(Unit* target) {
        if (typeIsMonster(target) != true) {
            if (effect() != EffectType::PPHeal || target->maxPP() > 0) {
                return Action::isResisted(target);
            }
            return true;
        }

        Monster* m = dynaCastMonster(target);
        if (m->type() == MonsterType::Person) {
            return false;
        }

        return true;
    }

    void tellResisted(Unit* target) { ROMStr(0x1ca).print(Color::Black(), true); }

    void onSuccess(Unit* target) {
        if (typeIsMonster(target) != true)
            return;

        switch (target->id()) {
        case Monster::PorkColonel:
        case Monster::PorkLieutenant:
        case Monster::PorkColonel2nd:
            setsleep(60);
            ROMStr(0x19a).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61d);
            ROMStr(0x198).print(Color::Black(), true);
            break;
        case Monster::WomanizingPigMask1st:
        case Monster::WomanizingPigMask2nd:
            setsleep(60);
            ROMStr(0x19e).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::PorkSoldier:
            setsleep(60);
            ROMStr(0x1a2).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::PorkCommander:
            setsleep(60);
            ROMStr(0x1a6).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::NavySqueal:
            setsleep(60);
            ROMStr(0x1ae).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), true);
            break;
        }
    }
};

class TriviaCard2 : public DefaultGoods {
public:
    TriviaCard2(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard2() {}

    bool isResisted(Unit* target) {
        if (typeIsMonster(target) != true) {
            if (effect() != EffectType::PPHeal || target->maxPP() > 0) {
                return Action::isResisted(target);
            }
            return true;
        }

        Monster* m = dynaCastMonster(target);
        if (m->type() == MonsterType::Person) {
            return false;
        }
        return true;
    }

    void tellResisted(Unit* target) { ROMStr(0x1ca).print(Color::Black(), 1); }

    void onSuccess(Unit* target) {
        if (typeIsMonster(target) != true)
            return;

        switch (target->id()) {
        case Monster::PorkSoldier:
        case 0xab:
        case 0xad:
            setsleep(60);
            ROMStr(0x19b).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61d);
            ROMStr(0x198).print(Color::Black(), 1);
            break;
        case 0xe:
        case 0xf:
            setsleep(60);
            ROMStr(0x19f).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        case 0xac:
            setsleep(60);
            ROMStr(0x1a7).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        case 0x1d:
        case 0xaa:
            setsleep(60);
            ROMStr(0x1ab).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        }
    }
};

class TriviaCard3 : public DefaultGoods {
public:
    TriviaCard3(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard3() {}

    bool isResisted(Unit* target) {
        if (typeIsMonster(target) != true) {
            if (effect() != EffectType::PPHeal || target->maxPP() > 0) {
                return Action::isResisted(target);
            }
            return true;
        }

        Monster* m = dynaCastMonster(target);
        if (m->type() == MonsterType::Person) {
            return false;
        }
        return true;
    }

    void tellResisted(Unit* target) { ROMStr(0x1ca).print(Color::Black(), 1); }

    void onSuccess(Unit* target) {
        if (typeIsMonster(target) != true)
            return;

        switch (target->id()) {
        case Monster::PorkSoldier:
        case 0xab:
        case 0xac:
            setsleep(60);
            ROMStr(0x19c).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61d);
            ROMStr(0x198).print(Color::Black(), 1);
            break;
        case 0xe:
        case 0xf:
            setsleep(60);
            ROMStr(0x1a0).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        case 0xad:
            setsleep(60);
            ROMStr(0x1b0).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        case 0x1d:
        case 0xaa:
            setsleep(60);
            ROMStr(0x1ac).print(Color::Black(), 1);
            setsleep(30);
            PlaySoundBlocking(0x61e);
            ROMStr(0x199).print(Color::Black(), 1);
            break;
        }
    }
};

class TriviaCard4 : public DefaultGoods {
public:
    TriviaCard4(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard4() {}

    bool isResisted(Unit* target) {
        if (typeIsMonster(target) != true) {
            if (effect() != 5 || target->maxPP() > 0) {
                return Action::isResisted(target);
            }
            return true;
        }

        Monster* m = dynaCastMonster(target);
        if (m->type() == MonsterType::Person) {
            return false;
        }
        return true;
    }

    void tellResisted(Unit* target) {
        // It didn't get through to [05 EF][FMT_ARG2]![END]
        ROMStr(0x1ca).print(Color::Black(), true);
    }

    void onSuccess(Unit* target) {
        if (typeIsMonster(target) != true)
            return;

        switch (target->id()) {
        case Monster::PorkColonel:
        case Monster::PorkLieutenant:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "The Civil War!"[END]
            ROMStr(0x19d).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61d);

            // It was the correct answer![END]
            ROMStr(0x198).print(Color::Black(), true);
            break;
        case Monster::WomanizingPigMask1st:
        case Monster::WomanizingPigMask2nd:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "OJ!"[END]
            ROMStr(0x1a1).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);

            // It wasn't the correct answer![END]
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::PorkSoldier:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "Prohibition!"[END]
            ROMStr(0x1a5).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);

            // It wasn't the correct answer![END]
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::PorkCommander:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "The Industrial Revolution!"[END]
            ROMStr(0x1a9).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);

            // It wasn't the correct answer![END]
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::NavySqueal:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "The Peasants' Revolt!"[END]
            ROMStr(0x1b1).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);

            // It wasn't the correct answer![END]
            ROMStr(0x199).print(Color::Black(), true);
            break;
        case Monster::PorkColonel2nd:
            setsleep(60);

            // [04 EF][FMT_ARG2] answered, "Battle of the Alamo!"[END]
            ROMStr(0x1ad).print(Color::Black(), true);
            setsleep(30);
            PlaySoundBlocking(0x61e);

            // It wasn't the correct answer![END]
            ROMStr(0x199).print(Color::Black(), true);
            break;
        }
    }
};

class GoodsFactory {
public:
    static void init();
    static void put(u16 id, void* (*spawn)(u16 id, Unit* user, u16 a2));
    static void* create(u16 id, Unit* user, u16 a2);
};

FACTORY(DefaultGoods, u16, Unit*, u16);
FACTORY(NewYearsEveBomb, u16, Unit*, u16);
FACTORY(SaltwaterGun, u16, Unit*, u16);
FACTORY(HoneyShower, u16, Unit*, u16);
FACTORY(AncientBanana, u16, Unit*, u16);
FACTORY(BugSpray, u16, Unit*, u16);
FACTORY(PeculiarCheese, u16, Unit*, u16);
FACTORY(DoggyFood, u16, Unit*, u16);
FACTORY(LottoMeal, u16, Unit*, u16);
FACTORY(EnemyBufferizer, u16, Unit*, u16);
FACTORY(EnemyWimperizer, u16, Unit*, u16);
FACTORY(AttackAttractor, u16, Unit*, u16);
FACTORY(MadeYouLook, u16, Unit*, u16);
FACTORY(PaperFan, u16, Unit*, u16);
FACTORY(SecretHerb, u16, Unit*, u16);
FACTORY(CupOfLifenoodles, u16, Unit*, u16);
FACTORY(ShieldSnatcher, u16, Unit*, u16);
FACTORY(DragoFang, u16, Unit*, u16);
FACTORY(TriviaCard1, u16, Unit*, u16);
FACTORY(TriviaCard2, u16, Unit*, u16);
FACTORY(TriviaCard3, u16, Unit*, u16);
FACTORY(TriviaCard4, u16, Unit*, u16);

#endif  // BATTLE_GOODS_IMPL_H
