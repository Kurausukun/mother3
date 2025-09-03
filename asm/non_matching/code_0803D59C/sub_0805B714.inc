	.syntax unified
	ldrb r2, [r1]
	ldrb r3, [r0]
	adds r2, r2, r3
	strb r2, [r0]
	ldrb r2, [r1, #1]
	ldrb r3, [r0, #1]
	adds r2, r2, r3
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r3, [r0, #2]
	adds r2, r2, r3
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	ldrb r3, [r0, #3]
	adds r2, r2, r3
	strb r2, [r0, #3]
	ldrb r1, [r1, #4]
	ldrb r2, [r0, #4]
	adds r1, r1, r2
	strb r1, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
