#include "global.h"
#include "battle/goods.h"

class TriviaCard4 : public Goods {
public:
    TriviaCard4(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard4();
};

class TriviaCard3 : public Goods {
public:
    TriviaCard3(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard3();
};

class TriviaCard2 : public Goods {
public:
    TriviaCard2(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard2();
};

class TriviaCard1 : public Goods {
public:
    TriviaCard1(u16 id, Unit* user, u16 a3);
    virtual ~TriviaCard1();
};

class DragoFang : public Goods {
public:
    DragoFang(u16 id, Unit* user, u16 a3);
    virtual ~DragoFang();
};

class ShieldSnatcher : public Goods {
public:
    ShieldSnatcher(u16 id, Unit* user, u16 a3);
    virtual ~ShieldSnatcher();
};

class CupOfLifenoodles : public Goods {
public:
    CupOfLifenoodles(u16 id, Unit* user, u16 a3);
    virtual ~CupOfLifenoodles();
};

class SecretHerb : public Goods {
public:
    SecretHerb(u16 id, Unit* user, u16 a3);
    virtual ~SecretHerb();
};

class PaperFan : public Goods {
public:
    PaperFan(u16 id, Unit* user, u16 a3);
    virtual ~PaperFan();
};

class MadeYouLook : public Goods {
public:
    MadeYouLook(u16 id, Unit* user, u16 a3);
    virtual ~MadeYouLook();
};

class AttackAttractor : public Goods {
public:
    AttackAttractor(u16 id, Unit* user, u16 a3);
    virtual ~AttackAttractor();
};

class EnemyWimperizer : public Goods {
public:
    EnemyWimperizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyWimperizer();
};

class EnemyBufferizer : public Goods {
public:
    EnemyBufferizer(u16 id, Unit* user, u16 a3);
    virtual ~EnemyBufferizer();
};

class LottoMeal : public Goods {
public:
    LottoMeal(u16 id, Unit* user, u16 a3);
    virtual ~LottoMeal();
};

class DoggyFood : public Goods {
public:
    DoggyFood(u16 id, Unit* user, u16 a3);
    virtual ~DoggyFood();
};

class PeculiarCheese : public Goods {
public:
    PeculiarCheese(u16 id, Unit* user, u16 a3);
    virtual ~PeculiarCheese();
};

class BugSpray : public Goods {
public:
    BugSpray(u16 id, Unit* user, u16 a3);
    virtual ~BugSpray();
};

class AncientBanana : public Goods {
public:
    AncientBanana(u16 id, Unit* user, u16 a3);
    virtual ~AncientBanana();
};

class HoneyShower : public Goods {
public:
    HoneyShower(u16 id, Unit* user, u16 a3);
    virtual ~HoneyShower();
};

class SaltwaterGun : public Goods {
public:
    SaltwaterGun(u16 id, Unit* user, u16 a3);
    virtual ~SaltwaterGun();

    u16 _50;
};

class NewYearsEveBomb : public Goods {
public:
    NewYearsEveBomb(u16 id, Unit* user, u16 a3);
    virtual ~NewYearsEveBomb();

    u8 _50;
};

class DefaultGoods : public Goods {
public:
    DefaultGoods(u16 id, Unit* user, u16 a3);
    virtual ~DefaultGoods();
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
