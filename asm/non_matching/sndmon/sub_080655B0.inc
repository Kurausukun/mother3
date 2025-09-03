	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r5, r0, #0
	adds r4, #0xfc
	adds r0, r4, #0
	bl sub_0806D648
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806C0B4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
