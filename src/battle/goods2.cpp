#include "battle/goodsImpl.h"

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
    return new TriviaCard4(id, user, r2);
}

void* sub_080BDB00(u16 id, Unit* user, u16 r2) {
    return new TriviaCard3(id, user, r2);
}

void* sub_080BDB28(u16 id, Unit* user, u16 r2) {
    return new TriviaCard2(id, user, r2);
}

void* sub_080BDB50(u16 id, Unit* user, u16 r2) {
    return new TriviaCard1(id, user, r2);
}

void* sub_080BDB78(u16 id, Unit* user, u16 r2) {
    return new DragoFang(id, user, r2);
}

void* sub_080BDBA0(u16 id, Unit* user, u16 r2) {
    return new ShieldSnatcher(id, user, r2);
}

void* sub_080BDBC8(u16 id, Unit* user, u16 r2) {
    return new CupOfLifenoodles(id, user, r2);
}

void* sub_080BDBF0(u16 id, Unit* user, u16 r2) {
    return new SecretHerb(id, user, r2);
}

void* sub_080BDC18(u16 id, Unit* user, u16 r2) {
    return new PaperFan(id, user, r2);
}

void* sub_080BDC40(u16 id, Unit* user, u16 r2) {
    return new MadeYouLook(id, user, r2);
}

void* sub_080BDC68(u16 id, Unit* user, u16 r2) {
    return new AttackAttractor(id, user, r2);
}

void* sub_080BDC90(u16 id, Unit* user, u16 r2) {
    return new EnemyWimperizer(id, user, r2);
}

void* sub_080BDCB8(u16 id, Unit* user, u16 r2) {
    return new EnemyBufferizer(id, user, r2);
}

void* sub_080BDCE0(u16 id, Unit* user, u16 r2) {
    return new LottoMeal(id, user, r2);
}

void* sub_080BDD08(u16 id, Unit* user, u16 r2) {
    return new DoggyFood(id, user, r2);
}

void* sub_080BDD30(u16 id, Unit* user, u16 r2) {
    return new PeculiarCheese(id, user, r2);
}

void* sub_080BDD58(u16 id, Unit* user, u16 r2) {
    return new BugSpray(id, user, r2);
}

void* sub_080BDD80(u16 id, Unit* user, u16 r2) {
    return new AncientBanana(id, user, r2);
}

void* sub_080BDDA8(u16 id, Unit* user, u16 r2) {
    return new HoneyShower(id, user, r2);
}

void* sub_080BDDD0(u16 id, Unit* user, u16 r2) {
    return new SaltwaterGun(id, user, r2);
}

void* sub_080BDDF8(u16 id, Unit* user, u16 r2) {
    return new NewYearsEveBomb(id, user, r2);
}

void* MakeInstance__H1Z12DefaultGoods_UsP4UnitUs_PX01(u16 id, Unit* user, u16 r2) {
    return new DefaultGoods(id, (void*)user, r2);
}
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
