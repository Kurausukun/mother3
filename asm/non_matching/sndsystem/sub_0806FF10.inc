	.syntax unified
	push {lr}
	bl m4aSoundVSync
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
