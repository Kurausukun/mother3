#include "core/clock.h"

ClockMgr<PreSysClock>* ClockMgr<PreSysClock>::get() {
    return &mInstance;
}

void* PreSysClock::manager() {
    return ClockMgr<PreSysClock>::get();
}

ClockMgr<SysClock>* ClockMgr<SysClock>::get() {
    return &mInstance;
}

void* SysClock::manager() {
    return ClockMgr<SysClock>::get();
}

ClockMgr<PreAppClock>* ClockMgr<PreAppClock>::get() {
    return &mInstance;
}

void* PreAppClock::manager() {
    return ClockMgr<PreAppClock>::get();
}

ClockMgr<AppClock>* ClockMgr<AppClock>::get() {
    return &mInstance;
}

void* AppClock::manager() {
    return ClockMgr<AppClock>::get();
}

ClockMgr<PostAppClock>* ClockMgr<PostAppClock>::get() {
    return &mInstance;
}

void* PostAppClock::manager() {
    return ClockMgr<PostAppClock>::get();
}

ClockMgr<PostSysClock>* ClockMgr<PostSysClock>::get() {
    return &mInstance;
}

void* PostSysClock::manager() {
    return ClockMgr<PostSysClock>::get();
}

ClockMgr<Clock>* ClockMgr<Clock>::get() {
    return &mInstance;
}

Clock* ClockMgr<Clock>::makeSingleton() {
    if (++mSingletonGuard == 1)
        mSingleton = new Clock();
    return mSingleton;
}

Clock* ClockMgr<Clock>::getSingleton() {
    return mSingleton;
}

void ClockMgr<Clock>::destroySingleton() {
    if (mSingletonGuard <= 0 || --mSingletonGuard != 0)
        return;

    if (mSingleton != 0)
        delete mSingleton;
    mSingleton = 0;
}

void* Clock::manager() {
    return ClockMgr<Clock>::get();
}

Clock::Clock() : mTime(0) {}

Clock::~Clock() {}
