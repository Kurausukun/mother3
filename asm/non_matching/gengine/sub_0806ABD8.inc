	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r2]
	str r0, [r1, #0x40]
	bx lr
	.syntax divided
