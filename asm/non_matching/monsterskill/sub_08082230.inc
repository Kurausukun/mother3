	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl __3Msg
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
