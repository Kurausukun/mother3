#ifndef BATTLE_STATUS_IMPL_H
#define BATTLE_STATUS_IMPL_H

#include "battle/status.h"
#include "unit.h"
#include "factory.h"

class StatusPoison : public Status {
public:
    typedef u16 Type;

    StatusPoison(u16 type, Unit* unit);
    virtual ~StatusPoison();
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
    virtual bool disableAllStatuses();
};

class StatusCrying : public Status {
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

class StatusFleas : public Status {
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

class StatusDefend : public Status {
public:
    typedef u16 Type;

    StatusDefend(u16 type, Unit* unit);
    virtual ~StatusDefend();
    virtual bool disableAllStatuses();
};

class StatusNoExp : public Status {
public:
    typedef u16 Type;

    StatusNoExp(u16 type, Unit* unit);
    virtual ~StatusNoExp();
    virtual bool disableAllStatuses();
};

class StatusElectrocuted : public Status {
public:
    typedef u16 Type;

    StatusElectrocuted(u16 type, Unit* unit);
    virtual ~StatusElectrocuted();
    virtual bool disableAllStatuses();
};

class StatusDance : public Status {
public:
    typedef u16 Type;

    StatusDance(u16 type, Unit* unit);
    virtual ~StatusDance();
    virtual bool disableAllStatuses();
};

class StatusTimeBomb : public Status {
public:
    typedef u16 Type;

    StatusTimeBomb(u16 type, Unit* unit);
    virtual ~StatusTimeBomb();
    virtual bool disableAllStatuses();
};

class StatusRefresh : public Status {
public:
    typedef u16 Type;

    StatusRefresh(u16 type, Unit* unit);
    virtual ~StatusRefresh();
    virtual bool disableAllStatuses();
};

class StatusFell : public Status {
public:
    typedef u16 Type;

    StatusFell(u16 type, Unit* unit);
    virtual ~StatusFell();
    virtual bool disableAllStatuses();
};

class StatusMonkeyDanceSP : public Status {
public:
    typedef u16 Type;

    StatusMonkeyDanceSP(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceSP();
    virtual bool disableAllStatuses();
};

class StatusMonkeyDanceIQ : public Status {
public:
    typedef u16 Type;

    StatusMonkeyDanceIQ(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceIQ();
    virtual bool disableAllStatuses();
};

class StatusMonkeyDanceSP2 : public Status {
public:
    typedef u16 Type;

    StatusMonkeyDanceSP2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceSP2();
    virtual bool disableAllStatuses();
};

class StatusMonkeyDanceIQ2 : public Status {
public:
    typedef u16 Type;

    StatusMonkeyDanceIQ2(u16 type, Unit* unit);
    virtual ~StatusMonkeyDanceIQ2();
    virtual bool disableAllStatuses();
};

class StatusEndure : public Status {
public:
    typedef u16 Type;

    StatusEndure(u16 type, Unit* unit);
    virtual ~StatusEndure();
    virtual bool disableAllStatuses();
};

class StatusNoBackSprite : public Status {
public:
    typedef u16 Type;

    StatusNoBackSprite(u16 type, Unit* unit);
    virtual ~StatusNoBackSprite();
    virtual bool disableAllStatuses();
};

class StatusParamMod : public Status {
public:
    typedef u16 Type;

    StatusParamMod(u16 type, Unit* unit);
    virtual ~StatusParamMod();

    virtual s32 _148();
    virtual s32 _150();
    virtual s32 _158();
    virtual s32 _160();
    virtual s32 _168();
    virtual s32 _170();
    virtual s32 _178();
    virtual s32 _180();
    virtual s32 _188();
    virtual s32 _190();
    virtual s32 _198();
    virtual s32 _1a0();
    virtual s32 _1a8();
    virtual s32 _1b0();
    virtual s32 _1b8();
    virtual bool _1c0(u16, u16);
    virtual bool _1c8(u16);
};

class StatusDefUpStrong : public StatusParamMod {
public:
    typedef u16 Type;
    
    StatusDefUpStrong(u16 type, Unit* unit);
    virtual ~StatusDefUpStrong();
    
    virtual Msg fmtStatusMsg(u16 msg);
    virtual bool status_a0();
};

class DefaultStatus : public Status {
public:
    DefaultStatus(u16 type, Unit* unit);
    virtual ~DefaultStatus();
};

#endif  // BATTLE_STATUS_IMPL_H