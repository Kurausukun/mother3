	.syntax unified
	ldrb r2, [r0]
	ldrb r3, [r1]
	subs r2, r2, r3
	strb r2, [r0]
	ldrb r2, [r0, #1]
	ldrb r3, [r1, #1]
	subs r2, r2, r3
	strb r2, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r3, [r1, #2]
	subs r2, r2, r3
	strb r2, [r0, #2]
	ldrb r2, [r0, #3]
	ldrb r3, [r1, #3]
	subs r2, r2, r3
	strb r2, [r0, #3]
	ldrb r2, [r0, #4]
	ldrb r1, [r1, #4]
	subs r2, r2, r1
	strb r2, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
