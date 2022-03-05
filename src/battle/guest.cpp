#include "battle/guest.h"
#include "battle.h"
#include "battle/unitTarget.h"

extern "C" u32 get_misctext_msg(u32, u16);
extern "C" u16 get_misctext_len(u32);
extern "C" void __3MsgPvUi(Base*, u32, u32);

extern ClockData gUnknown_080F6D8C;
extern ClockData gUnknown_080F6D94;

void battle_end_callback(Guest* g) {
    g->clearNullOutgoing();
}

SINGLETON_IMPL(Guest);

Base* getName(Base* b, u32 idx) {
    __3MsgPvUi(b, get_misctext_msg(6, idx), get_misctext_len(6));
    return b;
}

Guest::Guest(u16 id) : mID(id), mStats(&gCharStats[id]), mLevelInfo(&gLevelStatTable[id]) {
    setupStats();

    listen(BattleSingleton::get(), RoundBegin(), gUnknown_080F6D8C);
    listen(BattleSingleton::get(), RoundEnd(), gUnknown_080F6D94);
}

void Guest::setupStats() {
    setMaxHP(mStats->maxHP);
    setHP(mStats->curHP);
    setMaxPP(mStats->maxPP);
    setPP(mStats->curPP);
    setIQ(mStats->iq);
    setSpeed(mStats->speed);
    unit_148(mStats->_2c);
    unit_150(mStats->_2d);
    unit_158(mStats->_2e);
}

Guest::~Guest() {}

u8 Guest::unit_d0() {
    if (Unit::unit_d0() != 1) {
        return false;
    }

    Unit* tmp = guest_2c0();
    if (tmp == 0) {
        return false;
    }

    if (guest_2c8(tmp) != 1) {
        delete tmp;
        return false;
    }

    u8 result = unit_70(tmp);
    delete tmp;
    return result;
}

Unit* Guest::guest_2c0() {
    return NULL;
}

bool Guest::guest_2e8(Skill* skill) {
    UnitTarget target(skill->attackMult(), skill->getUser());
    u32 unk = target.attackdata_c8();
    for (int i = 0; i < target.attackdata_110(); ++i) {
        skill->skill_170(target.attackdata_118(i));
    }
    return unk == 0;
}

bool Guest::unit_178() {
    return false;
}

u32 Guest::id() {
    return mID;
}

Unit* Guest::name(Unit* u) {
    getName(this, static_cast<Guest*>(u)->mID);
    return this;
}

s32 Guest::level() const {
    return mStats->level;
}

bool Guest::unit_208() {
    return false;
}

bool Guest::unit_210() {
    return false;
}

bool Guest::unit_218() {
    return false;
}

void guest_callback1(Guest* p) {
    p->onRoundBegin();
}

void Guest::onRoundBegin() {}

void guest_callback2(Guest* p) {
    p->onRoundEnd();
}

void Guest::onRoundEnd() {}
