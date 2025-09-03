	.syntax unified
	ldr r1, [r1]
	str r1, [r0, #0x24]
	adds r0, #0x68
	ldrh r2, [r0]
	movs r1, #8
	orrs r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.syntax divided
