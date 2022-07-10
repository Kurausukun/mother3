#include "battle/monster.h"
#include "battle/monsterSkill.h"
#include "battle.h"
#include "battle/unitTarget.h"

RTTI_IMPL(Monster);

extern "C" void* get_misctext_msg(u32, u32);
extern "C" u16 get_misctext_len(u32);

extern MonsterData gMonsterData[];

extern ClockData gUnknown_0810B278;
extern ClockData gUnknown_0810B280;

static inline s32 maxdrops() { return 3; }

extern "C" Msg get_monster_name(u16 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(7, idx), get_misctext_len(7));
}

Monster::Monster(u16 idx, u16 id) : mNumDrops(0) {
    mIdx = idx;
    mID = id;
    mData = &gMonsterData[id];
    mDeathAnim = gMonsterData[id].death_anim;
    mSurpriseState = 0;
    mHPCopy = mData->hp;
    _130 = 0;

    resetStats();
    resetRewards();
    genDeathMsg();
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

    setOffense(mData->stats[mSurpriseState].offense);
    setDefense(mData->stats[mSurpriseState].defense);
    setIQ(mData->stats[mSurpriseState].iq);
    setSpeed(mData->stats[mSurpriseState].speed);
    setKindness(mData->stats[mSurpriseState].kindness);

    for (int i = 0; i < 5; i++) {
        setElementWeakness(i, mData->elem_weaknesses[i]);
    }
    for (int i = 0; i < 15; i++) {
        setStatusWeakness(i + 1, mData->weaknesses[i]);
    }
}

void Monster::resetRewards() {
    mExperience = mData->experience;
    for (int i = 0; i < maxdrops(); i++) {
        if (mData->drops[i].id != 0) {
            addDrop(mData->drops[i].id, mData->drops[i].chance);
        }
    }
    mMoney = mData->money;
}

void Monster::genDeathMsg() {
    mDeathMsg.replace(ROMStrFmt(mData->death_msg, name(), Msg(), Msg()));
}

Monster::~Monster() {
    delete mSprite;
}

u8 Monster::unit_d0() {
    if (Unit::unit_d0() != 1) {
        return false;
    }

    Action* tmp = monster_2c0();
    if (tmp == 0) {
        return false;
    }

    if (monster_2c8(tmp) != 1) {
        delete tmp;
        return false;
    }

    bool result = unit_70(tmp);
    delete tmp;
    return result;
}

Action* Monster::monster_2c0() {
    return NULL;
}

bool Monster::monster_2c8(Action* action) {
    UnitTarget target(action->target(), action->getUser());
    u32 unk = target.attackdata_c8();
    for (int i = 0; i < target.attackdata_110(); ++i) {
        action->addTarget(target.attackdata_118(i));
    }
    return unk == 0;
}

void Monster::sub_08080F54() {
    if (battleWon() == true) {
        playSeq(deathSeq(), this, this);
    }
    object_8(0);
    if (battleWon() == true) {
        mDeathMsg.print(Color(), true);
    }
    Unit::kill();
}

u32 Monster::scaledExperience() {
    return experience();
}

u32 Monster::monster_2e8() {
    int a = 100;
    int ret = 0;
    for (int i = 0; i < numDrops(); i++) {
        s32 tmp = getDropChance(i);
        if (tmp <= a && randS32(0, 99) < tmp) {
            a = tmp;
            ret = getDropID(i);
        }
    }
    return ret;
}

u32 Monster::monster_2f0() {
    return money();
}

ASM_FUNC("asm/non_matching/monster/sub_08081084.inc", void Monster::monster_2f8());

ASM_FUNC("asm/non_matching/monster/sub_0808110C.inc", void Monster::monster_300(s32 a));

void Monster::setHP(s32 value) {
    if (sub_080726B8() == true) {
        value = clampS32(1, value, 1);
    }
    Unit::setHP(value);
}

void Monster::monster_308(const Msg& m) {
    mDeathMsg.replace(m);
}

void Monster::setDeathAnim(s32 a1) {
    mDeathAnim = a1;
}

void Monster::setExperience(s32 value) {
    mExperience = value;
}

void Monster::setMoney(s32 value) {
    mMoney = value;
}

u16 Monster::unit_178() {
    return mIdx;
}

u16 Monster::id() const {
    return mID;
}

Msg Monster::name() const {
    return get_monster_name(mID);
}

Msg Monster::fmtEncounterMsg() {
    return ROMStrFmt(mData->encounter_msg, name(), Msg(), Msg());
}

Msg Monster::deathMsg() {
    return mDeathMsg; // note: copy constructor called
}

u32 Monster::deathSeq() {
    return mDeathAnim;
}

u32 Monster::type() {
    return mData->smell;
}

struct_08063998 Monster::monster_328() {
    return _134;
}

u32 Monster::surprised() {
    return mSurpriseState;
}

s32 Monster::numSkills() {
    u32 ret;
    int i;
    for (ret = 0, i = 0; i < 8; i++) {
        if (mData->skills[i])
            ret++;
        else
            break;
    }
    return ret;
}

u16 Monster::getSkill(s32 idx) {
    return mData->skills[idx];
}

u16 Monster::attackSfx() {
    return mData->sfx_base;
}

u16 Monster::critSfx() {
    return mData->sfx_base + 1;
}

u16 Monster::missSfx() {
    return mData->sfx_base + 2;
}

u16 Monster::numWeaknesses() const {
    return 2;
}

u16 Monster::getWeakness(s32 idx) const {
    return mData->smell_weaknesses[idx];
}

s32 Monster::battlePos() const {
    return mData->battle_pos;
}

bool Monster::hasBackSprite() const {
    if (IsBossBattle() == true) {
        return false;
    }
    if (mData->battle_back_sprite == true) {
        return true;
    }
    return false;
}

bool Monster::isFadeOnDeath() const {
    if (IsBossBattle() == true) {
        return false;
    }
    if (mData->death_anim_last == true) {
        return true;
    }
    return false;
}

u32 Monster::experience() const {
    return mExperience;
}

u32 Monster::money() const {
    return mMoney;
}

ASM_FUNC("asm/non_matching/monster/addDrop.inc", bool Monster::addDrop(u16 id, u32 chance));

ASM_FUNC("asm/non_matching/monster/sub_080816FC.inc", bool Monster::monster_3a8(u16 a1));

s32 Monster::numDrops() const {
    return mNumDrops;
}

u16 Monster::getDropID(s32 idx) const {
    Monster::Drop d = mDrops[idx];
    return d.id;
}

s32 Monster::getDropChance(s32 idx) const {
    Monster::Drop d = mDrops[idx];
    return d.chance;
}

extern "C" void sub_08081790(Monster* m) {
    m->onRoundBegin();
}

void Monster::onRoundBegin() {}

extern "C" void sub_080817B0(Monster* m) {
    m->onRoundEnd();
}

void Monster::onRoundEnd() {}

void Monster::sub_080817D0(u16 id) {
    mID = id;
    mData = &gMonsterData[id];
    mSurpriseState = 0;
    setHP(mData->hp);
    setMaxHP(mData->hp);
    setPP(mData->pp);
    setMaxPP(mData->pp);
    setOffense(mData->stats[mSurpriseState].offense);
    setDefense(mData->stats[mSurpriseState].defense);
    setIQ(mData->stats[mSurpriseState].iq);
    setSpeed(mData->stats[mSurpriseState].speed);
    setKindness(mData->stats[mSurpriseState].kindness);

    BattleSprite::X t = mSprite->battlesprite_c0();
    u32 t2 = mSprite->battlesprite_c8();
    delete mSprite;
    mSprite = new BattleSprite(this);
    mSprite->battlesprite_88(t);
    mSprite->battlesprite_90(t2);
}
