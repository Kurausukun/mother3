#include "core/clock.h"
#include "core/singleton.h"

#ifdef NONMATCHING

SINGLETON_DEBUG_MGR(Clock, gUnknown_080FEF44)
SINGLETON_DEBUG(PostSysClock, gUnknown_080FEF2C)
SINGLETON_DEBUG(PostAppClock, gUnknown_080FEF0C)
SINGLETON_DEBUG(AppClock, gUnknown_080FEEF0)
SINGLETON_DEBUG(PreAppClock, gUnknown_080FEED8)
SINGLETON_DEBUG(SysClock, gUnknown_080FEEC0)
SINGLETON_DEBUG(PreSysClock, gUnknown_080FEEA8)

#else
asm(".include \"asm/inst.inc\"");
#endif
