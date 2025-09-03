	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x38
	adds r0, r0, r1
	strb r2, [r0]
	bx lr
	.syntax divided
