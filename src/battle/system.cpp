#include "battle/system.h"
#include <stddef.h>
#include "battle/clock.h"
#include "battle/keypad.h"
#include "structs.h"
#include "battle/irc.h"
#include "battle/sndSystem.h"

extern "C" void sub_0806E4C4();
extern "C" void sub_0806CC1C();
extern "C" void sub_0806BE20();
extern "C" void sub_0806B07C();
extern "C" void sub_0806A9B0();
extern "C" void sub_0806FDBC();
extern "C" void destroy__10IrcManager();
extern "C" u16 get_progression_flag(u32);
extern "C" void sub_080026C0();
extern "C" KeyPad* KeyPadInstance();
extern "C" void DoReset();
extern "C" void randomMT();                                
extern "C" void seedMT(s32);                           
extern "C" void sub_0805D210();                                   
extern "C" void sub_0806A974();                         
extern "C" void sub_0806B040();                        
extern "C" void sub_0806BDE4();                        
extern "C" void sub_0806CBE0();                         
extern "C" void sub_0806E488();                      
extern "C" void sub_0806FD80();            

extern IrqTable gIntrHandlers;

extern ClockData gUnknown_080F24D8;

void* operator new(size_t size, void* ptr);

struct SystemAllocator : FitAllocator {
    SystemAllocator(Fit* fit, u32 size);
    virtual ~SystemAllocator();

    static SystemAllocator* init(Fit* fit, u32 size);
    static SystemAllocator* instance();
    static void destroy();
};
SystemAllocator* gSystemAllocator;

extern u8 sSystemAllocator[sizeof(SystemAllocator)];

SystemAllocator* SystemAllocator::init(Fit* fit, u32 size) {
    gSystemAllocator = new (sSystemAllocator) SystemAllocator(fit, size);
    return gSystemAllocator;
}

SystemAllocator* SystemAllocator::instance() {
    return gSystemAllocator;
}

void SystemAllocator::destroy() {
    gSystemAllocator->~SystemAllocator();
    gSystemAllocator = NULL;
}

SystemAllocator::SystemAllocator(Fit* fit, u32 size) : FitAllocator(size, fit) {}

SystemAllocator::~SystemAllocator() {}

void* operator new(size_t size) {
    return SystemAllocator::instance()->malloc(size);
}

void* operator new[](size_t size) {
    return SystemAllocator::instance()->malloc(size);
}

void* operator new(size_t size, void* ptr) {
    return ptr;
}

void operator delete(void* ptr) {
    SystemAllocator::instance()->free(ptr);
}

void operator delete[](void* ptr) {
    SystemAllocator::instance()->free(ptr);
}

SINGLETON_IMPL(System)

System::System() {
    seedMT(gSave.playtime + 0x1111);
    randomMT();
    
    sub_0805D210();

    IrcManager::makeInstance();
    IrcManager::get()->init(&gIntrHandlers);

    ClockManager::makeInstance();

    sub_0806FD80();

    sub_0806FDB0()->sndsystem_78(0x82);
    
    
    sub_0806A974();
    sub_0806B040();
    sub_0806BDE4();
    sub_0806CBE0();
    sub_0806E488();

    this->mHandle = new SARHandle();
    
    this->listen(ClockManager::get(), AppClock(), gUnknown_080F24D8);
}


System::~System() {
    delete mHandle;

    sub_0806E4C4();
    sub_0806CC1C();
    sub_0806BE20();
    sub_0806B07C();
    sub_0806A9B0();
    sub_0806FDBC();
    ClockManager::destroy();
    destroy__10IrcManager();
}

System::SARHandle* System::getHandle() {
    return mHandle;
}

u32 System::sub_0805D5C0() {
    return gSave._480;
}

u32 System::sub_0805D5D0() {
    s32 tmp = sub_0805D5C0();
    switch (tmp) {
    case 0:
        return 1;
    case 2:
        return 3;
    case 1:
    default:
        return 2;
    }
}

u32 System::sub_0805D604() {
    s32 tmp = sub_0805D5C0();
    switch (tmp) {
    case 0:
        return 3;
    case 2:
        return 10;
    case 1:
    default:
        return 5;
    }
}

u32 System::sub_0805D638() {
    return gSave._81e;
}

u32 System::getGameProgression() {
    if (get_progression_flag(24) == 0xFF)
        return 9;
    if (get_progression_flag(23) == 0xFF)
        return 8;
    if (get_progression_flag(22) == 0xFF)
        return 7;
    if (get_progression_flag(21) == 0xFF)
        return 6;
    if (get_progression_flag(4) == 0xFF)
        return 5;
    if (get_progression_flag(3) == 0xFF)
        return 4;
    if (get_progression_flag(2) == 0xFF)
        return 3;
    if (get_progression_flag(1) == 0xFF)
        return 2;
    if (get_progression_flag(1) > 1)
        return 1;
    return 0;
}

int System::sub_0805D6F8(int arg1) {    
    if (gUnknown_020050C0.entries[arg1]._32 == 1) {
        return 0xA;
    }
    
    
    for(s32 i=7; i>=0;i--) {
        if (gUnknown_020050C0.entries[arg1]._2A[i] == 0xFF) {
            return i + 2;
        }
    };
    
    if (gUnknown_020050C0.entries[arg1]._2A[0] > 1) {
        return 1;
    }
    
    return 0;
}

void system_callback(System* system) {
    SystemAllocator::instance()->defragment();
    sub_080026C0();
    system->checkResetKeys();
}

void System::checkResetKeys() {
    u16 keys = KeyPadInstance()->getKeys();
    if (keys == 0xF)
        DoReset();
}

// global constructor @ 0805D784
