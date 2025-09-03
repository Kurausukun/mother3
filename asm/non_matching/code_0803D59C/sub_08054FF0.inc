	.syntax unified
sub_08054FF0:
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08055004
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08055004: .4byte gUnknown_02018D00
	.syntax divided
