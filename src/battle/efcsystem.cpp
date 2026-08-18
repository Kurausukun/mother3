// Auto-generated source file
#include "battle/efcSystem.h"
#include "global.h"

extern "C" void makeInstance__15BGEngineManager();
extern "C" void destroy__15BGEngineManager();

extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EDF0.inc", void sub_0806EDF0());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EE90.inc", void sub_0806EE90());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF18.inc", void sub_0806EF18());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF1C.inc", void sub_0806EF1C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF20.inc", void sub_0806EF20());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF24.inc", void sub_0806EF24());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF28.inc", void sub_0806EF28());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF2C.inc", void sub_0806EF2C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF30.inc", void sub_0806EF30());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806EF34.inc", void sub_0806EF34());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F030.inc", void sub_0806F030());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F1EC.inc", void sub_0806F1EC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F26C.inc", void sub_0806F26C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2CC.inc", void sub_0806F2CC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2D4.inc", void sub_0806F2D4());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2DC.inc", void sub_0806F2DC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2E4.inc", void sub_0806F2E4());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2EC.inc", void sub_0806F2EC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2F4.inc", void sub_0806F2F4());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F2FC.inc", void sub_0806F2FC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F304.inc", void sub_0806F304());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F30C.inc", void sub_0806F30C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F314.inc", void sub_0806F314());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F31C.inc", void sub_0806F31C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F324.inc", void sub_0806F324());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F32C.inc", void sub_0806F32C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F34C.inc", void sub_0806F34C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F380.inc", void sub_0806F380());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F42C.inc", void sub_0806F42C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F52C.inc", void sub_0806F52C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F560.inc", void sub_0806F560());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F56C.inc", void sub_0806F56C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F5EC.inc", void sub_0806F5EC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F600.inc", void sub_0806F600());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F6E0.inc", void sub_0806F6E0());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F7D4.inc", void sub_0806F7D4());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F7E0.inc", void sub_0806F7E0());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F7EC.inc", void sub_0806F7EC());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F89C.inc", void sub_0806F89C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F8B0.inc", void sub_0806F8B0());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F970.inc", void sub_0806F970());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806F97C.inc", void sub_0806F97C());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FA00.inc", void sub_0806FA00());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FA14.inc", void sub_0806FA14());
extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FB64.inc", void sub_0806FB64());

MANAGER_IMPL(EfcSystem);

EfcSystem::EfcSystem() : _28(0), _30(0), _38(0) {
    makeInstance__15BGEngineManager();
}

EfcSystem::~EfcSystem() {
    destroy__15BGEngineManager();
}

extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FC54.inc", void sub_0806FC54());

s32 EfcSystem::type() {
    return res.type();
}

ResPtrSized EfcSystem::loadEntry(u32 index) {
    return LoadRes(&res, index);
}

u16 EfcSystem::get_28() {
    return _28;
}

extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FCEC.inc", void sub_0806FCEC());

u16 EfcSystem::get_30() {
    return _30;
}

s32 EfcSystem::sub_0806FD14(s32 arg1) {
    return _34 + (arg1 * 8);
}

u16 EfcSystem::get_38() {
    return _38;
}

extern "C" ASM_FUNC("asm/non_matching/efcsystem/sub_0806FD20.inc", void sub_0806FD20());
