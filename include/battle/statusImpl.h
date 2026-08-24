#ifndef BATTLE_STATUS_IMPL_H
#define BATTLE_STATUS_IMPL_H

#include "battle/status.h"
#include "unit.h"
#include "factory.h"

class StatusParamMod : public Status {
public:
    typedef u16 Type;

    StatusParamMod(u16 type, Unit* unit) : Status(type, unit) {
        mOffenseBase = this->unit()->offense();
        mDefenseBase = this->unit()->defense();
        mIQBase = this->unit()->iq();
        mSpeedBase = this->unit()->speed();
        mKindnessBase = this->unit()->kindness();
        mOffenseDelta = 0;
        mDefenseDelta = 0;
        mIQDelta = 0;
        mSpeedDelta = 0;
        mKindnessDelta = 0;
    }
    virtual ~StatusParamMod();
    virtual void cleanup();

    s32 mOffenseBase, mDefenseBase, mIQBase, mSpeedBase, mKindnessBase, mOffenseDelta, mDefenseDelta, mIQDelta, mSpeedDelta, mKindnessDelta;

    virtual s32 offenseMod();
    virtual s32 defenseMod();
    virtual s32 iqMod();
    virtual s32 speedMod();
    virtual s32 kindnessMod();
    virtual s32 offenseDelta();
    virtual s32 defenseDelta();
    virtual s32 iqDelta();
    virtual s32 speedDelta();
    virtual s32 kindnessDelta();
    virtual s32 offenseChange();
    virtual s32 defenseChange();
    virtual s32 iqChange();
    virtual s32 speedChange();
    virtual s32 kindnessChange();
    virtual bool _1c0(u16, u16);
    virtual bool _1c8(u16);
};


class StatusPoison : public Status {
public:
    typedef u16 Type;

    StatusPoison(u16 type, Unit* unit);
    virtual ~StatusPoison();
    virtual bool onUnitTurnBegin(Unit* unit);
    virtual bool disableAllStatuses();
};

class StatusNumb : public Status {
public:
    typedef u16 Type;

    StatusNumb(u16 type, Unit* unit);
    virtual ~StatusNumb();
    virtual bool disableAllStatuses();
};

class StatusSleep : public Status {
public:
    typedef u16 Type;

    StatusSleep(u16 type, Unit* unit);
    virtual ~StatusSleep();
    virtual void cleanup();
    virtual bool disableAllStatuses();
};

class StatusStrange : public Status {
public:
    typedef u16 Type;

    StatusStrange(u16 type, Unit* unit);
    virtual ~StatusStrange();
    virtual bool disableAllStatuses();
};

class StatusCrying : public StatusParamMod {
public:
    typedef u16 Type;

    StatusCrying(u16 type, Unit* unit);
    virtual ~StatusCrying();
    virtual bool disableAllStatuses();
};

class StatusForgetful : public Status {
public:
    typedef u16 Type;

    StatusForgetful(u16 type, Unit* unit);
    virtual ~StatusForgetful();
    virtual bool disableAllStatuses();
};

class StatusNauseous : public Status {
public:
    typedef u16 Type;

    StatusNauseous(u16 type, Unit* unit);
    virtual ~StatusNauseous();
    virtual bool disableAllStatuses();
};

class StatusFleas : public StatusParamMod {
public:
    typedef u16 Type;

    StatusFleas(u16 type, Unit* unit);
    virtual ~StatusFleas();
    virtual bool disableAllStatuses();
};

class StatusOnFire : public Status {
public:
    typedef u16 Type;

    StatusOnFire(u16 type, Unit* unit);
    virtual ~StatusOnFire();
    virtual bool onUnitTurnBegin(Unit* unit);
    virtual bool disableAllStatuses();
};

class StatusFrozen : public Status {
public:
    typedef u16 Type;

    StatusFrozen(u16 type, Unit* unit);
    virtual ~StatusFrozen();
    virtual bool disableAllStatuses();
};

class StatusSmelly : public Status {
public:
    typedef u16 Type;

    StatusSmelly(u16 type, Unit* unit);
    virtual ~StatusSmelly();
    virtual bool disableAllStatuses();
};

class StatusDCMC : public Status {
public:
    typedef u16 Type;

    StatusDCMC(u16 type, Unit* unit);
    virtual ~StatusDCMC();
    virtual bool disableAllStatuses();
};

class StatusStapled : public Status {
public:
    typedef u16 Type;

    StatusStapled(u16 type, Unit* unit);
    virtual ~StatusStapled();
    virtual bool disableAllStatuses();
};

class StatusApologetic : public Status {
public:
    typedef u16 Type;

    StatusApologetic(u16 type, Unit* unit);
    virtual ~StatusApologetic();
    virtual bool disableAllStatuses();
};

class StatusLaughing : public Status {
public:
    typedef u16 Type;

    StatusLaughing(u16 type, Unit* unit);
    virtual ~StatusLaughing();
    virtual bool disableAllStatuses();
};

class StatusDefend : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefend(u16 type, Unit* unit);
    virtual ~StatusDefend();
    virtual void cleanup();
    virtual bool disableAllStatuses();
};

class StatusNoExp : public Status {
public:
    typedef u16 Type;

    StatusNoExp(u16 type, Unit* unit);
    virtual ~StatusNoExp();
    virtual bool disableAllStatuses();
};

class StatusOffDownWeak : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffDownWeak(u16 type, Unit* unit);
    virtual ~StatusOffDownWeak();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
    virtual bool status_a0();
};

class StatusOffDownStrong : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffDownStrong(u16 type, Unit* unit);
    virtual ~StatusOffDownStrong();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
};

class StatusDefDownWeak : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefDownWeak(u16 type, Unit* unit);
    virtual ~StatusDefDownWeak();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusDefDownStrong : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefDownStrong(u16 type, Unit* unit);
    virtual ~StatusDefDownStrong();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool status_98();
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusShield : public Status {
public:
    typedef u16 Type;

    StatusShield(u16 type, Unit* unit);
    virtual ~StatusShield();
    virtual bool disableAllStatuses();
};

class StatusCounter : public Status {
public:
    typedef u16 Type;

    StatusCounter(u16 type, Unit* unit);
    virtual ~StatusCounter();
    virtual bool disableAllStatuses();
};

class StatusElectrocuted : public Status {
public:
    typedef u16 Type;

    StatusElectrocuted(u16 type, Unit* unit);
    virtual ~StatusElectrocuted();
    virtual bool disableAllStatuses();
};

class StatusPsiShield : public Status {
public:
    typedef u16 Type;

    StatusPsiShield(u16 type, Unit* unit);
    virtual ~StatusPsiShield();
    virtual bool disableAllStatuses();
};

class StatusPsiCounter : public Status {
public:
    typedef u16 Type;

    StatusPsiCounter(u16 type, Unit* unit);
    virtual ~StatusPsiCounter();
    virtual bool disableAllStatuses();
};

class StatusOffUpWeak : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffUpWeak(u16 type, Unit* unit);
    virtual ~StatusOffUpWeak();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
    virtual bool status_a0();
};

class StatusOffUpStrong : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffUpStrong(u16 type, Unit* unit);
    virtual ~StatusOffUpStrong();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
};

class StatusDefUpWeak : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefUpWeak(u16 type, Unit* unit);
    virtual ~StatusDefUpWeak();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
    virtual bool status_a0();
};

class StatusDefUpStrong : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefUpStrong(u16 type, Unit* unit);
    virtual ~StatusDefUpStrong();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusDance : public Status {
public:
    typedef u16 Type;

    StatusDance(u16 type, Unit* unit);
    virtual ~StatusDance();
    virtual bool disableAllStatuses();
};

class StatusOffDownMid : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffDownMid(u16 type, Unit* unit);
    virtual ~StatusOffDownMid();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
};

class StatusDefDownMid : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefDownMid(u16 type, Unit* unit);
    virtual ~StatusDefDownMid();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusTimeBomb : public Status {
public:
    typedef u16 Type;

    StatusTimeBomb(u16 type, Unit* unit);
    virtual ~StatusTimeBomb();
    virtual void onUnitTurnEnd(Unit* unit);
    virtual bool disableAllStatuses();

    s32 mDetonationTurns;
};

class StatusParamsUp : public StatusParamMod {
public:
    typedef u16 Type;

    StatusParamsUp(u16 type, Unit* unit);
    virtual ~StatusParamsUp();
    virtual bool disableAllStatuses();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual s32 offenseMod();
    virtual s32 defenseMod();
    virtual s32 iqMod();
    virtual s32 speedMod();
};

class StatusParamsDown : public StatusParamMod {
public:
    typedef u16 Type;

    StatusParamsDown(u16 type, Unit* unit);
    virtual ~StatusParamsDown();
    virtual bool disableAllStatuses();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual s32 offenseMod();
    virtual s32 defenseMod();
    virtual s32 iqMod();
    virtual s32 speedMod();
};


class StatusRefresh : public Status {
public:
    typedef u16 Type;

    StatusRefresh(u16 type, Unit* unit);
    virtual ~StatusRefresh();
    virtual bool onUnitTurnBegin(Unit* unit);
    virtual bool disableAllStatuses();
};

class StatusFell : public Status {
public:
    typedef u16 Type;

    StatusFell(u16 type, Unit* unit);
    virtual ~StatusFell();
    virtual bool disableAllStatuses();
};

class StatusMonkeyDanceOff : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceOff(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceOff();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
    virtual bool status_a0();
};

class StatusMonkeyDanceDef : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceDef(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceDef();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusMonkeyDanceSP : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceSP(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceSP();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 speedMod();
};

class StatusMonkeyDanceIQ : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceIQ(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceIQ();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 iqMod();
};

class StatusMonkeyDanceOff2 : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceOff2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceOff2();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
    virtual bool status_a0();
};

class StatusMonkeyDanceDef2 : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceDef2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceDef2();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusMonkeyDanceSP2 : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceSP2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceSP2();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 speedMod();
};

class StatusMonkeyDanceIQ2 : public StatusParamMod {
public:
    typedef u16 Type;

    StatusMonkeyDanceIQ2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceIQ2();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool disableAllStatuses();
    virtual s32 iqMod();
};

class StatusEndure : public Status {
public:
    typedef u16 Type;

    StatusEndure(u16 type, Unit* unit);
    virtual ~StatusEndure();
    virtual bool disableAllStatuses();
};

class StatusOffUpMid : public StatusParamMod {
public:
    typedef u16 Type;

    StatusOffUpMid(u16 type, Unit* unit);
    virtual ~StatusOffUpMid();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 offenseMod();
};

class StatusDefUpMid : public StatusParamMod {
public:
    typedef u16 Type;

    StatusDefUpMid(u16 type, Unit* unit);
    virtual ~StatusDefUpMid();
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
    virtual bool disableAllStatuses();
    virtual s32 defenseMod();
};

class StatusNoBackSprite : public Status {
public:
    typedef u16 Type;

    StatusNoBackSprite(u16 type, Unit* unit);
    virtual ~StatusNoBackSprite();
    virtual bool disableAllStatuses();
};

class DefaultStatus : public Status {
public:
    DefaultStatus(u16 type, Unit* unit);
    virtual ~DefaultStatus();
};

#endif  // BATTLE_STATUS_IMPL_H
