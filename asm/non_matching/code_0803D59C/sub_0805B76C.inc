	.syntax unified
sub_0805B76C:
	push {r4, r5, r6, lr}
	ldrb r5, [r1]
	ldrb r2, [r0]
	adds r5, r5, r2
	ldrb r4, [r1, #1]
	ldrb r6, [r0, #1]
	adds r4, r4, r6
	ldrb r3, [r1, #2]
	ldrb r2, [r0, #2]
	adds r3, r3, r2
	ldrb r2, [r1, #3]
	ldrb r6, [r0, #3]
	adds r2, r2, r6
	ldrb r1, [r1, #4]
	ldrb r6, [r0, #4]
	adds r1, r1, r6
	strb r5, [r0]
	strb r4, [r0, #1]
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	strb r1, [r0, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
