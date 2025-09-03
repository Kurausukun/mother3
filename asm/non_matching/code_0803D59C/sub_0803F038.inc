	.syntax unified
sub_0803F038:
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	movs r2, #0x31
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #0x7f
	ands r1, r2
	subs r2, #0xc0
	ands r1, r2
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.syntax divided
