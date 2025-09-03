	.syntax unified
	lsls r0, r0, #0x10
	ldr r2, _0805EFF8
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0805EFF8: .4byte gUnknown_02002018
	.syntax divided
