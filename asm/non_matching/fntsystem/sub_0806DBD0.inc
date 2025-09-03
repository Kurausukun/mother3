	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x74
	bl sub_08088678
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
