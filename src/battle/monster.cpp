#include "battle/monster.h"
#include "battle.h"

extern "C" void* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);

extern MonsterData gMonsterData[];

struct BattleSprite : public Base {
    BattleSprite(void*);
    virtual ~BattleSprite();

    u8 filler[0xa8];
};

extern ClockData gUnknown_0810B278;
extern ClockData gUnknown_0810B280;

extern "C" Msg sub_080809F8(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(7, idx), get_misctext_len(7));
}

Monster::Monster(u16 a, u16 b) : _11c(0) {
    _f8 = a;
    mID = b;
    mData = &gMonsterData[b];
    _114 = gMonsterData[b].death_anim;
    _100 = 0;
    _104 = mData->hp;
    _130 = 0;

    sub_08080B60();
    sub_08080CE4();
    sub_08080D48();
    _13c = new BattleSprite(this);

    listen(BattleManager::get(), RoundBegin(), gUnknown_0810B278);
    listen(BattleManager::get(), RoundEnd(), gUnknown_0810B280);
}
