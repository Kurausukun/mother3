	.syntax unified
	movs r2, #0x2e
	strb r2, [r0]
	ldrh r3, [r1]
	adds r0, #4
	movs r2, #0x2f
	strb r2, [r0]
	adds r0, #4
	movs r2, #0x30
	strb r2, [r0]
	movs r2, #0x31
	strb r2, [r0, #4]
	adds r3, #4
	strh r3, [r1]
	bx lr
	.syntax divided
