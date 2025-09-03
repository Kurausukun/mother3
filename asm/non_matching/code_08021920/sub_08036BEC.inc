	.syntax unified
sub_08036BEC:
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	strh r2, [r1]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	.syntax divided
