#ifndef BATTLE_SYSTEM_H
#define BATTLE_SYSTEM_H

#include "base.h"
#include "singleton.h"
#include "battle/archive.h"

class System : Base {
public:
    System();
    virtual ~System();

    virtual void* getRTTI();

    virtual SARHandle* getHandle();
    virtual u32 sub_0805D5C0();
    virtual u32 sub_0805D5D0();
    virtual u32 sub_0805D604();
    virtual u32 sub_0805D638();
    virtual u32 getGameProgression();
    virtual int sub_0805D6F8(int);

    void checkResetKeys();

    SARHandle* mHandle;
};
MANAGER_DECL_INLINE(System);

extern s32 gRNG;

#endif  // BATTLE_SYSTEM_H
