	.syntax unified
	ldr r2, _0806C050
	adds r0, r0, r2
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C050: .4byte 0x00000834
	.syntax divided
