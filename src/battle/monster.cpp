#include "battle/monster.h"
#include "battle.h"

extern "C" void* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);

extern MonsterData gMonsterData[];

extern ClockData gUnknown_0810B278;
extern ClockData gUnknown_0810B280;

extern "C" Msg sub_080809F8(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(7, idx), get_misctext_len(7));
}

Monster::Monster(u16 idx, u16 id) : _11c(0) {
    mIdx = idx;
    mID = id;
    mData = &gMonsterData[id];
    mDeathAnim = gMonsterData[id].death_anim;
    mUseAltStats = 0;
    mHPCopy = mData->hp;
    _130 = 0;

    resetStats();
    resetRewards();
    sub_08080D48();
    mSprite = new BattleSprite(this);

    listen(BattleManager::get(), RoundBegin(), gUnknown_0810B278);
    listen(BattleManager::get(), RoundEnd(), gUnknown_0810B280);
}

void Monster::resetStats() {
    setLevel(mData->level);
    setMaxHP(mData->hp);
    setHP(mData->hp);
    setMaxPP(mData->pp);
    setPP(mData->pp);

    setOffense(mData->stats[mUseAltStats].offense);
    setDefense(mData->stats[mUseAltStats].defense);
    setIQ(mData->stats[mUseAltStats].iq);
    setSpeed(mData->stats[mUseAltStats].speed);
    setKindness(mData->stats[mUseAltStats].kindness);

    for (int i = 0; i < 5; i++) {
        setElementWeakness(i, mData->elem_weaknesses[i]);
    }
    for (int i = 0; i < 15; i++) {
        setStatusWeakness(i + 1, mData->weaknesses[i]);
    }
}

void Monster::resetRewards() {
    mExperience = mData->experience;
    for (int i = 0; i < maxDrops(); i++) {
        if (mData->drops[i].id != 0) {
            addDrop(mData->drops[i].id, mData->drops[i].chance);
        }
    }
    mMoney = mData->money;
}
