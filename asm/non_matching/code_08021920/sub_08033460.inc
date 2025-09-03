	.syntax unified
sub_08033460:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r1, #0x85
	ldrb r1, [r1]
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r0, r1, #0
	movs r1, #0
	bl sub_080332AC
	pop {r0}
	bx r0
	.syntax divided
