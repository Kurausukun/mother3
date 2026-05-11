#ifndef BATTLE_CLOCK_H
#define BATTLE_CLOCK_H

#include "base.h"
#include "singleton.h"

class Clock : public Base {
public:
    Clock();
    Clock(u32 time);
    virtual ~Clock();

    virtual void* getRTTI();

    void sleep(s32 duration);
    u32 getTime();

    u32 mTime;
};

class PreSysClock : public Event {
public:
    inline PreSysClock() {}
    inline PreSysClock(u32 time) : mTime(time) {}
    inline virtual ~PreSysClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class SysClock : public Event {
public:
    inline SysClock() {}
    inline SysClock(u32 time) : mTime(time) {}
    inline virtual ~SysClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PreAppClock : public Event {
public:
    inline PreAppClock() {}
    inline PreAppClock(u32 time) : mTime(time) {}
    inline virtual ~PreAppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class AppClock : public Event {
public:
    inline AppClock() {}
    inline AppClock(u32 time) : mTime(time) {}
    inline virtual ~AppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PostAppClock : public Event {
public:
    inline PostAppClock() {}
    inline PostAppClock(u32 time) : mTime(time) {}
    inline virtual ~PostAppClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

class PostSysClock : public Event {
public:
    inline PostSysClock() {}
    inline PostSysClock(u32 time) : mTime(time) {}
    inline virtual ~PostSysClock() {}

    virtual void* getRTTI();

    u32 getTime();

private:
    u32 mTime;
};

RTTI_DECL(PreSysClock)
RTTI_DECL(SysClock)
RTTI_DECL(PreAppClock)
RTTI_DECL(AppClock)
RTTI_DECL(PostAppClock)
RTTI_DECL(PostSysClock)
MANAGER_DECL(Clock)

#endif  // BATTLE_CLOCK_H
