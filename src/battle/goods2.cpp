#include "battle/goodsImpl.h"

extern "C" {

void* __5Goods();
void* __builtin_new(u32);

void* init__9GoodsRTTI() {
    __builtin_new(0x50);
    return __5Goods();
}

extern const char const_classname_Goods[];  // "Goods"
const char* getName__9GoodsRTTI() {
    return const_classname_Goods;
}
}

void* TriviaCard4Factory::create(u16 id, Unit* user, u16 r2) {
    return new TriviaCard4(id, user, r2);
}

void* TriviaCard3Factory::create(u16 id, Unit* user, u16 r2) {
    return new TriviaCard3(id, user, r2);
}

void* TriviaCard2Factory::create(u16 id, Unit* user, u16 r2) {
    return new TriviaCard2(id, user, r2);
}

void* TriviaCard1Factory::create(u16 id, Unit* user, u16 r2) {
    return new TriviaCard1(id, user, r2);
}

void* DragoFangFactory::create(u16 id, Unit* user, u16 r2) {
    return new DragoFang(id, user, r2);
}

void* ShieldSnatcherFactory::create(u16 id, Unit* user, u16 r2) {
    return new ShieldSnatcher(id, user, r2);
}

void* CupOfLifenoodlesFactory::create(u16 id, Unit* user, u16 r2) {
    return new CupOfLifenoodles(id, user, r2);
}

void* SecretHerbFactory::create(u16 id, Unit* user, u16 r2) {
    return new SecretHerb(id, user, r2);
}

void* PaperFanFactory::create(u16 id, Unit* user, u16 r2) {
    return new PaperFan(id, user, r2);
}

void* MadeYouLookFactory::create(u16 id, Unit* user, u16 r2) {
    return new MadeYouLook(id, user, r2);
}

void* AttackAttractorFactory::create(u16 id, Unit* user, u16 r2) {
    return new AttackAttractor(id, user, r2);
}

void* EnemyWimperizerFactory::create(u16 id, Unit* user, u16 r2) {
    return new EnemyWimperizer(id, user, r2);
}

void* EnemyBufferizerFactory::create(u16 id, Unit* user, u16 r2) {
    return new EnemyBufferizer(id, user, r2);
}

void* LottoMealFactory::create(u16 id, Unit* user, u16 r2) {
    return new LottoMeal(id, user, r2);
}

void* DoggyFoodFactory::create(u16 id, Unit* user, u16 r2) {
    return new DoggyFood(id, user, r2);
}

void* PeculiarCheeseFactory::create(u16 id, Unit* user, u16 r2) {
    return new PeculiarCheese(id, user, r2);
}

void* BugSprayFactory::create(u16 id, Unit* user, u16 r2) {
    return new BugSpray(id, user, r2);
}

void* AncientBananaFactory::create(u16 id, Unit* user, u16 r2) {
    return new AncientBanana(id, user, r2);
}

void* HoneyShowerFactory::create(u16 id, Unit* user, u16 r2) {
    return new HoneyShower(id, user, r2);
}

void* SaltwaterGunFactory::create(u16 id, Unit* user, u16 r2) {
    return new SaltwaterGun(id, user, r2);
}

void* NewYearsEveBombFactory::create(u16 id, Unit* user, u16 r2) {
    return new NewYearsEveBomb(id, user, r2);
}

void* DefaultGoodsFactory::create(u16 id, Unit* user, u16 r2) {
    return new DefaultGoods(id, (void*)user, r2);
}

TriviaCard4::TriviaCard4(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
TriviaCard3::TriviaCard3(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
TriviaCard2::TriviaCard2(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
TriviaCard1::TriviaCard1(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
DragoFang::DragoFang(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
ShieldSnatcher::ShieldSnatcher(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
CupOfLifenoodles::CupOfLifenoodles(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
SecretHerb::SecretHerb(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
PaperFan::PaperFan(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
MadeYouLook::MadeYouLook(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
AttackAttractor::AttackAttractor(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
EnemyWimperizer::EnemyWimperizer(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
EnemyBufferizer::EnemyBufferizer(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
LottoMeal::LottoMeal(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
DoggyFood::DoggyFood(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
PeculiarCheese::PeculiarCheese(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
BugSpray::BugSpray(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
AncientBanana::AncientBanana(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
HoneyShower::HoneyShower(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3) {}
SaltwaterGun::SaltwaterGun(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3), _50(0x100) {}
NewYearsEveBomb::NewYearsEveBomb(u16 id, Unit* user, u16 a3) : DefaultGoods(id, user, a3), _50(0) {}
DefaultGoods::DefaultGoods(u16 id, void* user, u16 r2) : Goods(id, (Unit*)user, r2) {}
