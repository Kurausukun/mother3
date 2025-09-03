	.syntax unified
sub_0803E3EC:
	ldr r0, _0803E3FC
	ldr r1, _0803E400
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803E3FC: .4byte gUnknown_0200F920
_0803E400: .4byte 0x00006478
	.syntax divided
