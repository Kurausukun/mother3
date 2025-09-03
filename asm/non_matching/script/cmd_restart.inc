	.syntax unified
	push {lr}
	bl DoReset
	movs r0, #1
	pop {r1}
	bx r1
	.syntax divided
