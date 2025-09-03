	.syntax unified
	ldrb r2, [r0, #0xa]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0xa]
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #8]
	bx lr
	.syntax divided
