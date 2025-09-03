	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806C894
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0806C884
	bl __builtin_vec_delete
_0806C884:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C894: .4byte vt_09F7F130
	.syntax divided
