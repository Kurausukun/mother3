#include "battle/goodsImpl.h"
#include "battle/unit.h"
#include "global.h"

extern void* (*sGoodsSpawners[])(u16 id, Unit* user, u16 a2);

void GoodsFactory::init() {
    for (u32 i = 0; i < 0x100; i++) {
        put(i, DefaultGoodsFactory::create);
    }

    put(ItemNewYearsEveBomb, NewYearsEveBombFactory::create);
    put(ItemSaltwaterGun, SaltwaterGunFactory::create);
    put(ItemHoneyShower, HoneyShowerFactory::create);
    put(ItemAncientBanana, AncientBananaFactory::create);
    put(ItemBugSpray, BugSprayFactory::create);
    put(ItemAttackAttractor, AttackAttractorFactory::create);
    put(ItemPeculiarCheese, PeculiarCheeseFactory::create);
    put(ItemDoggyBiscuit, DoggyFoodFactory::create);
    put(ItemDoggyJerky, DoggyFoodFactory::create);
    put(ItemLottoMeal, LottoMealFactory::create);
    put(ItemEnemyBufferizer, EnemyBufferizerFactory::create);
    put(ItemEnemyWimperizer, EnemyWimperizerFactory::create);
    put(ItemMadeYouLook, MadeYouLookFactory::create);
    put(ItemPaperFan, PaperFanFactory::create);
    put(ItemSecretHerb, SecretHerbFactory::create);
    put(ItemCupOfLifenoodles, CupOfLifenoodlesFactory::create);
    put(ItemShieldSnatcher, ShieldSnatcherFactory::create);
    put(ItemDragoFang, DragoFangFactory::create);
    put(ItemTriviaCard1, TriviaCard1Factory::create);
    put(ItemTriviaCard2, TriviaCard2Factory::create);
    put(ItemTriviaCard3, TriviaCard3Factory::create);
    put(ItemTriviaCard4, TriviaCard4Factory::create);
}

void GoodsFactory::put(u16 id, void* (*spawn)(u16 id, Unit* user, u16 a2)) {
    sGoodsSpawners[id] = spawn;
}

void* GoodsFactory::create(u16 id, Unit* user, u16 a2) {
    return sGoodsSpawners[id](id, user, a2);
}