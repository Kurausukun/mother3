	.syntax unified
	push {lr}
	ldr r1, _0803D068
	movs r2, #0x80
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803D068: .4byte gUnknown_0200F888
	.syntax divided
