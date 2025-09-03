	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808796C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08068148
	movs r0, #0
	b _08068156
_08068148:
	adds r0, r4, #0
	bl sub_08068398
	adds r0, r4, #0
	bl sub_08068408
	movs r0, #1
_08068156:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
