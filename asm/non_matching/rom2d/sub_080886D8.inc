	.syntax unified
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr
	.syntax divided
