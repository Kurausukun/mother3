	.syntax unified
sub_08086808:
	ldrh r1, [r0, #0x2c]
	movs r0, #1
	ands r0, r1
	bx lr
	.syntax divided
