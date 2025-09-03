	.syntax unified
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	bx lr
	.syntax divided
