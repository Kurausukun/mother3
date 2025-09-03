	.syntax unified
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _080139A8
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	bx lr
	.align 2, 0
_080139A8: .4byte gUnknown_0200B7D0
	.syntax divided
