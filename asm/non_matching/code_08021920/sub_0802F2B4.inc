	.syntax unified
	adds r0, #0x96
	ldrh r1, [r1, #2]
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	ldr r1, _0802F2C8
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F2C8: .4byte gObjectContinue
	.syntax divided
