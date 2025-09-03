	.syntax unified
	push {r4, r5, r6, lr}
	ldrb r6, [r0]
	ldrb r2, [r1]
	subs r6, r6, r2
	ldrb r5, [r0, #1]
	ldrb r2, [r1, #1]
	subs r5, r5, r2
	ldrb r4, [r0, #2]
	ldrb r2, [r1, #2]
	subs r4, r4, r2
	ldrb r3, [r0, #3]
	ldrb r2, [r1, #3]
	subs r3, r3, r2
	ldrb r2, [r0, #4]
	ldrb r1, [r1, #4]
	subs r2, r2, r1
	strb r6, [r0]
	strb r5, [r0, #1]
	strb r4, [r0, #2]
	strb r3, [r0, #3]
	strb r2, [r0, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
