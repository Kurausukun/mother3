	.syntax unified
	push {lr}
	ldrh r1, [r1, #2]
	bl sub_0802F8A0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
