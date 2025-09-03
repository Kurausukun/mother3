	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080877B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08066FE8
	movs r0, #0
	b _08066FF0
_08066FE8:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08066FF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
