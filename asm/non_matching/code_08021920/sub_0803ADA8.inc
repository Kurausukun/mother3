	.syntax unified
sub_0803ADA8:
	ldr r2, _0803ADB8
	movs r1, #0x10
	strh r1, [r2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0803ADB8: .4byte gUnknown_02019630
	.syntax divided
