#include "battle/system.h"
#include <stddef.h>
#include "battle/clock.h"
#include "battle/keypad.h"
#include "structs.h"

extern "C" void sub_0806E4C4();
extern "C" void sub_0806CC1C();
extern "C" void sub_0806BE20();
extern "C" void sub_0806B07C();
extern "C" void sub_0806A9B0();
extern "C" void sub_0806FDBC();
extern "C" void destroy__10IrcManager();
extern "C" u16 sub_080029BC(u32);
extern "C" void sub_080026C0();
extern "C" KeyPad* KeyPadInstance();
extern "C" void DoReset();

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

SINGLETON_MGR_IMPL(System)

extern "C" ASM_FUNC("asm/non_matching/system/sub_0805D494.inc", System* __6System());

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

u32 sub_0805D638() {
    return gSave._81e;
}

u32 System::sub_0805D64C() {
    if (sub_080029BC(24) == 0xFF)
        return 9;
    if (sub_080029BC(23) == 0xFF)
        return 8;
    if (sub_080029BC(22) == 0xFF)
        return 7;
    if (sub_080029BC(21) == 0xFF)
        return 6;
    if (sub_080029BC(4) == 0xFF)
        return 5;
    if (sub_080029BC(3) == 0xFF)
        return 4;
    if (sub_080029BC(2) == 0xFF)
        return 3;
    if (sub_080029BC(1) == 0xFF)
        return 2;
    if (sub_080029BC(1) > 1)
        return 1;
    return 0;
}

ASM_FUNC("asm/non_matching/system/sub_0805D6F8.inc", void System::sub_0805D6F8())

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
