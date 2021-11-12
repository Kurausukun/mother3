#include "core/system.h"
#include <stddef.h>
#include "core/clock.h"
#include "keypad.h"
#include "structs.h"

extern "C" void sub_0806E4C4();
extern "C" void sub_0806CC1C();
extern "C" void sub_0806BE20();
extern "C" void sub_0806B07C();
extern "C" void sub_0806A9B0();
extern "C" void sub_0806FDBC();
extern "C" void sub_080698D0();
extern "C" u16 sub_080029BC(u32);
extern "C" void sub_080026C0();
extern "C" KeyPad* sub_0806CC10();
extern "C" void sub_08001718();

void* operator new(size_t size, void* ptr);

struct SystemAllocator : FitAllocator {
    SystemAllocator(Fit* fit, u32 size);
    virtual ~SystemAllocator();
};
SystemAllocator* sSystemAllocator;

extern u8 gUnknown_02001F70;

extern "C" SystemAllocator* sub_0805D328(Fit* fit, u32 size) {
    sSystemAllocator = new (&gUnknown_02001F70) SystemAllocator(fit, size);
    return sSystemAllocator;
}

extern "C" SystemAllocator* sub_0805D350() {
    return sSystemAllocator;
}

extern "C" void sub_0805D35C() {
    sSystemAllocator->~SystemAllocator();
    sSystemAllocator = 0;
}

SystemAllocator::SystemAllocator(Fit* fit, u32 size) : FitAllocator(size, fit) {}

SystemAllocator::~SystemAllocator() {}

void* operator new(size_t size) {
    return sub_0805D350()->malloc(size);
}

void* operator new[](size_t size) {
    return sub_0805D350()->malloc(size);
}

void* operator new(size_t size, void* ptr) {
    return ptr;
}

void operator delete(void* ptr) {
    sub_0805D350()->free(ptr);
}

void operator delete[](void* ptr) {
    sub_0805D350()->free(ptr);
}

SINGLETON_MGR_IMPL(System)

extern "C" ASM_FUNC("asm/non_matching/system/sub_0805D494.inc", System* __6System())

    System::~System() {
    if (_20 != 0) {
        delete _20;
    }

    sub_0806E4C4();
    sub_0806CC1C();
    sub_0806BE20();
    sub_0806B07C();
    sub_0806A9B0();
    sub_0806FDBC();
    ClockManager::destroy();
    sub_080698D0();
}

System::A* System::sub_0805D5BC() {
    return _20;
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

void sub_0805D74C(System* system) {
    sub_0805D350()->collapse();
    sub_080026C0();
    system->sub_0805D768();
}

void System::sub_0805D768() {
    u16 keys = sub_0806CC10()->getKeys();
    if (keys == 0xF)
        sub_08001718();
}

// global constructor @ 0805D784
