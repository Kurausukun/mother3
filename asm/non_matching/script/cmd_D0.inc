	.syntax unified
cmd_D0:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl scriptstack_push
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
