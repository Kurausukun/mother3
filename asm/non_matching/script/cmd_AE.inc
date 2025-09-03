	.syntax unified
cmd_AE:
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl scriptstack_push
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
