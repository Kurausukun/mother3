	.syntax unified
sub_0805A408:
	ldr r0, _0805A414
	ldrb r1, [r0, #0xc]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0805A414: .4byte gUnknown_02015DE0
	.syntax divided
