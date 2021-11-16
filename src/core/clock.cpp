#include "core/clock.h"

SINGLETON_IMPL(PreSysClock)
SINGLETON_IMPL(SysClock)
SINGLETON_IMPL(PreAppClock)
SINGLETON_IMPL(AppClock)
SINGLETON_IMPL(PostAppClock)
SINGLETON_IMPL(PostSysClock)
SINGLETON_MGR_IMPL(Clock)

Clock::Clock() : mTime(0) {}

Clock::~Clock() {}

extern "C" NAKED void sub_0806A1F8(Clock* dest, u32 count) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	sub sp, #0x24\n\
	adds r7, r0, #0\n\
	mov r8, r1\n\
	cmp r1, #0\n\
	bgt _0806A20C\n\
	b _0806A36A\n\
_0806A20C:\n\
	ldr r0, _0806A378 @ =0x09F44FF0\n\
	mov sb, r0\n\
_0806A210:\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	cmp r0, #0\n\
	ble _0806A2EA\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A37C @ =0x09F7EDA0\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A380 @ =0x09F7ED20\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A384 @ =0x09F7ECA0\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A388 @ =0x09F7EC20\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
_0806A2EA:\n\
	bl sub_08090FBC\n\
	ldr r0, [r7, #0x20]\n\
	adds r0, #1\n\
	str r0, [r7, #0x20]\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A38C @ =0x09F7EEA0\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
	ldr r4, [r7, #0x1c]\n\
	adds r4, #0x50\n\
	movs r0, #0\n\
	ldrsh r5, [r4, r0]\n\
	adds r5, r7, r5\n\
	adds r0, r7, #0\n\
	bl getTime__5Clock\n\
	adds r6, r0, #0\n\
	mov r0, sp\n\
	bl __4Base\n\
	ldr r0, _0806A390 @ =0x09F7EE20\n\
	str r0, [sp, #0x1c]\n\
	str r6, [sp, #0x20]\n\
	ldr r2, [r4, #4]\n\
	adds r0, r5, #0\n\
	mov r1, sp\n\
	bl _call_via_r2\n\
	mov r0, sb\n\
	str r0, [sp, #0x1c]\n\
	mov r0, sp\n\
	movs r1, #2\n\
	bl _._4Base\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	add r8, r0\n\
	mov r0, r8\n\
	cmp r0, #0\n\
	ble _0806A36A\n\
	b _0806A210\n\
_0806A36A:\n\
	add sp, #0x24\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0806A378: .4byte 0x09F44FF0\n\
_0806A37C: .4byte 0x09F7EDA0\n\
_0806A380: .4byte 0x09F7ED20\n\
_0806A384: .4byte 0x09F7ECA0\n\
_0806A388: .4byte 0x09F7EC20\n\
_0806A38C: .4byte 0x09F7EEA0\n\
_0806A390: .4byte 0x09F7EE20\n\
    ");
}

u32 Clock::getTime() {
    return mTime;
}

// global constructor @ 806A398
