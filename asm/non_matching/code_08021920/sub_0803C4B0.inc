	.syntax unified
sub_0803C4B0:
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803C4C0
	movs r2, #0x80
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803C4C0: .4byte gUnknown_0200F888
	.syntax divided
