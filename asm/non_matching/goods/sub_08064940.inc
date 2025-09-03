	.syntax unified
sub_08064940:
	lsls r0, r0, #0x10
	ldr r2, _0806494C
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0806494C: .4byte gUnknown_020034B0
	.syntax divided
