#include "battle/clock.h"
#include "battle/irc.h"

#ifdef NONMATCHING

MANAGER_DEBUG_IMPL(Clock)
RTTI_DEBUG_IMPL(PostSysClock)
RTTI_DEBUG_IMPL(PostAppClock)
RTTI_DEBUG_IMPL(AppClock)
RTTI_DEBUG_IMPL(PreAppClock)
RTTI_DEBUG_IMPL(SysClock)
RTTI_DEBUG_IMPL(PreSysClock)

#else
asm(".include \"asm/non_matching/inst.inc\"");
#endif
