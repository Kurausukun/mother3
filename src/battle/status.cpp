#include "battle/status.h"
#include "base.h"
#include "battle.h"
#include "battle/unit.h"

bool statusWearOff(Unit*, Status::Type, bool);

extern ClockData callback_status_roundBeginCallback__FP6Status;
extern ClockData callback_status_unitTurnBeginCallback__FP6StatusR13UnitTurnBegin;
extern ClockData callback_status_unitTurnEndCallback__FP6StatusR11UnitTurnEnd;
extern ClockData callback_status_roundEndCallback__FP6Status;

Msg tellStatus(u16 arg1) {
    return ROMStrFmt((u16)(arg1 + 0x3F), Msg(), Msg(), Msg());
}

Status::Status(u16 type, Unit* unit) {
    mData = &gStatusData[type];
    mUnit = unit;
    mRoundLimit = 0;
    mRounds = 0;
    mTurnLimit = mData->turn_limit;
    mTurns = 0;

    listen(BattleManager::get(), RoundBegin(), callback_status_roundBeginCallback__FP6Status);
    listen(BattleManager::get(), UnitTurnBegin(), callback_status_unitTurnBeginCallback__FP6StatusR13UnitTurnBegin);
    listen(BattleManager::get(), UnitTurnEnd(), callback_status_unitTurnEndCallback__FP6StatusR11UnitTurnEnd);
    listen(BattleManager::get(), RoundEnd(), callback_status_roundEndCallback__FP6Status);
}

Status::~Status() {}

bool Status::status_90() {
    return false;
}

bool Status::status_98() {
    return false;
}

bool Status::status_a0() {
    return false;
}

bool Status::disableAllStatuses() {
    return false;
}

bool Status::status_b0() {
    return true;
}

void Status::cleanup() {}

void Status::setRoundLimit(u16 rounds) {
    mRoundLimit = rounds;
}

void Status::setRounds(u16 rounds) {
    mRounds = rounds;
}

void Status::setTurnLimit(u16 turns) {
    mTurnLimit = turns;
}

void Status::setTurns(u16 turns) {
    mTurns = turns;
}

Status::Type Status::type() const {
    return mData->type;
}

Unit* Status::unit() const {
    return mUnit;
}

Msg Status::name() const {
    return tellStatus(type());
}

s32 Status::roundLimit() {
    return mRoundLimit;
}

s32 Status::turnLimit() {
    return mTurnLimit;
}

s32 Status::rounds() {
    return mRounds;
}

s32 Status::turns() {
    return mTurns;
}

u16 Status::status_data_2() {
    return mData->_2;
}

Msg Status::inflictedMsg() {
    if (unit()->getStatusTypeCount(type()) <= 1) {
        return fmtStatusMsg(5 * type() + 0x50D);
    } else {
        return fmtStatusMsg(5 * type() + 0x511);
    }
}

Msg Status::activeMsg() {
    return fmtStatusMsg(5 * type() + 0x50E);
}

Msg Status::woreOffMsg() {
    if (unit()->getStatusTypeCount(type()) <= 1) {
        return fmtStatusMsg(5 * type() + 0x510);
    } else {
        return fmtStatusMsg(5 * type() + 0x50F);
    }
}

bool Status::removeOnDeath() {
    return mData->remove_on_death == 1;
}

bool Status::status_bool_5() {
    return mData->_5 == 1;
}

Msg Status::fmtStatusMsg(u16 idx) {
    return ROMStrFmt(idx, name(), unit()->name(), Msg());
}

void status_roundBeginCallback(Status* s) {
    s->onRoundBegin();
}

bool Status::onRoundBegin() {
    mRounds++;
    if (roundLimit() > 0) {
        if ((s16)mRounds >= roundLimit()) {
            statusWearOff(unit(), type(), 1);
            return false;
        }
    }
    return true;
}

void status_unitTurnBeginCallback(Status* s, UnitTurnBegin& e) {
    s->onUnitTurnBegin(e.unit());
}

bool Status::onUnitTurnBegin(Unit* u) {
    if (u == unit()) {
        if (turnLimit() > 0) {
            if ((s16)mTurns >= turnLimit()) {
                statusWearOff(unit(), type(), 1);
                return false;
            }
        }
        mTurns++;
    }
    return true;
}

void status_unitTurnEndCallback(Status* s, UnitTurnEnd& e) {
    s->onUnitTurnEnd(e.unit());
}

void Status::onUnitTurnEnd(Unit* unit) {}

void status_roundEndCallback(Status* s) {
    s->onRoundEnd();
}

void Status::onRoundEnd() {}