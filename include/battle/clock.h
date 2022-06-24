#ifndef BATTLE_CLOCK_H
#define BATTLE_CLOCK_H

#include "base.h"

class Clock : public Base {
public:
    Clock();
    Clock(u32 time);
    virtual ~Clock();

    virtual void* getRTTI();

    u32 getTime();

    u32 mTime;
};

class PreSysClock : public Unk {
public:
    inline PreSysClock() {}
    inline PreSysClock(u32 time) : mTime(time)  {}
    inline virtual ~PreSysClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class SysClock : public Unk {
public:
    inline SysClock() {}
    inline SysClock(u32 time) : mTime(time) {}
    inline virtual ~SysClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PreAppClock : public Unk {
public:
    inline PreAppClock() {}
    inline PreAppClock(u32 time) : mTime(time)  {}
    inline virtual ~PreAppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class AppClock : public Unk {
public:
    inline AppClock() {}
    inline AppClock(u32 time) : mTime(time) {}
    inline virtual ~AppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PostAppClock : public Unk {
public:
    inline PostAppClock() {}
    inline PostAppClock(u32 time)  : mTime(time) { }
    inline virtual ~PostAppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PostSysClock : public Unk {
public:
    inline PostSysClock() {}
    inline PostSysClock(u32 time) : mTime(time) {}
    inline virtual ~PostSysClock() {}

    virtual void* getRTTI();

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

#endif  // BATTLE_CLOCK_H
