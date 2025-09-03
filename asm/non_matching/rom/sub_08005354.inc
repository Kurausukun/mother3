	.syntax unified
	push {lr}
	bl nullsub_17
	bl nullsub_18
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
