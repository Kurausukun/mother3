	.syntax unified
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08001908
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08001908: .4byte 0x00007FFF
	.syntax divided
