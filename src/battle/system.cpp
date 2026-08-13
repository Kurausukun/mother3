#include "battle/system.h"
#include <stddef.h>
#include "battle/archive.h"
#include "battle/clock.h"
#include "battle/irc.h"
#include "battle/keypad.h"
#include "battle/objengine.h"
#include "battle/sndSystem.h"
#include "structs.h"

extern "C" void destroy__16FntSystemManager();
extern "C" void destroy__15BGEngineManager();
extern "C" void destroy__14GEngineManager();
extern "C" void destroy__10IrcManager();
extern "C" u16 get_progression_flag(u32);
extern "C" void incrementSavePlaytime();
extern "C" void DoReset();
extern "C" s32 randomMT();
extern "C" void seedMT(s32);
extern "C" void makeInstance__14GEngineManager();
extern "C" void makeInstance__15BGEngineManager();
extern "C" void sub_0806CBE0();
extern "C" void makeInstance__16FntSystemManager();

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

void setRNG(s32 seed) {
    gRNG = seed;
}

void shuffleRNG() {
    gRNG = ((gRNG + 8) * 0x47) + 0x25;
}

s32 randRange(s32 arg0, s32 arg1) {
    register u32 r3 asm("r3") = gRNG + 5; // FAKEMATCH
    s32 r2 = (r3 * 0x43) + 0x1F;
    gRNG = r2;
    r3 = arg0 - 1;
    arg1 = arg1 - r3;
    r2 = (u8)r2;
    return arg0 + ((s32) (r2 * arg1) >> 8);
}

extern "C" NAKED void sub_0805D260() {
    asm_unified("\n\
push {lr}\n\
adds r2, r0, #0\n\
movs r3, #0\n\
cmp r1, #1\n\
ble _0805D276\n\
_0805D26A:\n\
ldrh r0, [r2]\n\
adds r3, r3, r0\n\
adds r2, #2\n\
subs r1, #4\n\
cmp r1, #1\n\
bgt _0805D26A\n\
_0805D276:\n\
cmp r1, #0\n\
bge _0805D284\n\
ldrh r1, [r2]\n\
movs r0, #0xff\n\
lsls r0, r0, #8\n\
ands r0, r1\n\
adds r3, r3, r0\n\
_0805D284:\n\
ldr r2, _0805D2A0 @ =0x0000FFFF\n\
adds r0, r3, #0\n\
ands r0, r2\n\
lsrs r1, r3, #0x10\n\
adds r3, r0, r1\n\
adds r0, r3, #0\n\
ands r0, r2\n\
lsrs r1, r3, #0x10\n\
adds r3, r0, r1\n\
mvns r0, r3\n\
lsls r0, r0, #0x10\n\
lsrs r0, r0, #0x10\n\
pop {r1}\n\
bx r1\n\
.align 2, 0\n\
_0805D2A0: .4byte 0x0000FFFF\n\
");
}

ResPtr::ResPtr() : address(0) {}

ResPtr::~ResPtr() {}

bool ResPtr::set(ResPtr& ref) {
    address = ref.address;
    return true;
}

u16 ResPtr::type() const {
    if (address == 0) {
        return 0;
    }
    
    return *(u16*)(address + 4);
}


extern "C" ResPtrSized LoadRes(SARHandle* archive, u32 idx) {
    char* arc = archive->address;
    if (!arc) {
        return ResPtrSized(0, 0);
    };
    SAREntry* table = reinterpret_cast<SAREntry*>(arc + 8);
    return ResPtrSized(arc + table[idx].offset, table[idx].size);
}

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

MANAGER_IMPL(System)

System::System() {
    seedMT(gSave.playtime + 0x1111);
    setRNG(randomMT());

    IrcManager::makeInstance();
    IrcManager::get()->init(&gIntrHandlers);

    ClockManager::makeInstance();

    SndSystemManager::makeInstance();
    SndSystemManager::get()->setUnk20(0x82);

    makeInstance__14GEngineManager();
    makeInstance__15BGEngineManager();
    ObjEngineManager::makeInstance();
    KeyPadManager::makeInstance();
    makeInstance__16FntSystemManager();

    this->mHandle = new SARHandle();

    this->listen(ClockManager::get(), AppClock(), gUnknown_080F24D8);
}

System::~System() {
    delete mHandle;

    destroy__16FntSystemManager();
    KeyPadManager::destroy();
    ObjEngineManager::destroy();
    destroy__15BGEngineManager();
    destroy__14GEngineManager();
    SndSystemManager::destroy();
    ClockManager::destroy();
    destroy__10IrcManager();
}

SARHandle* System::getHandle() {
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

    for (s32 i = 7; i >= 0; i--) {
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
    incrementSavePlaytime();
    system->checkResetKeys();
}

void System::checkResetKeys() {
    u16 keys = KeyPadManager::get()->getKeys();
    if (keys == 0xF)
        DoReset();
}

// global constructor @ 0805D784
