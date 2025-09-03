	.syntax unified
sub_0804BB10:
	ldrb r2, [r0, #9]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	strb r1, [r0, #9]
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	.syntax divided
