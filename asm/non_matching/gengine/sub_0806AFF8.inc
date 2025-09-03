	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.syntax divided
