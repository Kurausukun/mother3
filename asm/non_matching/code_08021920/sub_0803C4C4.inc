	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803C4D8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803C4D8: .4byte gUnknown_0200F488
	.syntax divided
