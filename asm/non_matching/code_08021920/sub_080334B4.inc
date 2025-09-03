	.syntax unified
sub_080334B4:
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r0, #0x8e
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
