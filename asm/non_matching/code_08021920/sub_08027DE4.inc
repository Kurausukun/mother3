	.syntax unified
sub_08027DE4:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0xa
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	bx lr
	.syntax divided
