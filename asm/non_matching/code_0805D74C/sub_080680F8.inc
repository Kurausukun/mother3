	.syntax unified
sub_080680F8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080878E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806810C
	movs r0, #0
	b _08068114
_0806810C:
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068114:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
