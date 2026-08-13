#ifndef BATTLE_EFC_SYSTEM
#define BATTLE_EFC_SYSTEM

#include "base.h"
#include "singleton.h"
#include "battle/archive.h"

class EfcSystem : public Base {
public:
    EfcSystem();
    ~EfcSystem();

    virtual void* getRTTI();
    virtual s32 type();
    virtual ResPtrSized loadEntry(u32);

private:
    ResPtr res;
    s16 _28;
    s32 _2c;
    s16 _30;
    s32 _34;
    s16 _38;
    s32 _3c;
};
MANAGER_DECL(EfcSystem);

#endif  // BATTLE_EFC_SYSTEM