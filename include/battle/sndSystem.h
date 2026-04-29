#ifndef BATTLE_SND_SYSTEM
#define BATTLE_SND_SYSTEM

#include "base.h"
#include "singleton.h"

class SndSystem : public Base {
public:
    SndSystem();
    virtual ~SndSystem();

    void* getRTTI() override;
    virtual void vsyncOn();
    virtual void vsyncOff();
    virtual void setUnk20(u16);
    virtual void setUnk22(u8);
    virtual u16 getUnk20();
    virtual u8 getUnk22();
    
    u16 _20;
    u8 _22;
};
SINGLETON_DECL(SndSystem);

#endif  // BATTLE_SND_SYSTEM
