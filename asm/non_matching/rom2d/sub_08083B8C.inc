	.syntax unified
sub_08083B8C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.syntax divided
