#include "battle/clock.h"
#include "battle/objengine.h"
#include "global.h"

extern ClockData callback_sub_0806C1D8;
extern ClockData callback_sub_0806C3DC;

// genengine
extern "C" void* makeInstance__14GEngineManager();
extern "C" void* get__14GEngineManager();
extern "C" void destroy__14GEngineManager();
extern "C" void sub_0806AFA4(void*, int);
extern "C" void sub_0806AF58(void*, int);

// objchrpool
extern "C" void makeInstance__17ObjChrPoolManager();
extern "C" void makeInstance__17ObjPltPoolManager();
extern "C" void destroy__17ObjPltPoolManager();
extern "C" void destroy__17ObjChrPoolManager();

MANAGER_IMPL(ObjEngine);

#ifdef NON_MATCHING
ObjEngine::ObjEngine() {
    UnkObjEngine* ptr = _20;
    for (int i = 3; i != -1; i--) {
        ptr->_0 = 0;
        ptr++;
    }

    _830 = 0;
    _832 = 0;
    _834 = 0;
    _938 = 0;
    _93c = 0;
    _940 = 0;
    _948 = 0;
    _944 = 0;
    _b4c = 0;

    void* temp_r0_3 = makeInstance__14GEngineManager();
    sub_0806AFA4(temp_r0_3, 0xEF9F);
    sub_0806AF58(temp_r0_3, 0x1040);

    listen(ClockManager::get(), SysClock(), callback_sub_0806C1D8);
    listen(ClockManager::get(), PostSysClock(), callback_sub_0806C3DC);

    makeInstance__17ObjChrPoolManager();
    makeInstance__17ObjPltPoolManager();
}
#else
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BE68.inc", void __9ObjEngine());
#endif

ObjEngine::~ObjEngine() {
    destroy__17ObjPltPoolManager();
    destroy__17ObjChrPoolManager();
    sub_0806AFA4(get__14GEngineManager(), 0xEF9F);
    destroy__14GEngineManager();

    UnkBar* temp = &this->_938;
    delete[] temp->_940;
}

extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BFB0.inc", void sub_0806BFB0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806BFCC.inc", void sub_0806BFCC());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C010.inc", void sub_0806C010());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C028.inc", void sub_0806C028());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C034.inc", void sub_0806C034());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C040.inc", void sub_0806C040());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C054.inc", void sub_0806C054());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C090.inc", void sub_0806C090());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C0A0.inc", void sub_0806C0A0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C0B4.inc", void sub_0806C0B4());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C154.inc", void sub_0806C154());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C160.inc", void sub_0806C160());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C174.inc", void sub_0806C174());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1B0.inc", void sub_0806C1B0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1C0.inc", void sub_0806C1C0());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1CC.inc", void sub_0806C1CC());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C1D8.inc", void sub_0806C1D8());
extern "C" ASM_FUNC("asm/non_matching/objengine/sub_0806C3DC.inc", void sub_0806C3DC());
