	.syntax unified
	push {lr}
	bl randomMT
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
