	.syntax unified
cmd_set_gameover:
	push {lr}
	movs r0, #3
	bl sub_080038A4
	movs r0, #3
	bl sub_080052E4
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
