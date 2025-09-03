	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0805F11A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805F11A:
	ldr r0, _0805F130
	bl __builtin_new
	adds r1, r5, #0
	bl sub_0806EDF0
	str r0, [r4, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F130: .4byte 0x00000544
	.syntax divided
