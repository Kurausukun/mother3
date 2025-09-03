	.syntax unified
sub_0803349C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbf
	ldrb r2, [r0]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.syntax divided
