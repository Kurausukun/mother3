	.syntax unified
randS32:
	push {lr}
	bl randS32_
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
