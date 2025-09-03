	.syntax unified
sub_0800A090:
	push {lr}
	movs r0, #0
	movs r1, #1
	bl sub_08009C4C
	movs r1, #0x88
	bl memclear
	pop {r0}
	bx r0
	.syntax divided
