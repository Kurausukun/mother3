	.syntax unified
sub_08002FE8:
	ldr r2, _08003000
	ldr r1, [r2]
	lsls r1, r1, #1
	ldr r0, _08003004
	ldrh r0, [r0]
	adds r0, r0, r1
	lsrs r1, r1, #8
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08003000: .4byte gUnknown_02015EA8
_08003004: .4byte 0x04000006
	.syntax divided
