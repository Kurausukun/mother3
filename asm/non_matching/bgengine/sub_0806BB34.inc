	.syntax unified
sub_0806BB34:
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #3
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1, #0x58]
	str r1, [r0]
	bx lr
	.syntax divided
