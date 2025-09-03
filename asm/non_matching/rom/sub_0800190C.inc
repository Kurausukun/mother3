	.syntax unified
	push {lr}
	adds r2, r1, #0
	adds r1, r0, #0
	adds r1, #8
	str r1, [r0, #0x10]
	str r2, [r0]
	adds r1, r2, #2
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r2, #0
	bl sub_080019DC
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
