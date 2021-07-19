#ifndef GUARD_CORE_BASE_H
#define GUARD_CORE_BASE_H

#include "core/fit.h"

class Clock;
class Base;

typedef void (*Callback)(Base*);

struct BaseNode {
    Base* sender;
    Base* receiver;
    Base* base;
    u32 mask;
    Callback fn;
};

class Base {
public:
    Base();
    virtual ~Base();

    virtual void* manager();
    virtual void base_1c();
    virtual s32 base_24();
    virtual void base_2c();
    virtual void base_34();
    virtual void registerClock(Base& sender, Base& receiver, u32 mask, Callback fn);
    virtual void base_44();
    virtual void base_4c();
    virtual void base_54(Clock& clock);
    virtual void base_5c();
    virtual void base_64();

    u16 _0;
    u16 _2;
    Fit mFit1;
    Fit mFit2;
};

#endif  // GUARD_CORE_BASE_H