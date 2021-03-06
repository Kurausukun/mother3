#include "battle/guest.h"
#include "battle.h"
#include "battle/unitTarget.h"

extern "C" void* get_misctext_msg(u32, u16);
extern "C" u16 get_misctext_len(u32);
// extern "C" void genMisctextMsg(Base*, u32, u32);
extern "C" Msg genMisctextMsg(void*, u32);

extern ClockData gUnknown_080F6D8C;
extern ClockData gUnknown_080F6D94;

void battle_end_callback(Guest* g) {
    g->clearNullOutgoing();
}

RTTI_IMPL(Guest);

Msg getName(u32 idx) {
    return Msg::genMisctextMsg(get_misctext_msg(6, idx), get_misctext_len(6));
}

Guest::Guest(u16 id) : mID(id), mStats(&gCharStats[id]), mLevelInfo(&gLevelStatTable[id]) {
    setupStats();

    listen(BattleManager::get(), RoundBegin(), gUnknown_080F6D8C);
    listen(BattleManager::get(), RoundEnd(), gUnknown_080F6D94);
}

void Guest::setupStats() {
    setMaxHP(mStats->maxHP);
    setHP(mStats->curHP);
    setMaxPP(mStats->maxPP);
    setPP(mStats->curPP);
    setOffense(mStats->offense);
    setDefense(mStats->defense);
    setIQ(mStats->iq);
    setSpeed(mStats->speed);
    setKindness(mStats->_2c);
}

Guest::~Guest() {}

u8 Guest::onTurn() {
    if (Unit::onTurn() != 1) {
        return false;
    }

    Action* tmp = guest_2c0();
    if (tmp == 0) {
        return false;
    }

    if (guest_2c8(tmp) != 1) {
        delete tmp;
        return false;
    }

    bool result = onAction(tmp);
    delete tmp;
    return result;
}

Action* Guest::guest_2c0() {
    return NULL;
}

bool Guest::guest_2e8(Action* action) {
    UnitTarget target(action->target(), action->getUser());
    u32 unk = target.attackdata_c8();
    for (int i = 0; i < target.attackdata_110(); ++i) {
        action->addTarget(target.attackdata_118(i));
    }
    return unk == 0;
}

u16 Guest::unit_178() {
    return 0;
}

u16 Guest::id() const {
    return mID;
}

Msg Guest::name() const {
    return getName(mID);
}

s32 Guest::level() const {
    return mStats->level;
}

u16 Guest::attackSfx() {
    return 0;
}

u16 Guest::critSfx() {
    return 0;
}

u16 Guest::missSfx() {
    return 0;
}

void guest_callback1(Guest* p) {
    p->onRoundBegin();
}

void Guest::onRoundBegin() {}

void guest_callback2(Guest* p) {
    p->onRoundEnd();
}

void Guest::onRoundEnd() {}
