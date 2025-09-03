	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _0801A690
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0801A690: .4byte gGame
	.syntax divided
