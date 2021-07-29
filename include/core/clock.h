#ifndef CORE_CLOCK_H
#define CORE_CLOCK_H

#include "core/base.h"

template <typename T>
class ClockMgr {
public:
    static ClockMgr* get();
    static T* getSingleton();
    static T* makeSingleton();
    static void destroySingleton();

private:
    static ClockMgr mInstance;
    static s32 mSingletonGuard;
    static T* mSingleton;
};

class Clock : public Base {
public:
    Clock();
    virtual ~Clock();

    virtual void* manager();

    u32 getTime();

private:
    u32 mTime;
};

class PreSysClock : public Clock {
public:
    PreSysClock();
    virtual ~PreSysClock();

    virtual void* manager();
};

class SysClock : public Clock {
public:
    SysClock();
    virtual ~SysClock();

    virtual void* manager();
};

class PreAppClock : public Clock {
public:
    PreAppClock();
    virtual ~PreAppClock();

    virtual void* manager();
};

class AppClock : public Clock {
public:
    AppClock();
    virtual ~AppClock();

    virtual void* manager();
};

class PostAppClock : public Clock {
public:
    PostAppClock();
    virtual ~PostAppClock();

    virtual void* manager();
};

class PostSysClock : public Clock {
public:
    PostSysClock();
    virtual ~PostSysClock();

    virtual void* manager();
};

#endif // CORE_CLOCK_H
