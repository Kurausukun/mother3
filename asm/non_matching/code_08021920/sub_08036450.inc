	.syntax unified
sub_08036450:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	cmp r4, #0
	beq _08036468
	cmp r4, #1
	beq _08036470
	b _0803647A
_08036468:
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r2, #0x40
	b _08036476
_08036470:
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r2, #0x80
_08036476:
	orrs r1, r2
	strb r1, [r0]
_0803647A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
