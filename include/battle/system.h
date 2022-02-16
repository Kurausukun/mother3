#ifndef GUARD_CORE_SYSTEM_H
#define GUARD_CORE_SYSTEM_H

#include "base.h"

class System : Base {
public:
    struct SARHandle {
        virtual ~SARHandle();
        u8* ptr;
    };

    System();
    virtual ~System();

    virtual void* getInstance();

    virtual SARHandle* getHandle();
    virtual u32 sub_0805D5C0();
    virtual u32 sub_0805D5D0();
    virtual u32 sub_0805D604();
    virtual void sub_0805D638();
    virtual u32 sub_0805D64C();
    virtual void sub_0805D6F8();
    
    void checkResetKeys();

    SARHandle* mHandle;
};
SINGLETON_MGR(System)

#endif  // GUARD_CORE_SYSTEM_H
