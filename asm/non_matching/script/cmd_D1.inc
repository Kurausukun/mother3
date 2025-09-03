	.syntax unified
cmd_D1:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xa
	bl sub_080274AC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
