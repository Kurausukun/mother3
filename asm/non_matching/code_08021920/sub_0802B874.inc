	.syntax unified
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802B888
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802B888: .4byte gUnknown_0200D818
	.syntax divided
