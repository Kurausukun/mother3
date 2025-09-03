	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _0802192C
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0802192C: .4byte gUnknown_08D2D658
	.syntax divided
