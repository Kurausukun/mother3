	.syntax unified
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.syntax divided
