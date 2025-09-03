	.syntax unified
sub_08054FCC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _08054FDC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08054FDC: .4byte gCharStats
	.syntax divided
