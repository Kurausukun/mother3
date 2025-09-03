	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806D5A8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0806D594
	bl __builtin_vec_delete
_0806D594:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806D5A2
	adds r0, r4, #0
	bl __builtin_delete
_0806D5A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D5A8: .4byte vt_09F7FC40
	.syntax divided
