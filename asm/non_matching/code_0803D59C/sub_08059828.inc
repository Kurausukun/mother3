	.syntax unified
	ldr r3, _08059838
	ldrb r1, [r3, #0x12]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0x12]
	ldr r1, _0805983C
	strh r0, [r1]
	bx lr
	.align 2, 0
_08059838: .4byte gUnknown_02015DC0
_0805983C: .4byte gUnknown_02004854
	.syntax divided
