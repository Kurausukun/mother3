	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08066FC4
	movs r0, #0
	b _08066FCC
_08066FC4:
	adds r0, r4, #0
	bl sub_08067304
	movs r0, #1
_08066FCC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
