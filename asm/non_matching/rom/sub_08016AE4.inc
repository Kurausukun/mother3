	.syntax unified
	ldr r0, _08016AF0
	ldrb r1, [r0, #2]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_08016AF0: .4byte gGame
	.syntax divided
