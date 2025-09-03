	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_0800196C
	adds r0, r4, #0
	bl sub_080019A4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
