	.syntax unified
sub_08002E34:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r3, #0
	beq _08002E56
	subs r0, r3, r1
	muls r0, r4, r0
	muls r1, r5, r1
	adds r0, r0, r1
	adds r1, r3, #0
	bl Divide
	b _08002E58
_08002E56:
	adds r0, r4, #0
_08002E58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
