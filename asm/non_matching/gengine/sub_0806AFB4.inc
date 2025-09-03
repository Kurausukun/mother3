	.syntax unified
sub_0806AFB4:
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r1, r1, #0xf
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r1, [r0]
	ands r2, r1
	strh r2, [r0]
	bx lr
	.syntax divided
