#include "battle/clock.h"
#include "battle/irc.h"

#ifdef NONMATCHING

MANAGER_DEBUG_IMPL(Clock, const_classname_Clock)
RTTI_DEBUG_IMPL(PostSysClock, const_classname_PostSysClock)
RTTI_DEBUG_IMPL(PostAppClock, const_classname_PostAppClock)
RTTI_DEBUG_IMPL(AppClock, const_classname_AppClock)
RTTI_DEBUG_IMPL(PreAppClock, const_classname_PreAppClock)
RTTI_DEBUG_IMPL(SysClock, const_classname_SysClock)
RTTI_DEBUG_IMPL(PreSysClock, const_classname_PreSysClock)

#else
asm(".include \"asm/non_matching/inst.inc\"");
#endif
