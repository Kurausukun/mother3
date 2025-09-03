	.syntax unified
sub_08009C68:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08009C80
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08009C80: .4byte gUnknown_0201E9D0
	.syntax divided
