	.syntax unified
sub_080680D4:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808789C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080680E8
	movs r0, #0
	b _080680F0
_080680E8:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_080680F0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
