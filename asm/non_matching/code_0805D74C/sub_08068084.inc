	.syntax unified
sub_08068084:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08068098
	movs r0, #0
	b _080680A6
_08068098:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680A6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
