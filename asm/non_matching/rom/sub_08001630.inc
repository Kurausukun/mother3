	.syntax unified
sub_08001630:
	ldrb r3, [r0, #0xe]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	strb r2, [r0, #0xe]
	movs r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	.syntax divided
