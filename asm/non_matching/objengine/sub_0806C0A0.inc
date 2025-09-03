	.syntax unified
	ldr r2, _0806C0B0
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C0B0: .4byte 0x00000944
	.syntax divided
