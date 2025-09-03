	.syntax unified
get_obj_direct:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xd0
	muls r0, r1, r0
	ldr r1, _08036BE8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08036BE8: .4byte gUnknown_0200C3C8
	.syntax divided
