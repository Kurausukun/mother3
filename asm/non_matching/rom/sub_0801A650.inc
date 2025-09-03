	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_0801A678
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0801A694
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
