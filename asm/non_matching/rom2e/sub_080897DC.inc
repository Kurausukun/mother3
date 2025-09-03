	.syntax unified
	push {lr}
	str r1, [r0, #0x30]
	bl sub_080898CC
	pop {r0}
	bx r0
	.syntax divided
