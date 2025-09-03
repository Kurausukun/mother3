#ifndef BATTLE_SND_SYSTEM
#define BATTLE_SND_SYSTEM

#include "base.h"

class SndSystem : public Base {
public:
    SndSystem();
    virtual ~SndSystem();

    virtual void sndsystem_68();
    virtual void sndsystem_70();
    virtual void sndsystem_78(int);
    virtual void sndsystem_80(s32);
};
SndSystem* sub_0806FDB0();

#endif  // BATTLE_SND_SYSTEM
