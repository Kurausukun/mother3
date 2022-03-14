#include "battle/goods.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "enums.h"

extern "C" void playSeq(u32, Unit*, Unit*);
extern "C" bool typeIsMonster(Unit*);
extern "C" Monster* dynaCastMonster(Unit*);
extern "C" void setsleep(u32);
extern "C" void sub_080707E4(u32);
extern "C" Unit* sub_08072EE4(u32);
extern "C" void playSound(u16);
extern "C" s32 sub_0807066C(s32, s32);
extern "C" void sub_08073E3C(Unit*, u32, u32);
extern "C" s32 randS32(s32, s32);
extern "C" bool sub_08072628();
extern "C" void sub_08073C4C(Unit*, u32, u32);
extern "C" void sub_08073D98(Unit*, u32, u32);
extern "C" u8 unitIsPlayer(Unit*, u32);
extern "C" void hitPlayer(Unit*, u32, u32);
extern "C" bool sub_08072D84(Unit*, u32);

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
    DefaultGoods(u16 id, Unit* user, u16 a3);
    virtual ~DefaultGoods() {}

    virtual void tellUseMessage() {
        if ((u8)getType() != 1) {
            Action::tellUseMessage();
        }
    }

    virtual bool dogTax() {
        if (unitIsPlayer(getUser(), Player::Boney) == true) {
            if (getUser()->hasStatus(Status::Nauseous) != true) {
                // 2% chance that boney is feeling mischevious
                if (getTargetIdx(getUser()) >= numTargets() && goods_2b0() == 4 &&
                    randS32(0, 99) < 2) {
                    // his food now
                    clearTargets();
                    addTarget(getUser());
                    createMsg(0x17e).print(PrintSettings(0, 0, 0), 1);
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
            s->status_128().print(PrintSettings(0, 0, 0), 1);
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

    virtual bool dg_3();
};

class TriviaCard4 : public Goods {
public:
    TriviaCard4(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard4();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void onSuccess(Unit* target);
};

class TriviaCard3 : public Goods {
public:
    TriviaCard3(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard3();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void onSuccess(Unit* target);
};

class TriviaCard2 : public Goods {
public:
    TriviaCard2(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard2();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void onSuccess(Unit* target);
};

class TriviaCard1 : public Goods {
public:
    TriviaCard1(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard1();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void onSuccess(Unit* target);
};

class DragoFang : public Goods {
public:
    DragoFang(u16 id, Unit* user, u16 a3);
    virtual ~DragoFang();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    u8 calcMissed(Unit* target);
    void onSuccess(Unit* target);
    void tellMissed(Unit* target);
};

class ShieldSnatcher : public Goods {
public:
    ShieldSnatcher(u16 id, Unit* user, u16 a3);
    virtual ~ShieldSnatcher();

    void onFail(Unit* target);
};

class CupOfLifenoodles : public Goods {
public:
    CupOfLifenoodles(u16 id, Unit* user, u16 a3);
    virtual ~CupOfLifenoodles();

    void onFail(Unit* target);
};

class SecretHerb : public Goods {
public:
    SecretHerb(u16 id, Unit* user, u16 a3);
    virtual ~SecretHerb();

    void onFail(Unit* target);
};

class PaperFan : public Goods {
public:
    PaperFan(u16 id, Unit* user, u16 a3);
    virtual ~PaperFan();

    void onFail(Unit* target);
};

class MadeYouLook : public Goods {
public:
    MadeYouLook(u16 id, Unit* user, u16 a3);
    virtual ~MadeYouLook();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void onSuccess(Unit* target);
};

class AttackAttractor : public Goods {
public:
    AttackAttractor(u16 id, Unit* user, u16 a3);
    virtual ~AttackAttractor();

    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void action_118(Unit* target);
};

class EnemyWimperizer : public Goods {
public:
    EnemyWimperizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyWimperizer();

    bool isResisted(Unit* target);
};

class EnemyBufferizer : public Goods {
public:
    EnemyBufferizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyBufferizer();

    bool isResisted(Unit* target);
};

class LottoMeal : public Goods {
public:
    LottoMeal(u16 id, Unit* user, u16 a3);
    virtual ~LottoMeal();

    void action_118(Unit* target);
};

class DoggyFood : public Goods {
public:
    DoggyFood(u16 id, Unit* user, u16 a3);
    virtual ~DoggyFood();

    void action_f8(Unit* target);
};

class PeculiarCheese : public Goods {
public:
    PeculiarCheese(u16 id, Unit* user, u16 a3);
    virtual ~PeculiarCheese();

    void action_f8(Unit* target);
};

class BugSpray : public Goods {
public:
    BugSpray(u16 id, Unit* user, u16 a3);
    virtual ~BugSpray();

    void calcHit(Unit* target);
};

class AncientBanana : public Goods {
public:
    AncientBanana(u16 id, Unit* user, u16 a3);
    virtual ~AncientBanana();

    void playAnim();
};

class HoneyShower : public Goods {
public:
    HoneyShower(u16 id, Unit* user, u16 a3);
    virtual ~HoneyShower();

    void calcHit(Unit* target);
};

class SaltwaterGun : public Goods {
public:
    SaltwaterGun(u16 id, Unit* user, u16 a3);
    virtual ~SaltwaterGun();

    bool isResisted(Unit* target);
    void calcHit(Unit* target);
    s32 healLo() const;
    s32 healHi() const;

    u16 _50;
};

class NewYearsEveBomb : public Goods {
public:
    NewYearsEveBomb(u16 id, Unit* user, u16 a3);
    virtual ~NewYearsEveBomb();

    void action_70();
    void tellUseMessage();
    bool isResisted(Unit* target);
    void tellResisted(Unit* target);
    void calcHit(Unit* target);
    bool hasDim() const;
    u16 animNo() const;

    virtual bool nye_1();
    virtual bool nye_2();
    virtual bool nye_3();
    virtual bool nye_4();

    bool _50;
};

extern "C" {

void* __5Goods();
void* __builtin_new(u32);
void* __11TriviaCard4UsP4UnitUs(void*, u16, Unit*, u32);
void* __11TriviaCard3UsP4UnitUs(void*, u16, Unit*, u32);
void* __11TriviaCard2UsP4UnitUs(void*, u16, Unit*, u32);
void* __11TriviaCard1UsP4UnitUs(void*, u16, Unit*, u32);
void* __9DragoFangUsP4UnitUs(void*, u16, Unit*, u32);
void* __14ShieldSnatcherUsP4UnitUs(void*, u16, Unit*, u32);
void* __16CupOfLifenoodlesUsP4UnitUs(void*, u16, Unit*, u32);
void* __10SecretHerbUsP4UnitUs(void*, u16, Unit*, u32);
void* __8PaperFanUsP4UnitUs(void*, u16, Unit*, u32);
void* __11MadeYouLookUsP4UnitUs(void*, u16, Unit*, u32);
void* __15AttackAttractorUsP4UnitUs(void*, u16, Unit*, u32);
void* __15EnemyWimperizerUsP4UnitUs(void*, u16, Unit*, u32);
void* __15EnemyBufferizerUsP4UnitUs(void*, u16, Unit*, u32);
void* __9LottoMealUsP4UnitUs(void*, u16, Unit*, u32);
void* __9DoggyFoodUsP4UnitUs(void*, u16, Unit*, u32);
void* __14PeculiarCheeseUsP4UnitUs(void*, u16, Unit*, u32);
void* __8BugSprayUsP4UnitUs(void*, u16, Unit*, u32);
void* __13AncientBananaUsP4UnitUs(void*, u16, Unit*, u32);
void* __11HoneyShowerUsP4UnitUs(void*, u16, Unit*, u32);
void* __12SaltwaterGunUsP4UnitUs(void*, u16, Unit*, u32);
void* __15NewYearsEveBombUsP4UnitUs(void*, u16, Unit*, u32);
void* __12DefaultGoodsUsP4UnitUs(void*, u16, Unit*, u32);

void* sub_080BDAC0() {
    __builtin_new(0x50);
    return __5Goods();
}

extern const char gUnknown_080FA950[];  // "Goods"
const char* sub_080BDAD0() {
    return gUnknown_080FA950;
}

void* sub_080BDAD8(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11TriviaCard4UsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDB00(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11TriviaCard3UsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDB28(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11TriviaCard2UsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDB50(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11TriviaCard1UsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDB78(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __9DragoFangUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDBA0(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __14ShieldSnatcherUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDBC8(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __16CupOfLifenoodlesUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDBF0(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __10SecretHerbUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDC18(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __8PaperFanUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDC40(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11MadeYouLookUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDC68(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __15AttackAttractorUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDC90(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __15EnemyWimperizerUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDCB8(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __15EnemyBufferizerUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDCE0(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __9LottoMealUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDD08(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __9DoggyFoodUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDD30(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __14PeculiarCheeseUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDD58(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __8BugSprayUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDD80(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __13AncientBananaUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDDA8(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __11HoneyShowerUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDDD0(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x54);
    return __12SaltwaterGunUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDDF8(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x54);
    return __15NewYearsEveBombUsP4UnitUs(temp, id, user, r2);
}

void* sub_080BDE20(u16 id, Unit* user, u16 r2) {
    void* temp = __builtin_new(0x50);
    return __12DefaultGoodsUsP4UnitUs(temp, id, user, r2);
}
}

TriviaCard4::TriviaCard4(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
TriviaCard3::TriviaCard3(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
TriviaCard2::TriviaCard2(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
TriviaCard1::TriviaCard1(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
DragoFang::DragoFang(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
ShieldSnatcher::ShieldSnatcher(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
CupOfLifenoodles::CupOfLifenoodles(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
SecretHerb::SecretHerb(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
PaperFan::PaperFan(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
MadeYouLook::MadeYouLook(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
AttackAttractor::AttackAttractor(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
EnemyWimperizer::EnemyWimperizer(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
EnemyBufferizer::EnemyBufferizer(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
LottoMeal::LottoMeal(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
DoggyFood::DoggyFood(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
PeculiarCheese::PeculiarCheese(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
BugSpray::BugSpray(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
AncientBanana::AncientBanana(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
HoneyShower::HoneyShower(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}
SaltwaterGun::SaltwaterGun(u16 id, Unit* user, u16 a3) : Goods(id, user, a3), _50(0x100) {}
NewYearsEveBomb::NewYearsEveBomb(u16 id, Unit* user, u16 a3) : Goods(id, user, a3), _50(0) {}
DefaultGoods::DefaultGoods(u16 id, Unit* user, u16 a3) : Goods(id, user, a3) {}

void TriviaCard4::onSuccess(Unit* target) {
    if (typeIsMonster(target) != true)
        return;

    switch (target->id()) {
    case 0x1d:
    case 0xaa:
        setsleep(60);
        createMsg(0x19d).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61d);
        createMsg(0x198).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xe:
    case 0xf:
        setsleep(60);
        createMsg(0x1a1).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0x95:
        setsleep(60);
        createMsg(0x1a5).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xac:
        setsleep(60);
        createMsg(0x1a9).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xad:
        setsleep(60);
        createMsg(0x1b1).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xab:
        setsleep(60);
        createMsg(0x1ad).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    }
}

void TriviaCard4::tellResisted(Unit* target) {
    createMsg(0x1ca).print(PrintSettings(0, 0, 0), 1);
}

bool TriviaCard4::isResisted(Unit* target) {
    if (typeIsMonster(target) != true) {
        if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
            return true;
        }
        return this->Action::isResisted(target);
    }

    Monster* m = dynaCastMonster(target);
    if (m->monster_348() == 7) {
        return false;
    }
    return true;
}

extern "C" NAKED void TriviaCard4_dt(TriviaCard4* t) {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11TriviaCard4\n\
	_._11TriviaCard4:\n\
	push {lr}\n\
	ldr r2, _080BE4F4 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BE4F4: .4byte _vt.12DefaultGoods");
}

void TriviaCard3::onSuccess(Unit* target) {
    if (typeIsMonster(target) != true)
        return;

    switch (target->id()) {
    case 0x95:
    case 0xab:
    case 0xac:
        setsleep(60);
        createMsg(0x19c).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61d);
        createMsg(0x198).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xe:
    case 0xf:
        setsleep(60);
        createMsg(0x1a0).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xad:
        setsleep(60);
        createMsg(0x1b0).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0x1d:
    case 0xaa:
        setsleep(60);
        createMsg(0x1ac).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    }
}

void TriviaCard3::tellResisted(Unit* target) {
    createMsg(0x1ca).print(PrintSettings(0, 0, 0), 1);
}

bool TriviaCard3::isResisted(Unit* target) {
    if (typeIsMonster(target) != true) {
        if (effect() != EffectType::PPHeal || target->maxPP() > 0) {
            return Action::isResisted(target);
        }
        return true;
    }

    Monster* m = dynaCastMonster(target);
    if (m->monster_348() == 7) {
        return false;
    }
    return true;
}

extern "C" NAKED void TriviaCard3_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11TriviaCard3\n\
	_._11TriviaCard3:\n\
	push {lr}\n\
	ldr r2, _080BE7F0 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BE7F0: .4byte _vt.12DefaultGoods");
}

void TriviaCard2::onSuccess(Unit* target) {
    if (typeIsMonster(target) != true)
        return;

    switch (target->id()) {
    case 0x95:
    case 0xab:
    case 0xad:
        setsleep(60);
        createMsg(0x19b).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61d);
        createMsg(0x198).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xe:
    case 0xf:
        setsleep(60);
        createMsg(0x19f).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xac:
        setsleep(60);
        createMsg(0x1a7).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0x1d:
    case 0xaa:
        setsleep(60);
        createMsg(0x1ab).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    }
}

void TriviaCard2::tellResisted(Unit* target) {
    createMsg(0x1ca).print(PrintSettings(0, 0, 0), 1);
}

bool TriviaCard2::isResisted(Unit* target) {
    if (typeIsMonster(target) != true) {
        if (effect() != 5 || target->maxPP() > 0) {
            return Action::isResisted(target);
        }
        return true;
    }

    Monster* m = dynaCastMonster(target);
    if (m->monster_348() == 7) {
        return false;
    }
    return true;
}

extern "C" NAKED void TriviaCard2_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11TriviaCard2\n\
	_._11TriviaCard2:\n\
	push {lr}\n\
	ldr r2, _080BEAF8 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BEAF8: .4byte _vt.12DefaultGoods");
}

void TriviaCard1::onSuccess(Unit* target) {
    if (typeIsMonster(target) != true)
        return;

    switch (target->id()) {
    case 0x1d:
    case 0xaa:
    case 0xab:
        setsleep(60);
        createMsg(0x19a).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61d);
        createMsg(0x198).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xe:
    case 0xf:
        setsleep(60);
        createMsg(0x19e).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0x95:
        setsleep(60);
        createMsg(0x1a2).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xac:
        setsleep(60);
        createMsg(0x1a6).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    case 0xad:
        setsleep(60);
        createMsg(0x1ae).print(PrintSettings(0, 0, 0), 1);
        setsleep(30);
        sub_080707E4(0x61e);
        createMsg(0x199).print(PrintSettings(0, 0, 0), 1);
        break;
    }
}

void TriviaCard1::tellResisted(Unit* target) {
    createMsg(0x1ca).print(PrintSettings(0, 0, 0), 1);
}

bool TriviaCard1::isResisted(Unit* target) {
    if (typeIsMonster(target) != true) {
        if (effect() != 5 || target->maxPP() > 0) {
            return Action::isResisted(target);
        }
        return true;
    }

    Monster* m = dynaCastMonster(target);
    if (m->monster_348() == 7) {
        return false;
    }
    return true;
}

extern "C" NAKED void TriviaCard1_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11TriviaCard1\n\
	_._11TriviaCard1:\n\
	push {lr}\n\
	ldr r2, _080BEE5C @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BEE5C: .4byte _vt.12DefaultGoods");
}

void DragoFang::tellMissed(Unit* target) {
    createMsg(0x18a).print(PrintSettings(0, 0, 0), 1);
}

void DragoFang::onSuccess(Unit* target) {
    Action::onSuccess(target);
    createMsg(0x182).print(PrintSettings(0, 0, 0), 1);
    sub_080707E4(0x554);
    playSeq(BattleSeq::ShakeLong, target, target);
    createMsg(0x183).print(PrintSettings(0, 0, 0), 1);
}

u8 DragoFang::calcMissed(Unit* target) {
    Unit* u = sub_08072EE4(5);
    if (u == NULL) {
        return false;
    }
    return u->getElementWeakness(0) < 1;
}

void DragoFang::tellResisted(Unit* target) {
    createMsg(0x184).print(PrintSettings(0, 0, 0), 1);
}

extern "C" u8 sub_08072648(u32);

bool DragoFang::isResisted(Unit* target) {
    return sub_08072648(4) ^ 1;
}

extern "C" NAKED void DragoFang_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._9DragoFang\n\
	_._9DragoFang:\n\
	push {lr}\n\
	ldr r2, _080BEFE4 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BEFE4: .4byte _vt.12DefaultGoods");
}

void ShieldSnatcher::onFail(Unit* target) {
    sub_080707E4(0x62a);
    if (target->hasStatus(Status::Shield) == true || target->hasStatus(Status::Counter) == true ||
        target->hasStatus(Status::PsiShield) == true ||
        target->hasStatus(Status::PsiCounter) == true) {
        target->removeStatus(Status::Shield);
        target->removeStatus(Status::Counter);
        target->removeStatus(Status::PsiShield);
        target->removeStatus(Status::PsiCounter);
        playSound(0x62b);
        playSeq(BattleSeq::KO, target, target);
        createMsg(0x17a).print(PrintSettings(0, 0, 0), 1);
    } else {
        createMsg(0x154).print(PrintSettings(0, 0, 0), 1);
    }
}

extern "C" NAKED void ShieldSnatcher_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._14ShieldSnatcher\n\
	_._14ShieldSnatcher:\n\
	push {lr}\n\
	ldr r2, _080BF148 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF148: .4byte _vt.12DefaultGoods");
}

extern Status::Type gUnknown_080FB078[];
extern "C" void sub_08073EE8(Unit*, Status::Type, bool);

NONMATCH("asm/non_matching/goods/onFail__16CupOfLifenoodlesP4Unit.inc",
         void CupOfLifenoodles::onFail(Unit* target)) {
    if (target->isDead() == true) {
        target->setHP(target->maxHP());
        return;
    }

    int num = 0;
    for (int i = 0; i < 8; i++) {
        Status::Type t = gUnknown_080FB078[i];
        while (target->getStatusTypeCount(gUnknown_080FB078[i]) > 0) {
            sub_08073EE8(target, gUnknown_080FB078[i], false);
            num++;
        }
    }
    createMsg(num > 0 ? 0x156 : 0x154).print(PrintSettings(0, 0, 0), 1);
}
END_NONMATCH

extern "C" NAKED void CupOfLifenoodles_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._16CupOfLifenoodles\n\
	_._16CupOfLifenoodles:\n\
	push {lr}\n\
	ldr r2, _080BF250 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF250: .4byte _vt.12DefaultGoods");
}

NONMATCH("asm/non_matching/goods/onFail__10SecretHerbP4Unit.inc",
         void SecretHerb::onFail(Unit* target)) {
    if (target->isDead() == true) {
        target->setHP(max(1, sub_0807066C(25 * target->maxHP(), 100)));
        return;
    }

    int num = 0;
    for (int i = 0; i < 8; i++) {
        Status::Type t = gUnknown_080FB078[i];
        while (target->getStatusTypeCount(gUnknown_080FB078[i]) > 0) {
            sub_08073EE8(target, gUnknown_080FB078[i], false);
            num++;
        }
    }
    createMsg(num > 0 ? 0x156 : 0x154).print(PrintSettings(0, 0, 0), 1);
}
END_NONMATCH

extern "C" NAKED void SecretHerb_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._10SecretHerb\n\
	_._10SecretHerb:\n\
	push {lr}\n\
	ldr r2, _080BF36C @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF36C: .4byte _vt.12DefaultGoods");
}

void PaperFan::onFail(Unit* target) {
    s32 count = target->getStatusTypeCount(Status::Strange);
    if (count > 0) {
        for (int i = 0; i < count; i++) {
            sub_08073EE8(target, 4, i + 1 >= count);
        }
    } else {
        createMsg(0x154).print(PrintSettings(0, 0, 0), 1);
    }
}

extern "C" NAKED void PaperFan_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._8PaperFan\n\
	_._8PaperFan:\n\
	push {lr}\n\
	ldr r2, _080BF400 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF400: .4byte _vt.12DefaultGoods");
}

void MadeYouLook::onSuccess(Unit* target) {
    Action::onSuccess(target);
    sub_080707E4(0x451);

    Monster* m = dynaCastMonster(target);
    m->monster_300(true);
    sub_08073E3C(target, 0x33, 0);
    createMsg(0x176).print(PrintSettings(0, 0, 0), 1);
}

void MadeYouLook::tellResisted(Unit* target) {
    sub_080707E4(0x451);
    createMsg(0x154).print(PrintSettings(0, 0, 0), 1);
}

bool MadeYouLook::isResisted(Unit* target) {
    if (target->hasStatus(Status::Sleep) == true) {
        return true;
    }

    if (typeIsMonster(target) == true) {
        Monster* m = dynaCastMonster(target);
        if (m->monster_380() != true) {
            return true;
        }
    }

    if (typeIsMonster(target) == true) {
        Monster* m = dynaCastMonster(target);
        if (m->monster_350() == true) {
            return true;
        }
    }

    if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
        return true;
    }

    return this->Action::isResisted(target);
}

extern "C" NAKED void MadeYouLook_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11MadeYouLook\n\
	_._11MadeYouLook:\n\
	push {lr}\n\
	ldr r2, _080BF59C @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF59C: .4byte _vt.12DefaultGoods");
}

void AttackAttractor::action_118(Unit* target) {
    if (randS32(0, 99) < 50) {
        Action::action_118(target);
        return;
    }

    createMsg(0x159).print(PrintSettings(0, 0, 0), 1);
}

void AttackAttractor::tellResisted(Unit* target) {
    createMsg(0x154).print(PrintSettings(0, 0, 0), 1);
}

bool AttackAttractor::isResisted(Unit* target) {
    if (typeIsMonster(target) != true) {
        if (effect() == EffectType::PPHeal && target->maxPP() <= 0) {
            return true;
        }
        return this->Action::isResisted(target);
    }

    return target->unit_1f8(0xb) < 1;
}

extern "C" NAKED void AttackAttractor_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._15AttackAttractor\n\
	_._15AttackAttractor:\n\
	push {lr}\n\
	ldr r2, _080BF6C8 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF6C8: .4byte _vt.12DefaultGoods");
}

bool EnemyWimperizer::isResisted(Unit* target) {
    if (isResistedD(this, target) == true) {
        return true;
    }
    return sub_08072628();
}

extern "C" NAKED void EnemyWimperizer_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._15EnemyWimperizer\n\
	_._15EnemyWimperizer:\n\
	push {lr}\n\
	ldr r2, _080BF734 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF734: .4byte _vt.12DefaultGoods");
}

bool EnemyBufferizer::isResisted(Unit* target) {
    if (isResistedD(this, target) == true) {
        return true;
    }
    return sub_08072628();
}

extern "C" NAKED void EnemyBufferizer_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._15EnemyBufferizer\n\
	_._15EnemyBufferizer:\n\
	push {lr}\n\
	ldr r2, _080BF7A0 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BF7A0: .4byte _vt.12DefaultGoods");
}

void LottoMeal::action_118(Unit* target) {
    switch (randS32(0, 9)) {
    case 0:
        playSeq(BattleSeq::LifeUpG, target, target);
        sub_08073C4C(target, randS32(80, 140), 1);
        createMsg(0x1cb).print(PrintSettings(0, 0, 0), 1);
        break;
    case 1:
        playSeq(BattleSeq::PsiMagnetGainA, target, target);
        sub_08073D98(target, randS32(20, 50), 1);
        createMsg(0x1cc).print(PrintSettings(0, 0, 0), 1);
        break;
    case 2:
        if (calcStatusInflict(target, Status::OffUpStrong, 100, 1) == true) {
            createMsg(0x1cd).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 3:
        if (calcStatusInflict(target, Status::OffDownStrong, 100, 1) == true) {
            createMsg(0x1ce).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 4:
        if (calcStatusInflict(target, Status::DefUpStrong, 100, 1) == true) {
            createMsg(0x1cf).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 5:
        if (calcStatusInflict(target, Status::DefDownStrong, 100, 1) == true) {
            createMsg(0x1d0).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 6:
        if (calcStatusInflict(target, Status::MonkeyDanceSP, 100, 1) == true) {
            createMsg(0x1d1).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 7:
        if (calcStatusInflict(target, Status::MonkeyDanceSP2, 100, 1) == true) {
            createMsg(0x1d2).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 8:
        if (calcStatusInflict(target, Status::Crying, 100, 1) == true) {
            createMsg(0x1d3).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    case 9:
        if (calcStatusInflict(target, Status::Strange, 100, 1) == true) {
            createMsg(0x1d4).print(PrintSettings(0, 0, 0), 1);
        }
        break;
    }
}

extern "C" NAKED void LottoMeal_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._9LottoMeal\n\
	_._9LottoMeal:\n\
	push {lr}\n\
	ldr r2, _080BFAF4 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFAF4: .4byte _vt.12DefaultGoods");
}

void DoggyFood::action_f8(Unit* target) {
    if (unitIsPlayer(target, 5) == true) {
        Action::action_f8(target);
    } else {
        sub_08073C4C(target, 6, 1);
    }
}

extern "C" NAKED void DoggyFood_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._9DoggyFood\n\
	_._9DoggyFood:\n\
	push {lr}\n\
	ldr r2, _080BFB38 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFB38: .4byte _vt.12DefaultGoods");
}

extern "C" Msg createPlayerName(u32);

void PeculiarCheese::action_f8(Unit* target) {
    s32 hp;

    if (unitIsPlayer(target, Player::Flint) == true) {
        hp = 60;
    } else if (unitIsPlayer(target, Player::Lucas) == true) {
        hp = (createPlayerName(Player::Lucas).len() & 1) == 0 ? 20 : 60;
    } else if (unitIsPlayer(target, Player::Duster) == true) {
        hp = 60;
    } else if (unitIsPlayer(target, Player::Kumatora) == true) {
        hp = 20;
    } else if (unitIsPlayer(target, Player::Boney) == true) {
        hp = 20;
    } else if (unitIsPlayer(target, Player::Salsa) == true) {
        hp = 20;
    } else {
        hp = 20;
    }

    createMsg(hp >= 60 ? 0x186 : 0x187).print(PrintSettings(0, 0, 0), 1);
    sub_08073C4C(target, hp, 1);
}

extern "C" NAKED void PeculiarCheese_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._14PeculiarCheese\n\
	_._14PeculiarCheese:\n\
	push {lr}\n\
	ldr r2, _080BFC24 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFC24: .4byte _vt.12DefaultGoods");
}

void BugSpray::calcHit(Unit* target) {
    Monster* m = dynaCastMonster(target);
    if (m != NULL) {
        if (m->monster_348() == 1) {
            Action::calcHit(m);
        } else {
            createMsg(0x154).print(PrintSettings(0, 0, 0), 1);
        }
    }
}

extern "C" NAKED void BugSpray_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._8BugSpray\n\
	_._8BugSpray:\n\
	push {lr}\n\
	ldr r2, _080BFCA8 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFCA8: .4byte _vt.12DefaultGoods");
}

void AncientBanana::playAnim() {
    Action::playAnim();
    playSound(0x55e);

    playSeq(BattleSeq::NoEffect, getUser(), getTarget(0));
    createMsg(0x190).print(PrintSettings(0, 0, 0), 1);
}

extern "C" NAKED void AncientBanana_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._13AncientBanana\n\
	_._13AncientBanana:\n\
	push {lr}\n\
	ldr r2, _080BFD44 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFD44: .4byte _vt.12DefaultGoods");
}

extern "C" void sub_0807392C(Unit*, u32, u32);
extern "C" void sub_08073198(u32, Unit*, Unit*);
extern "C" void sub_08073270();

struct ComboRhythm {
    ComboRhythm(u16 a, u16 b) : a(a), b(b) {}

    u16 a;
    u16 b;
};

class AutoCombo : public Base {
public:
    AutoCombo(u32, const ComboRhythm&);
    virtual ~AutoCombo();

private:
    u8 filler[0x11a];
};

class AutoComboResult : public Base {
public:
    AutoComboResult(u32, const ComboRhythm&);
    virtual ~AutoComboResult();

private:
    u8 filler[0x11a];
};

void HoneyShower::calcHit(Unit* target) {
    if (randS32(0, 99) < 90) {
        createMsg(0x166).print(PrintSettings(0, 0, 0), 1);
        playSound(0x452);

        int total_dmg = 0;
        for (int i = 0; i < 8; i++) {
            int dmg = randS32(8, 16);
            sub_0807392C(target, dmg, 1);
            sub_08073198(BattleSeq::BeeHit, getUser(), target);
            setsleep(randS32(12, 15));
            total_dmg += dmg;
        }
        sub_08073270();
        AutoCombo* ac = new AutoCombo(8, ComboRhythm(120, 40));
        AutoComboResult* acr = new AutoComboResult(total_dmg, ComboRhythm(120, 52));
        setsleep(25);
    } else {
        createMsg(0x167).print(PrintSettings(0, 0, 0), 1);
        sub_080707E4(0x453);
        hitPlayer(target, randS32(800, 860), 1);
        playSeq(BattleSeq::HardHit, getUser(), target);
    }
}

extern "C" NAKED void HoneyShower_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._11HoneyShower\n\
	_._11HoneyShower:\n\
	push {lr}\n\
	ldr r2, _080BFEC8 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080BFEC8: .4byte _vt.12DefaultGoods");
}

s32 SaltwaterGun::healHi() const {
    return Goods::healHi() * _50 >> 8;
}

s32 SaltwaterGun::healLo() const {
    return Goods::healLo() * _50 >> 8;
}

void SaltwaterGun::calcHit(Unit* target) {
    Monster* m = dynaCastMonster(target);
    if (m == NULL)
        return;

    if (m->monster_348() == 4 || sub_08072D84(m, 0x3a) == true || sub_08072D84(m, 0x12) == true) {
        _50 = 0x100;
    } else if (m->monster_348() == 3) {
        _50 = 0x80;
    }
    Action::calcHit(target);
}

bool SaltwaterGun::isResisted(Unit* target) {
    if (isResistedD(this, target) == true) {
        return true;
    }

    Monster* m = dynaCastMonster(target);
    if (m == NULL)
        return true;

    return m->monster_348() != 4 && m->monster_348() != 3 && sub_08072D84(m, 0x3a) != true &&
           sub_08072D84(m, 0x12) != true;
}

extern "C" NAKED void SaltwaterGun_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._12SaltwaterGun\n\
	_._12SaltwaterGun:\n\
	push {lr}\n\
	ldr r2, _080C0044 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080C0044: .4byte _vt.12DefaultGoods");
}

bool NewYearsEveBomb::hasDim() const {
    if (_50 == true) {
        return false;
    }
    return Goods::hasDim();
}

u16 NewYearsEveBomb::animNo() const {
    if (_50 == true) {
        return 0;
    }
    return Goods::animNo();
}

void NewYearsEveBomb::calcHit(Unit* target) {
    if (target->getElementWeakness(4) < 1) {
        hitPlayer(target, 1, 1);
    } else {
        hitPlayer(target, target->hpReal() - 1, 1);
    }
}

void NewYearsEveBomb::tellResisted(Unit* target) {}

bool NewYearsEveBomb::isResisted(Unit* target) {
    return _50;
}

void NewYearsEveBomb::tellUseMessage() {
    if ((u8)getType() != 1) {
        Action::tellUseMessage();
    }

    if (_50 == true) {
        createMsg(0x178).print(PrintSettings(0, 0, 0), 1);
    }
}

bool NewYearsEveBomb::nye_4() {
    for (int i = 0; i < numTargets(); i++) {
        Unit* t = getTarget(i);
        if (typeIsMonster(t) == true) {
            switch (t->id()) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 0xb:
            case 0xc:
            case 0xd:
            case 0xe:
            case 0xf:
            case 0x10:
            case 0x11:
            case 0x13:
            case 0x16:
            case 0x18:
            case 0x1a:
            case 0x1b:
            case 0x1c:
            case 0x2e:
            case 0x54:
            case 0x5c:
            case 0x65:
            case 0x7c:
            case 0x7d:
            case 0x8e:
            case 0x91:
            case 0xa2:
            case 0xa9:
            case 0xae:
            case 0xb4:
            case 0xb5:
            case 0xbb:
            case 0xbc:
            case 0xbd:
            case 0xbe:
                return true;
            }
        }
    }
    return false;
}

void NewYearsEveBomb::action_70() {
    Action::action_70();
    _50 = nye_1();
}

extern "C" NAKED void NewYearsEveBomb_dt() {
    asm_unified("\n\
    .thumb_func\n\
    .global _._15NewYearsEveBomb\n\
	_._15NewYearsEveBomb:\n\
	push {lr}\n\
	ldr r2, _080C0500 @ =_vt.12DefaultGoods\n\
	str r2, [r0, #0x1c]\n\
	bl _._5Goods\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_080C0500: .4byte _vt.12DefaultGoods");
}

bool DefaultGoods::dg_3() {
    if (goods_2b0() == 4 && numTargets() > 0) {
        if (getTarget(0)->hasStatus(Status::Nauseous) == true) {
            return true;
        }
    }
    return false;
}
