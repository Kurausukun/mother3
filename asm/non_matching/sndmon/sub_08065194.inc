	.syntax unified
	lsls r0, r0, #0x10
	ldr r2, _080651A0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080651A0: .4byte gUnknown_02003CC0
	.syntax divided
