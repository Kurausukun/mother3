	.syntax unified
	push {lr}
	adds r0, r1, #0
	bl sub_080019A4
	pop {r0}
	bx r0
	.syntax divided
