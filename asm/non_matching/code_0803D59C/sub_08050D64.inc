	.syntax unified
	push {lr}
	ldr r0, _08050D78
	ldr r1, _08050D7C
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_08050D78: .4byte sub_080566C8
_08050D7C: .4byte gUnknown_03005714
	.syntax divided
