	.syntax unified
sub_0806C028:
	movs r2, #0x83
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.syntax divided
