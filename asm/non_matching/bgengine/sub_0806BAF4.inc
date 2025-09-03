	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldrh r1, [r0, #0x34]
	movs r0, #1
	ands r0, r1
	bx lr
	.syntax divided
