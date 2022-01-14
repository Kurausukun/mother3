#include "keypad.h"
#include "core/clock.h"
extern "C" {
#include "gba/gba.h"
}

extern ClockData gUnknown_080FF9B4;
extern ClockData gUnknown_080FF9BC;

// struct BattleBase : Unk {
//     BattleBase() {}

//     virtual ~BattleBase() {}

//     virtual void* manager();
// };

void* sub_0806CBD8();

void* sub_0806CC58() {
    return sub_0806CBD8();
}

// matches, but Clock needs to be inlined
#ifdef NONMATCHING
KeyPad::KeyPad() : keys(0), newKeys(0), _48(0) {
    _20 = 0x2d;
    _22 = 0x8;

    CpuFill16(0, holdTimer, sizeof(holdTimer));
    registerClock(ClockManager::get(), SysClock(), gUnknown_080FF9B4);
    registerClock(ClockManager::get(), AppClock(), gUnknown_080FF9BC);
}
#else
extern "C" NAKED KeyPad* __6KeyPad() {
    asm_unified("\n\
	push {r4, r5, r6, lr}\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6}\n\
	sub sp, #0x2c\n\
	adds r5, r0, #0\n\
	bl __4Base\n\
	ldr r0, _0806CD10 @ =0x09F7FBB0\n\
	str r0, [r5, #0x1c]\n\
	movs r1, #0\n\
	strh r1, [r5, #0x24]\n\
	adds r0, r5, #0\n\
	adds r0, #0x46\n\
	strh r1, [r0]\n\
	adds r0, #2\n\
	strh r1, [r0]\n\
	movs r0, #0x2d\n\
	strh r0, [r5, #0x20]\n\
	movs r0, #8\n\
	strh r0, [r5, #0x22]\n\
	add r0, sp, #4\n\
	strh r1, [r0]\n\
	adds r1, r5, #0\n\
	adds r1, #0x26\n\
	ldr r2, _0806CD14 @ =0x01000010\n\
	bl CpuSet\n\
	bl get__12ClockManager\n\
	mov r8, r0\n\
	add r0, sp, #8\n\
	bl __4Base\n\
	ldr r0, _0806CD18 @ =0x09F44FF0\n\
	mov sb, r0\n\
	ldr r0, _0806CD1C @ =0x09F7EE20\n\
	str r0, [sp, #0x24]\n\
	add r6, sp, #8\n\
	ldr r0, _0806CD20 @ =gUnknown_080FF9B4\n\
	ldr r3, [r0]\n\
	ldr r4, [r0, #4]\n\
	str r4, [sp]\n\
	adds r0, r5, #0\n\
	mov r1, r8\n\
	adds r2, r6, #0\n\
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData\n\
	mov r0, sb\n\
	str r0, [sp, #0x24]\n\
	adds r0, r6, #0\n\
	movs r1, #2\n\
	bl _._4Base\n\
	bl get__12ClockManager\n\
	mov r8, r0\n\
	adds r0, r6, #0\n\
	bl __4Base\n\
	ldr r0, _0806CD24 @ =0x09F7ED20\n\
	str r0, [sp, #0x24]\n\
	ldr r0, _0806CD28 @ =gUnknown_080FF9BC\n\
	ldr r3, [r0]\n\
	ldr r4, [r0, #4]\n\
	str r4, [sp]\n\
	adds r0, r5, #0\n\
	mov r1, r8\n\
	adds r2, r6, #0\n\
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData\n\
	mov r0, sb\n\
	str r0, [sp, #0x24]\n\
	adds r0, r6, #0\n\
	movs r1, #2\n\
	bl _._4Base\n\
	adds r0, r5, #0\n\
	add sp, #0x2c\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0806CD10: .4byte 0x09F7FBB0\n\
_0806CD14: .4byte 0x01000010\n\
_0806CD18: .4byte 0x09F44FF0\n\
_0806CD1C: .4byte 0x09F7EE20\n\
_0806CD20: .4byte gUnknown_080FF9B4\n\
_0806CD24: .4byte 0x09F7ED20\n\
_0806CD28: .4byte gUnknown_080FF9BC\n\
    ");
}
#endif

KeyPad::~KeyPad() {}

void KeyPad::set_20(u32 val) {
    _20 = val;
}

void KeyPad::set_22(u32 val) {
    _22 = val;
}

u32 KeyPad::get_20() {
    return _20;
}

u32 KeyPad::get_22() {
    return _22;
}

u32 KeyPad::getKeys() {
    return keys;
}

u32 KeyPad::getNewKeys() {
    return newKeys;
}
