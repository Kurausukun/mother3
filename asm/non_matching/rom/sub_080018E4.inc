	.syntax unified
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
	bx lr
	.syntax divided
