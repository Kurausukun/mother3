	.syntax unified
sub_08087144:
	ldrh r1, [r0, #0x2a]
	movs r0, #1
	ands r0, r1
	bx lr
	.syntax divided
