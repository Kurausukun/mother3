#ifndef BATTLE_SYSTEM_H
#define BATTLE_SYSTEM_H

#include "base.h"
#include "singleton.h"

struct SAREntry {
    u32 offset;
    u32 size;
};

class System : Base {
public:
    struct SARHandle {
        SARHandle();
        virtual ~SARHandle();
        char* ptr;
    };

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
SINGLETON_DECL(System)

#endif  // BATTLE_SYSTEM_H
