#ifndef BATTLE_STATUS_IMPL_H
#define BATTLE_STATUS_IMPL_H

#include "battle/status.h"
#include "unit.h"
#include "factory.h"

class StatusNoExp : public Status {
public:
    typedef u16 Type;

    StatusNoExp(u16 type, Unit* unit);
    virtual ~StatusNoExp();
    virtual bool disableAllStatuses();
};

class StatusDCMC : public Status {
public:
    typedef u16 Type;

    StatusDCMC(u16 type, Unit* unit);
    virtual ~StatusDCMC();
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