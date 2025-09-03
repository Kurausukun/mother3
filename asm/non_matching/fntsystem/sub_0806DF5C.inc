	.syntax unified
	ldr r1, [r1]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
	.syntax divided
