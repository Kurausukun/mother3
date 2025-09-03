	.syntax unified
sub_080680AC:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080877B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080680C0
	movs r0, #0
	b _080680CE
_080680C0:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680CE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
