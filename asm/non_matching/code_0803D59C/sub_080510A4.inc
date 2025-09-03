	.syntax unified
	mov ip, r0
	adds r0, #0x68
	movs r3, #0
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r2, [r0]
	bx lr
	.align 2, 0
	.syntax divided
