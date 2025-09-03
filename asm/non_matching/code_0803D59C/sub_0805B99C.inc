	.syntax unified
	ldr r2, _0805B9A8
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0805B9A8: .4byte gUnknown_09C90920
	.syntax divided
