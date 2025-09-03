	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
