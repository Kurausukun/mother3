	.syntax unified
	push {lr}
	adds r0, #8
	ldr r1, _08034FDC
	cmp r0, r1
	blo _08034FD6
	ldr r2, _08034FE0
	adds r0, r1, r2
_08034FD6:
	pop {r1}
	bx r1
	.align 2, 0
_08034FDC: .4byte gUnknown_0200DE08
_08034FE0: .4byte 0xFFFFFB00
	.syntax divided
