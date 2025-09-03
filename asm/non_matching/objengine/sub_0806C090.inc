	.syntax unified
	ldr r2, _0806C09C
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C09C: .4byte 0x00000834
	.syntax divided
