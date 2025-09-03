	.syntax unified
sub_080875E8:
	lsls r1, r1, #2
	adds r0, #0x28
	adds r1, r0, r1
	ldr r3, [r1]
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r0]
	str r2, [r1]
	str r3, [r0]
	bx lr
	.syntax divided
