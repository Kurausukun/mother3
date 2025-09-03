	.syntax unified
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0x28]
	bx lr
	.syntax divided
