#include "battle/goodsImpl.h"
#include "battle/unit.h"
#include "global.h"

extern void* (*sGoodsSpawners[])(u16 id, Unit* user, u16 a2);

void GoodsFactory::init() {
    for (u32 i = 0; i < 0x100; i++) {
        put(i, DefaultGoodsFactory::create);
    }
    put(0x9C, NewYearsEveBombFactory::create);
    put(0xA1, SaltwaterGunFactory::create);
    put(0x9D, HoneyShowerFactory::create);
    put(0x9E, AncientBananaFactory::create);
    put(0xA0, BugSprayFactory::create);
    put(0xA6, AttackAttractorFactory::create);
    put(0x69, PeculiarCheeseFactory::create);
    put(0x72, DoggyFoodFactory::create);
    put(0x73, DoggyFoodFactory::create);
    put(0x7A, LottoMealFactory::create);
    put(0xA4, EnemyBufferizerFactory::create);
    put(0xA5, EnemyWimperizerFactory::create);
    put(0xA7, MadeYouLookFactory::create);
    put(0x8F, PaperFanFactory::create);
    put(0x93, SecretHerbFactory::create);
    put(0x94, CupOfLifenoodlesFactory::create);
    put(0xCD, ShieldSnatcherFactory::create);
    put(0xAF, DragoFangFactory::create);
    put(0xD2, TriviaCard1Factory::create);
    put(0xD3, TriviaCard2Factory::create);
    put(0xD4, TriviaCard3Factory::create);
    put(0xD5, TriviaCard4Factory::create);
}

void GoodsFactory::put(u16 id, void* (*spawn)(u16 id, Unit* user, u16 a2)) {
    sGoodsSpawners[id] = spawn;
}

void* GoodsFactory::create(u16 id, Unit* user, u16 a2) {
    return sGoodsSpawners[id](id, user, a2);
}