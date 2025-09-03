	.syntax unified
sub_08003024:
	ldr r2, _08003038
	ldr r1, [r2, #4]
	ldr r0, [r2]
	muls r0, r1, r0
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08003038: .4byte gUnknown_02015EB0
	.syntax divided
