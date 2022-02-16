#include "battle/guest.h"
#include "battle.h"
#include "battle/unitTarget.h"

extern "C" u32 sub_08001C5C(u32, u16);
extern "C" u16 sub_08001DB0(u32);
extern "C" void sub_0806E238(Base*, u32, u32);

extern ClockData gUnknown_080F6D8C;
extern ClockData gUnknown_080F6D94;

void battle_end_callback(Guest* g) {
    g->base_64();
}

SINGLETON_IMPL(Guest);

Base* sub_08061E20(Base* b, u32 c) {
    sub_0806E238(b, sub_08001C5C(6, c), sub_08001DB0(6));
    return b;
}

Guest::Guest(u16 id) : _f8(id), mStats(&gGuestStats[id]), mLevelInfo(&gLevelInfo[id]) {
    setupStats();

    registerClock(BattleSingleton::get(), RoundBegin(), gUnknown_080F6D8C);
    registerClock(BattleSingleton::get(), RoundEnd(), gUnknown_080F6D94);
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
    UnitTarget target(skill->getAttackMult(), skill->skill_168());
    u32 unk = target.attackdata_c8();
    for (int i = 0; i < target.attackdata_110(); ++i) {
        skill->skill_170(target.attackdata_118(i));
    }
    return unk == 0;
}

bool Guest::unit_178() {
    return false;
}

u32 Guest::unit_180() {
    return _f8;
}

Unit* Guest::unit_188(Unit* u) {
    sub_08061E20(this, static_cast<Guest*>(u)->_f8);
    return this;
}

s32 Guest::getLevel() const {
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
    p->guest_2d0();
}

void Guest::guest_2d0() {}

void guest_callback2(Guest* p) {
    p->guest_2d8();
}

void Guest::guest_2d8() {}
