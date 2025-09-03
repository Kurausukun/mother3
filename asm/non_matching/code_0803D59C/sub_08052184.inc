	.syntax unified
sub_08052184:
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #4
	lsls r2, r1, #1
	adds r2, r2, r1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
	.syntax divided
