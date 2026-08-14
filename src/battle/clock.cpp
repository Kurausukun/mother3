#include "battle/clock.h"
#include "gba/syscall.h"

#ifdef NONMATCHING

RTTI_IMPL(PreSysClock)
RTTI_IMPL(SysClock)
RTTI_IMPL(PreAppClock)
RTTI_IMPL(AppClock)
RTTI_IMPL(PostAppClock)
RTTI_IMPL(PostSysClock)
MANAGER_IMPL(Clock);

Clock::Clock() : mTime(0) {}

Clock::~Clock() {}

void Clock::sleep(s32 duration) {
    s32 dur = duration;
    if (duration <= 0) {
        return;
    }
    do {
        if (getTime() > 0) {
            emit(PreAppClock(getTime()));
            emit(AppClock(getTime()));
            emit(PostAppClock(getTime()));
            emit(PostSysClock(getTime()));
        }
        VBlankIntrWait();
        mTime += 1;

        emit(PreSysClock(getTime()));
        emit(SysClock(getTime()));

        dur -= 1;
    } while (dur > 0);
}

u32 Clock::getTime() {
    return mTime;
}

// global constructor @ 806A398

#else
asm(".include \"asm/non_matching/clock_singletons.inc\"");
asm(".include \"asm/non_matching/clock_inlines.inc\"");
#endif
