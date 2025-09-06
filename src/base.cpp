#include "base.h"

Base::Base() {
    num_active_listeners = 0;
    lifetime = 0;
}

Base::~Base() {
    releaseOutgoing();
    releaseIncoming();
}

void Base::base_5c() {
    if (num_active_listeners < 1) {
        delete this;
    } else {
        lifetime |= 1;
    }
}

void* Base::getRTTI() {
    return NULL;
}

void Base::base_1c() {}

s32 Base::base_24() {
    return 0;
}

void Base::base_2c() {}

void Base::base_34() {}

extern "C" NAKED void listen__4BasePvRC4BaseG9ClockData(void* target, const Base& trigger,
                                                        ClockData callback) {
    asm_unified("\n\
	sub sp, #4\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x2c\n\
	str r0, [sp, #0x18]\n\
	adds r5, r1, #0\n\
	adds r4, r2, #0\n\
	str r3, [sp, #0x4c]\n\
	ldr r6, [sp, #0x4c]\n\
	ldr r7, [sp, #0x50]\n\
	cmp r5, #0\n\
	bne _08068AA0\n\
	b _08068D82\n\
_08068AA0:\n\
	asrs r0, r6, #0x10\n\
	cmp r0, #0\n\
	bne _08068AA8\n\
	b _08068D82\n\
_08068AA8:\n\
	movs r0, #0x14\n\
	bl __builtin_new\n\
	str r0, [sp, #0x14]\n\
	str r5, [r0]\n\
	ldr r1, [r4, #0x1c]\n\
	movs r2, #0x10\n\
	ldrsh r0, [r1, r2]\n\
	adds r0, r4, r0\n\
	ldr r1, [r1, #0x14]\n\
	bl _call_via_r1\n\
	ldr r1, [sp, #0x14]\n\
	str r0, [r1, #4]\n\
	ldr r3, [sp, #0x18]\n\
	str r3, [r1, #8]\n\
	str r6, [r1, #0xc]\n\
	str r7, [r1, #0x10]\n\
	ldr r1, [r4, #0x1c]\n\
	movs r2, #0x10\n\
	ldrsh r0, [r1, r2]\n\
	adds r0, r4, r0\n\
	ldr r1, [r1, #0x14]\n\
	bl _call_via_r1\n\
	str r0, [sp, #0x10]\n\
	adds r7, r5, #4\n\
	add r5, sp, #0x10\n\
	mov r3, sp\n\
	adds r3, #0x14\n\
	str r3, [sp, #0x1c]\n\
	movs r1, #0\n\
	ldr r2, [r7, #4]\n\
	ldr r3, [sp, #0x18]\n\
	adds r3, #0x10\n\
	str r3, [sp, #0x24]\n\
	cmp r1, r2\n\
	bge _08068B08\n\
	adds r4, r0, #0\n\
	adds r3, r2, #0\n\
	ldr r2, [r7, #8]\n\
_08068AFA:\n\
	ldr r0, [r2]\n\
	cmp r0, r4\n\
	beq _08068B6E\n\
	adds r2, #0x10\n\
	adds r1, #1\n\
	cmp r1, r3\n\
	blt _08068AFA\n\
_08068B08:\n\
	ldr r1, [r7, #4]\n\
	adds r2, r1, #0\n\
_08068B0C:\n\
	cmp r1, r2\n\
	bge _08068B72\n\
	lsls r1, r1, #4\n\
	ldr r0, [r7, #8]\n\
	adds r0, r0, r1\n\
	adds r4, r0, #4\n\
	ldr r1, [r4, #4]\n\
	adds r5, r1, #1\n\
	ldr r0, [r0, #4]\n\
	cmp r0, r5\n\
	bge _08068B5A\n\
	lsls r1, r5, #1\n\
	movs r0, #4\n\
	cmp r0, r1\n\
	bge _08068B2C\n\
	adds r0, r1, #0\n\
_08068B2C:\n\
	adds r5, r0, #0\n\
	lsls r0, r5, #2\n\
	bl __builtin_vec_new\n\
	adds r6, r0, #0\n\
	ldr r3, [r4, #8]\n\
	adds r2, r6, #0\n\
	ldr r0, [r4, #4]\n\
	cmp r0, #0\n\
	ble _08068B4C\n\
	adds r1, r0, #0\n\
_08068B42:\n\
	ldm r3!, {r0}\n\
	stm r2!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068B42\n\
_08068B4C:\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	beq _08068B56\n\
	bl __builtin_vec_delete\n\
_08068B56:\n\
	str r5, [r4]\n\
	str r6, [r4, #8]\n\
_08068B5A:\n\
	ldr r2, [r4, #4]\n\
	ldr r1, [r4, #8]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r1\n\
	ldr r3, [sp, #0x1c]\n\
	ldr r1, [r3]\n\
	str r1, [r0]\n\
	adds r2, #1\n\
	str r2, [r4, #4]\n\
	b _08068D2A\n\
_08068B6E:\n\
	ldr r2, [r7, #4]\n\
	b _08068B0C\n\
_08068B72:\n\
	add r1, sp, #4\n\
	movs r0, #0\n\
	str r0, [sp, #4]\n\
	str r0, [r1, #4]\n\
	str r0, [r1, #8]\n\
	ldr r0, [r5]\n\
	str r0, [sp]\n\
	mov r0, sp\n\
	str r0, [sp, #0x20]\n\
	adds r2, #1\n\
	mov r8, r2\n\
	ldr r0, [r7]\n\
	cmp r0, r8\n\
	bge _08068C6A\n\
	lsls r1, r2, #1\n\
	movs r0, #4\n\
	cmp r0, r1\n\
	bge _08068B98\n\
	adds r0, r1, #0\n\
_08068B98:\n\
	mov r8, r0\n\
	lsls r0, r0, #4\n\
	adds r0, #4\n\
	bl __builtin_vec_new\n\
	mov r1, r8\n\
	stm r0!, {r1}\n\
	adds r4, r0, #0\n\
	adds r1, r4, #0\n\
	mov r2, r8\n\
	subs r2, #1\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r2, r0\n\
	beq _08068BCA\n\
	movs r3, #0\n\
	adds r5, r0, #0\n\
_08068BBA:\n\
	adds r0, r1, #4\n\
	str r3, [r1, #4]\n\
	str r3, [r0, #4]\n\
	str r3, [r0, #8]\n\
	adds r1, #0x10\n\
	subs r2, #1\n\
	cmp r2, r5\n\
	bne _08068BBA\n\
_08068BCA:\n\
	mov sl, r4\n\
	ldr r0, [r7, #8]\n\
	ldr r2, [r7, #4]\n\
	mov sb, r2\n\
	movs r1, #0\n\
	cmp r1, sb\n\
	bge _08068C36\n\
	subs r4, #0x10\n\
	adds r5, r0, #0\n\
	subs r5, #0x10\n\
_08068BDE:\n\
	adds r5, #0x10\n\
	adds r4, #0x10\n\
	ldr r0, [r5]\n\
	str r0, [r4]\n\
	ldr r0, [r4, #0xc]\n\
	cmp r0, #0\n\
	beq _08068BF4\n\
	str r1, [sp, #0x28]\n\
	bl __builtin_vec_delete\n\
	ldr r1, [sp, #0x28]\n\
_08068BF4:\n\
	ldr r0, [r5, #8]\n\
	cmp r0, #0\n\
	bgt _08068C06\n\
	movs r0, #0\n\
	str r0, [r4, #4]\n\
	str r0, [r4, #8]\n\
	str r0, [r4, #0xc]\n\
	adds r2, r1, #1\n\
	b _08068C30\n\
_08068C06:\n\
	str r0, [r4, #4]\n\
	ldr r0, [r5, #8]\n\
	str r0, [r4, #8]\n\
	lsls r0, r0, #2\n\
	str r1, [sp, #0x28]\n\
	bl __builtin_vec_new\n\
	str r0, [r4, #0xc]\n\
	ldr r6, [r5, #0xc]\n\
	adds r3, r0, #0\n\
	ldr r0, [r4, #8]\n\
	ldr r1, [sp, #0x28]\n\
	adds r2, r1, #1\n\
	cmp r0, #0\n\
	ble _08068C30\n\
	adds r1, r0, #0\n\
_08068C26:\n\
	ldm r6!, {r0}\n\
	stm r3!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068C26\n\
_08068C30:\n\
	adds r1, r2, #0\n\
	cmp r1, sb\n\
	blt _08068BDE\n\
_08068C36:\n\
	ldr r1, [r7, #8]\n\
	cmp r1, #0\n\
	beq _08068C62\n\
	subs r0, r1, #4\n\
	ldr r0, [r0]\n\
	lsls r0, r0, #4\n\
	adds r4, r1, r0\n\
	cmp r1, r4\n\
	beq _08068C5A\n\
_08068C48:\n\
	subs r4, #0x10\n\
	ldr r0, [r4, #0xc]\n\
	cmp r0, #0\n\
	beq _08068C54\n\
	bl __builtin_vec_delete\n\
_08068C54:\n\
	ldr r0, [r7, #8]\n\
	cmp r0, r4\n\
	bne _08068C48\n\
_08068C5A:\n\
	ldr r0, [r7, #8]\n\
	subs r0, #4\n\
	bl __builtin_vec_delete\n\
_08068C62:\n\
	mov r3, r8\n\
	str r3, [r7]\n\
	mov r0, sl\n\
	str r0, [r7, #8]\n\
_08068C6A:\n\
	ldr r0, [r7, #4]\n\
	lsls r2, r0, #4\n\
	ldr r1, [r7, #8]\n\
	adds r6, r2, r1\n\
	adds r0, #1\n\
	str r0, [r7, #4]\n\
	ldr r1, [sp, #0x20]\n\
	ldm r1!, {r0}\n\
	str r1, [sp, #0x20]\n\
	adds r4, r6, #0\n\
	stm r4!, {r0}\n\
	ldr r5, [sp, #0x20]\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	beq _08068C8C\n\
	bl __builtin_vec_delete\n\
_08068C8C:\n\
	ldr r0, [r5, #4]\n\
	cmp r0, #0\n\
	bgt _08068C9C\n\
	movs r0, #0\n\
	str r0, [r6, #4]\n\
	str r0, [r4, #4]\n\
	str r0, [r4, #8]\n\
	b _08068CC0\n\
_08068C9C:\n\
	str r0, [r6, #4]\n\
	ldr r0, [r5, #4]\n\
	str r0, [r4, #4]\n\
	lsls r0, r0, #2\n\
	bl __builtin_vec_new\n\
	str r0, [r4, #8]\n\
	ldr r3, [r5, #8]\n\
	adds r2, r0, #0\n\
	ldr r0, [r4, #4]\n\
	cmp r0, #0\n\
	ble _08068CC0\n\
	adds r1, r0, #0\n\
_08068CB6:\n\
	ldm r3!, {r0}\n\
	stm r2!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068CB6\n\
_08068CC0:\n\
	ldr r0, [r7, #4]\n\
	subs r0, #1\n\
	lsls r0, r0, #4\n\
	ldr r1, [r7, #8]\n\
	adds r1, r1, r0\n\
	adds r4, r1, #4\n\
	ldr r0, [r4, #4]\n\
	adds r5, r0, #1\n\
	ldr r0, [r1, #4]\n\
	cmp r0, r5\n\
	bge _08068D0E\n\
	lsls r1, r5, #1\n\
	movs r0, #4\n\
	cmp r0, r1\n\
	bge _08068CE0\n\
	adds r0, r1, #0\n\
_08068CE0:\n\
	adds r5, r0, #0\n\
	lsls r0, r5, #2\n\
	bl __builtin_vec_new\n\
	adds r6, r0, #0\n\
	ldr r3, [r4, #8]\n\
	adds r2, r6, #0\n\
	ldr r0, [r4, #4]\n\
	cmp r0, #0\n\
	ble _08068D00\n\
	adds r1, r0, #0\n\
_08068CF6:\n\
	ldm r3!, {r0}\n\
	stm r2!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068CF6\n\
_08068D00:\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	beq _08068D0A\n\
	bl __builtin_vec_delete\n\
_08068D0A:\n\
	str r5, [r4]\n\
	str r6, [r4, #8]\n\
_08068D0E:\n\
	ldr r2, [r4, #4]\n\
	ldr r1, [r4, #8]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r1\n\
	ldr r3, [sp, #0x1c]\n\
	ldr r1, [r3]\n\
	str r1, [r0]\n\
	adds r2, #1\n\
	str r2, [r4, #4]\n\
	ldr r0, [sp, #0xc]\n\
	cmp r0, #0\n\
	beq _08068D2A\n\
	bl __builtin_vec_delete\n\
_08068D2A:\n\
	ldr r4, [sp, #0x24]\n\
	add r7, sp, #0x14\n\
	ldr r0, [r4, #4]\n\
	adds r5, r0, #1\n\
	ldr r1, [sp, #0x18]\n\
	ldr r0, [r1, #0x10]\n\
	cmp r0, r5\n\
	bge _08068D72\n\
	lsls r1, r5, #1\n\
	movs r0, #4\n\
	cmp r0, r1\n\
	bge _08068D44\n\
	adds r0, r1, #0\n\
_08068D44:\n\
	adds r5, r0, #0\n\
	lsls r0, r5, #2\n\
	bl __builtin_vec_new\n\
	adds r6, r0, #0\n\
	ldr r3, [r4, #8]\n\
	adds r2, r6, #0\n\
	ldr r0, [r4, #4]\n\
	cmp r0, #0\n\
	ble _08068D64\n\
	adds r1, r0, #0\n\
_08068D5A:\n\
	ldm r3!, {r0}\n\
	stm r2!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068D5A\n\
_08068D64:\n\
	ldr r0, [r4, #8]\n\
	cmp r0, #0\n\
	beq _08068D6E\n\
	bl __builtin_vec_delete\n\
_08068D6E:\n\
	str r5, [r4]\n\
	str r6, [r4, #8]\n\
_08068D72:\n\
	ldr r2, [r4, #4]\n\
	ldr r1, [r4, #8]\n\
	lsls r0, r2, #2\n\
	adds r0, r0, r1\n\
	ldr r1, [r7]\n\
	str r1, [r0]\n\
	adds r2, #1\n\
	str r2, [r4, #4]\n\
_08068D82:\n\
	add sp, #0x2c\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r3}\n\
	add sp, #4\n\
	bx r3\n\
    .align 0\n\
    ");
}

void Base::base_44() {
    releaseOutgoing();
}

NAKED
void Base::base_4c(u32 mask, Base& base, u32 mask2) {
    asm_unified("\n\
	sub sp, #4\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	sub sp, #8\n\
	adds r5, r0, #0\n\
	adds r4, r1, #0\n\
	str r3, [sp, #0x24]\n\
	cmp r4, #0\n\
	beq _08068E8E\n\
	ldr r0, [sp, #0x24]\n\
	ldr r1, [sp, #0x28]\n\
	asrs r0, r0, #0x10\n\
	cmp r0, #0\n\
	beq _08068E8E\n\
	movs r0, #0\n\
	mov sb, r0\n\
	adds r0, r5, #0\n\
	adds r0, #0x10\n\
	ldr r1, [r0, #4]\n\
	adds r7, r0, #0\n\
	cmp sb, r1\n\
	bge _08068E8E\n\
	movs r3, #0\n\
	mov r8, r3\n\
_08068DD4:\n\
	ldr r0, [r7, #8]\n\
	add r0, r8\n\
	ldr r1, [r0]\n\
	ldr r0, [r1]\n\
	cmp r0, r4\n\
	bne _08068E80\n\
	str r1, [sp, #4]\n\
	ldr r1, [r2, #0x1c]\n\
	movs r6, #0x10\n\
	ldrsh r0, [r1, r6]\n\
	adds r0, r2, r0\n\
	ldr r1, [r1, #0x14]\n\
	bl _call_via_r1\n\
	str r0, [sp]\n\
	adds r1, r4, #4\n\
	movs r3, #0\n\
	ldr r2, [r1, #4]\n\
	add r4, sp, #4\n\
	mov ip, r4\n\
	cmp r3, r2\n\
	bge _08068E16\n\
	adds r5, r0, #0\n\
	adds r4, r2, #0\n\
	ldr r1, [r1, #8]\n\
_08068E06:\n\
	adds r2, r1, #0\n\
	ldr r0, [r2]\n\
	cmp r0, r5\n\
	beq _08068E7C\n\
	adds r1, #0x10\n\
	adds r3, #1\n\
	cmp r3, r4\n\
	blt _08068E06\n\
_08068E16:\n\
	movs r0, #0\n\
_08068E18:\n\
	movs r3, #0\n\
	ldr r2, [r0, #4]\n\
	ldr r6, [r0, #8]\n\
	cmp r3, r2\n\
	bge _08068E38\n\
	mov r0, ip\n\
	ldr r5, [r0]\n\
	adds r4, r2, #0\n\
	adds r1, r6, #0\n\
_08068E2A:\n\
	ldr r0, [r1]\n\
	cmp r0, r5\n\
	beq _08068E78\n\
	adds r1, #4\n\
	adds r3, #1\n\
	cmp r3, r4\n\
	blt _08068E2A\n\
_08068E38:\n\
	adds r0, r2, #0\n\
_08068E3A:\n\
	lsls r0, r0, #2\n\
	adds r0, r6, r0\n\
	movs r1, #0\n\
	str r1, [r0]\n\
	adds r5, r7, #0\n\
	ldr r3, [r7, #4]\n\
	cmp sb, r3\n\
	bge _08068E70\n\
	ldr r2, [r7, #8]\n\
	mov r4, r8\n\
	adds r1, r4, r2\n\
	mov r0, sb\n\
	adds r0, #1\n\
	subs r0, r3, r0\n\
	adds r4, r1, #4\n\
	mov r6, r8\n\
	adds r1, r6, r2\n\
	cmp r0, #0\n\
	ble _08068E6C\n\
	adds r2, r0, #0\n\
_08068E62:\n\
	ldm r4!, {r0}\n\
	stm r1!, {r0}\n\
	subs r2, #1\n\
	cmp r2, #0\n\
	bne _08068E62\n\
_08068E6C:\n\
	subs r0, r3, #1\n\
	str r0, [r5, #4]\n\
_08068E70:\n\
	ldr r0, [sp, #4]\n\
	bl __builtin_delete\n\
	b _08068E8E\n\
_08068E78:\n\
	adds r0, r3, #0\n\
	b _08068E3A\n\
_08068E7C:\n\
	adds r0, r1, #4\n\
	b _08068E18\n\
_08068E80:\n\
	movs r0, #4\n\
	add r8, r0\n\
	movs r3, #1\n\
	add sb, r3\n\
	ldr r0, [r7, #4]\n\
	cmp sb, r0\n\
	blt _08068DD4\n\
_08068E8E:\n\
	add sp, #8\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r3}\n\
	add sp, #4\n\
	bx r3\n\
	.align 2, 0\n\
    ");
}

NAKED
void Base::emit(const Base& base) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	mov sb, r0\n\
	mov sl, r1\n\
	ldr r1, [r1, #0x1c]\n\
	movs r2, #0x10\n\
	ldrsh r0, [r1, r2]\n\
	add r0, sl\n\
	ldr r1, [r1, #0x14]\n\
	bl _call_via_r1\n\
	adds r3, r0, #0\n\
	str r3, [sp]\n\
	mov r0, sb\n\
	adds r0, #4\n\
	movs r2, #0\n\
	ldr r1, [r0, #4]\n\
	cmp r2, r1\n\
	bge _08068EE8\n\
	adds r4, r3, #0\n\
	adds r3, r1, #0\n\
	ldr r1, [r0, #8]\n\
_08068ED4:\n\
	ldr r0, [r1]\n\
	cmp r0, r4\n\
	bne _08068EE0\n\
	adds r1, #4\n\
	mov r8, r1\n\
	b _08068EEC\n\
_08068EE0:\n\
	adds r1, #0x10\n\
	adds r2, #1\n\
	cmp r2, r3\n\
	blt _08068ED4\n\
_08068EE8:\n\
	movs r3, #0\n\
	mov r8, r3\n\
_08068EEC:\n\
	mov r0, r8\n\
	cmp r0, #0\n\
	beq _08068FB4\n\
	ldr r7, [r0, #4]\n\
	mov r1, sb\n\
	ldrh r0, [r1]\n\
	adds r0, #1\n\
	strh r0, [r1]\n\
	movs r5, #0\n\
	cmp r5, r7\n\
	bge _08068F8C\n\
_08068F02:\n\
	lsls r1, r5, #2\n\
	mov r2, r8\n\
	ldr r0, [r2, #8]\n\
	adds r2, r0, r1\n\
	ldr r3, [r2]\n\
	cmp r3, #0\n\
	beq _08068F58\n\
	movs r0, #0xe\n\
	ldrsh r4, [r3, r0]\n\
	cmp r4, #0\n\
	ble _08068F36\n\
	movs r1, #0x10\n\
	ldrsh r0, [r3, r1]\n\
	ldr r2, [r3, #8]\n\
	adds r0, r2, r0\n\
	ldr r1, [r0]\n\
	lsls r0, r4, #3\n\
	adds r0, r0, r1\n\
	adds r6, r0, #0\n\
	subs r6, #8\n\
	ldr r0, [r6]\n\
	ldr r1, [r6, #4]\n\
	str r0, [sp, #4]\n\
	str r1, [sp, #8]\n\
	ldr r6, [sp, #8]\n\
	b _08068F3A\n\
_08068F36:\n\
	ldr r6, [r3, #0x10]\n\
	ldr r2, [r3, #8]\n\
_08068F3A:\n\
	movs r0, #0xc\n\
	ldrsh r1, [r3, r0]\n\
	cmp r4, #0\n\
	ble _08068F4C\n\
	ldr r3, [sp, #4]\n\
	lsls r0, r3, #0x10\n\
	asrs r0, r0, #0x10\n\
	adds r0, r0, r1\n\
	b _08068F4E\n\
_08068F4C:\n\
	adds r0, r1, #0\n\
_08068F4E:\n\
	adds r0, r2, r0\n\
	mov r1, sl\n\
	bl sub_0809194C\n\
	b _08068F86\n\
_08068F58:\n\
	mov r0, r8\n\
	ldr r3, [r0, #4]\n\
	subs r1, r5, #1\n\
	mov ip, r1\n\
	subs r6, r7, #1\n\
	cmp r5, r3\n\
	bge _08068F82\n\
	adds r0, r5, #1\n\
	subs r0, r3, r0\n\
	adds r4, r2, #4\n\
	cmp r0, #0\n\
	ble _08068F7C\n\
	adds r1, r0, #0\n\
_08068F72:\n\
	ldm r4!, {r0}\n\
	stm r2!, {r0}\n\
	subs r1, #1\n\
	cmp r1, #0\n\
	bne _08068F72\n\
_08068F7C:\n\
	subs r0, r3, #1\n\
	mov r2, r8\n\
	str r0, [r2, #4]\n\
_08068F82:\n\
	mov r5, ip\n\
	adds r7, r6, #0\n\
_08068F86:\n\
	adds r5, #1\n\
	cmp r5, r7\n\
	blt _08068F02\n\
_08068F8C:\n\
	mov r3, sb\n\
	ldrh r0, [r3]\n\
	subs r0, #1\n\
	strh r0, [r3]\n\
	lsls r0, r0, #0x10\n\
	cmp r0, #0\n\
	bgt _08068FB4\n\
	ldrh r1, [r3, #2]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08068FB4\n\
	ldr r1, [r3, #0x1c]\n\
	movs r2, #8\n\
	ldrsh r0, [r1, r2]\n\
	add r0, sb\n\
	ldr r2, [r1, #0xc]\n\
	movs r1, #3\n\
	bl _call_via_r2\n\
_08068FB4:\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
    ");
}

NAKED
void Base::releaseIncoming() {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	str r0, [sp, #4]\n\
	movs r3, #0\n\
	adds r1, r0, #0\n\
	adds r1, #4\n\
	ldr r0, [r1, #4]\n\
	cmp r3, r0\n\
	bge _0806906E\n\
	mov sl, r1\n\
_08068FE0:\n\
	lsls r0, r3, #4\n\
	mov r2, sl\n\
	ldr r1, [r2, #8]\n\
	adds r1, r1, r0\n\
	adds r1, #4\n\
	mov r8, r1\n\
	movs r2, #0\n\
	ldr r0, [r1, #4]\n\
	adds r3, #1\n\
	str r3, [sp, #8]\n\
	cmp r2, r0\n\
	bge _08069064\n\
_08068FF8:\n\
	lsls r1, r2, #2\n\
	mov r3, r8\n\
	ldr r0, [r3, #8]\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	str r0, [sp]\n\
	adds r2, #1\n\
	mov sb, r2\n\
	cmp r0, #0\n\
	beq _0806905A\n\
	ldr r0, [r0, #8]\n\
	adds r6, r0, #0\n\
	adds r6, #0x10\n\
	mov r7, sp\n\
	movs r5, #0\n\
	ldr r2, [r6, #4]\n\
	cmp r5, r2\n\
	bge _08069054\n\
	ldr r0, [r6, #8]\n\
	adds r4, r0, #4\n\
	adds r3, r0, #0\n\
_08069022:\n\
	ldr r1, [r3]\n\
	ldr r0, [r7]\n\
	cmp r1, r0\n\
	bne _08069048\n\
	adds r0, r5, #1\n\
	subs r0, r2, r0\n\
	adds r1, r3, #0\n\
	ldr r3, [r6, #4]\n\
	cmp r0, #0\n\
	ble _08069042\n\
	adds r2, r0, #0\n\
_08069038:\n\
	ldm r4!, {r0}\n\
	stm r1!, {r0}\n\
	subs r2, #1\n\
	cmp r2, #0\n\
	bne _08069038\n\
_08069042:\n\
	subs r0, r3, #1\n\
	str r0, [r6, #4]\n\
	b _08069054\n\
_08069048:\n\
	adds r4, #4\n\
	adds r3, #4\n\
	adds r5, #1\n\
	ldr r2, [r6, #4]\n\
	cmp r5, r2\n\
	blt _08069022\n\
_08069054:\n\
	ldr r0, [sp]\n\
	bl __builtin_delete\n\
_0806905A:\n\
	mov r2, sb\n\
	mov r1, r8\n\
	ldr r0, [r1, #4]\n\
	cmp r2, r0\n\
	blt _08068FF8\n\
_08069064:\n\
	ldr r3, [sp, #8]\n\
	mov r2, sl\n\
	ldr r0, [r2, #4]\n\
	cmp r3, r0\n\
	blt _08068FE0\n\
_0806906E:\n\
	movs r0, #0\n\
	ldr r3, [sp, #4]\n\
	str r0, [r3, #8]\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
    ");
}

NAKED
void Base::releaseOutgoing() {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	sub sp, #4\n\
	mov sb, r0\n\
	movs r4, #0\n\
	mov r1, sb\n\
	adds r1, #0x10\n\
	ldr r0, [r1, #4]\n\
	cmp r4, r0\n\
	bge _0806910E\n\
	mov r8, r1\n\
_0806909E:\n\
	lsls r0, r4, #2\n\
	mov r2, r8\n\
	ldr r1, [r2, #8]\n\
	adds r1, r1, r0\n\
	ldr r1, [r1]\n\
	str r1, [sp]\n\
	ldr r0, [r1]\n\
	adds r0, #4\n\
	movs r3, #0\n\
	ldr r2, [r0, #4]\n\
	adds r7, r4, #1\n\
	cmp r3, r2\n\
	bge _080690D0\n\
	ldr r4, [r1, #4]\n\
	adds r1, r2, #0\n\
	ldr r2, [r0, #8]\n\
_080690BE:\n\
	ldr r0, [r2]\n\
	cmp r0, r4\n\
	bne _080690C8\n\
	adds r0, r2, #4\n\
	b _080690D2\n\
_080690C8:\n\
	adds r2, #0x10\n\
	adds r3, #1\n\
	cmp r3, r1\n\
	blt _080690BE\n\
_080690D0:\n\
	movs r0, #0\n\
_080690D2:\n\
	movs r2, #0\n\
	ldr r3, [r0, #4]\n\
	ldr r6, [r0, #8]\n\
	cmp r2, r3\n\
	bge _080690F4\n\
	ldr r5, [sp]\n\
	adds r4, r3, #0\n\
	adds r1, r6, #0\n\
_080690E2:\n\
	ldr r0, [r1]\n\
	cmp r0, r5\n\
	bne _080690EC\n\
	adds r0, r2, #0\n\
	b _080690F6\n\
_080690EC:\n\
	adds r1, #4\n\
	adds r2, #1\n\
	cmp r2, r4\n\
	blt _080690E2\n\
_080690F4:\n\
	adds r0, r3, #0\n\
_080690F6:\n\
	lsls r0, r0, #2\n\
	adds r0, r6, r0\n\
	movs r1, #0\n\
	str r1, [r0]\n\
	ldr r0, [sp]\n\
	bl __builtin_delete\n\
	adds r4, r7, #0\n\
	mov r1, r8\n\
	ldr r0, [r1, #4]\n\
	cmp r4, r0\n\
	blt _0806909E\n\
_0806910E:\n\
	movs r0, #0\n\
	mov r2, sb\n\
	str r0, [r2, #0x14]\n\
	add sp, #4\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
    ");
}

NAKED
void Base::clearNullOutgoing() {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	movs r1, #0\n\
	adds r2, r0, #4\n\
	ldr r0, [r2, #4]\n\
	cmp r1, r0\n\
	bge _08069188\n\
	adds r7, r2, #0\n\
	ldr r0, [r7, #8]\n\
	mov ip, r0\n\
_08069136:\n\
	lsls r0, r1, #4\n\
	add r0, ip\n\
	adds r4, r0, #4\n\
	movs r3, #0\n\
	ldr r0, [r4, #4]\n\
	adds r6, r1, #1\n\
	cmp r3, r0\n\
	bge _08069180\n\
_08069146:\n\
	lsls r0, r3, #2\n\
	ldr r1, [r4, #8]\n\
	adds r1, r1, r0\n\
	ldr r0, [r1]\n\
	cmp r0, #0\n\
	bne _08069178\n\
	ldr r2, [r4, #4]\n\
	subs r5, r3, #1\n\
	cmp r3, r2\n\
	bge _08069176\n\
	adds r0, r3, #1\n\
	subs r0, r2, r0\n\
	adds r3, r1, #4\n\
	cmp r0, #0\n\
	ble _08069170\n\
	adds r2, r0, #0\n\
_08069166:\n\
	ldm r3!, {r0}\n\
	stm r1!, {r0}\n\
	subs r2, #1\n\
	cmp r2, #0\n\
	bne _08069166\n\
_08069170:\n\
	ldr r0, [r4, #4]\n\
	subs r0, #1\n\
	str r0, [r4, #4]\n\
_08069176:\n\
	adds r3, r5, #0\n\
_08069178:\n\
	adds r3, #1\n\
	ldr r0, [r4, #4]\n\
	cmp r3, r0\n\
	blt _08069146\n\
_08069180:\n\
	adds r1, r6, #0\n\
	ldr r0, [r7, #4]\n\
	cmp r1, r0\n\
	blt _08069136\n\
_08069188:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
    ");
}
