	.syntax unified
sub_0805B65C:
	ldr r2, [r0]
	ldr r3, [r1]
	subs r2, r2, r3
	str r2, [r0]
	ldrh r2, [r0, #4]
	ldrh r1, [r1, #4]
	subs r2, r2, r1
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
