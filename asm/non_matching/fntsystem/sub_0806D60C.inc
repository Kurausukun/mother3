	.syntax unified
	ldr r2, [r1, #4]
	lsrs r2, r2, #5
	strh r2, [r0, #8]
	ldr r1, [r1]
	str r1, [r0, #0xc]
	bx lr
	.syntax divided
