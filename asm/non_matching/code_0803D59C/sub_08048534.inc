	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	movs r1, #0xa4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl sub_080486D8
	bl sub_08002604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.syntax divided
