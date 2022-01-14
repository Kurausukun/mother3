#ifndef GUARD_CORE_BASE_H
#define GUARD_CORE_BASE_H

#include "core/fit.h"
#include "core/singleton.h"

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

struct ClockData {
    u32 mask;
    Callback callback;
};

class Base {
public:
    Base();
    virtual ~Base();

    virtual void* getInstance();
    virtual void base_1c();
    virtual s32 base_24();
    virtual void base_2c();
    virtual void base_34();
    virtual void registerClock(Base* sender, const Base& receiver, ClockData data);
    virtual void base_44();
    virtual void base_4c(u32 mask, Base& base, u32 mask2);
    virtual void base_54(Base& clock);
    virtual void base_5c();
    virtual void base_64();

    void free_fit1();
    void free_fit2();

    s16 _0;
    s16 _2;
    Fit mFit1;
    Fit mFit2;
};

struct Unk : public Base {
    Unk() {}
    ~Unk() {}
};

#endif  // GUARD_CORE_BASE_H
