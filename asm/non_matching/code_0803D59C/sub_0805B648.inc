	.syntax unified
sub_0805B648:
	ldr r2, [r0]
	ldr r3, [r1]
	adds r2, r2, r3
	str r2, [r0]
	ldrh r1, [r1, #4]
	ldrh r2, [r0, #4]
	adds r1, r1, r2
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
