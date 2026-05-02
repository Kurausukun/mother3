#include "battle/clock.h"
#include "battle/irc.h"

#ifdef NONMATCHING

SINGLETON_DEBUG_MGR(Clock, const_classname_Clock)
SINGLETON_DEBUG(PostSysClock, const_classname_PostSysClock)
SINGLETON_DEBUG(PostAppClock, const_classname_PostAppClock)
SINGLETON_DEBUG(AppClock, const_classname_AppClock)
SINGLETON_DEBUG(PreAppClock, const_classname_PreAppClock)
SINGLETON_DEBUG(SysClock, const_classname_SysClock)
SINGLETON_DEBUG(PreSysClock, const_classname_PreSysClock)

#else
asm(".include \"asm/non_matching/inst.inc\"");
#endif
