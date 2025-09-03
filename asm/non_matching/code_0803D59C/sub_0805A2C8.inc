	.syntax unified
sub_0805A2C8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x54
	muls r0, r1, r0
	ldr r1, _0805A2D8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805A2D8: .4byte gUnknown_02018D74
	.syntax divided
