	.syntax unified
sub_08009C4C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08009C64
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08009C64: .4byte gUnknown_0201B7A0
	.syntax divided
