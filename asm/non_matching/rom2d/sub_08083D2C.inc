	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x90
	bl sub_0806EA18
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
