	.syntax unified
sub_08054FE0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08054FEC
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08054FEC: .4byte gUnknown_02018CD8
	.syntax divided
