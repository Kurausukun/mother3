	.syntax unified
	movs r2, #0
	movs r1, #2
	strh r1, [r0]
	movs r1, #0x4d
	strb r1, [r0, #2]
	movs r1, #0x33
	strb r1, [r0, #3]
	ldrh r1, [r0, #4]
	strh r2, [r0, #4]
	bx lr
	.syntax divided
