	.syntax unified
sub_08006868:
	push {lr}
	ldr r0, _08006878
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080019DC
	pop {r0}
	bx r0
	.align 2, 0
_08006878: .4byte 0x06008000
	.syntax divided
