	.syntax unified
sub_08003D34:
	lsls r0, r0, #0x10
	ldr r1, _08003D44
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08003D44: .4byte gUnknown_02015ED8
	.syntax divided
