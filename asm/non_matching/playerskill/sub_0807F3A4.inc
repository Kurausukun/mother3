	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0807F420
	str r0, [r6, #0x1c]
	movs r4, #0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _0807F3E2
	adds r5, r6, r1
_0807F3BE:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0807F3DA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F3DA:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0807F3BE
_0807F3E2:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0807F3FE
	bl __builtin_vec_delete
_0807F3FE:
	adds r0, r6, #0
	adds r0, #0x48
	movs r1, #2
	bl _._12TextAccessor
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0807F412
	bl __builtin_vec_delete
_0807F412:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F420: .4byte vt_09F82990
	.syntax divided
