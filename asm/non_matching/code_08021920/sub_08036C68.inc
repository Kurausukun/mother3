	.syntax unified
sub_08036C68:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
