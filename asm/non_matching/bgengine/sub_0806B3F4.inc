	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r2, [r0, #0x34]
	movs r1, #2
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0
	.syntax divided
