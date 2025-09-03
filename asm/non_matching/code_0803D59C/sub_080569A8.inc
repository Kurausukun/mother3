	.syntax unified
	ldr r1, _080569B0
	movs r0, #2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080569B0: .4byte 0x04000202
	.syntax divided
