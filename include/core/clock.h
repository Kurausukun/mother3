#ifndef CORE_CLOCK_H
#define CORE_CLOCK_H

#include "core/base.h"

class Clock : public Base {
public:
    Clock();
    Clock(u32 time);
    virtual ~Clock();

    virtual void* getInstance();

    u32 getTime();

    u32 mTime;
};

class PreSysClock : public Unk {
public:
    PreSysClock();
    PreSysClock(u32 time);
    virtual ~PreSysClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

class SysClock : public Unk {
public:
    SysClock();
    SysClock(u32 time);
    virtual ~SysClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

class PreAppClock : public Unk {
public:
    PreAppClock();
    PreAppClock(u32 time);
    virtual ~PreAppClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

class AppClock : public Unk {
public:
    AppClock();
    AppClock(u32 time);
    virtual ~AppClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

class PostAppClock : public Unk {
public:
    PostAppClock();
    PostAppClock(u32 time);
    virtual ~PostAppClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

class PostSysClock : public Unk {
public:
    PostSysClock();
    PostSysClock(u32 time);
    virtual ~PostSysClock();

    virtual void* getInstance();

    u32 getTime();

private:
    u32 mTime;
};

SINGLETON(PreSysClock)
SINGLETON(SysClock)
SINGLETON(PreAppClock)
SINGLETON(AppClock)
SINGLETON(PostAppClock)
SINGLETON(PostSysClock)
SINGLETON_MGR(Clock)

#endif  // CORE_CLOCK_H
