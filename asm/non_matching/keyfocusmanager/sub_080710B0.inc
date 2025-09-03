	.syntax unified
	push {lr}
	adds r1, r0, #0
	bl sub_080710BC
	pop {r0}
	bx r0
	.syntax divided
