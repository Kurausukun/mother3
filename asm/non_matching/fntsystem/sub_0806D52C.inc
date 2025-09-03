	.syntax unified
sub_0806D52C:
	ldr r1, [r1]
	ldrh r2, [r1, #8]
	strh r2, [r0, #2]
	adds r1, #0xc
	str r1, [r0, #4]
	bx lr
	.syntax divided
