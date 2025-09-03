	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	adds r0, #0x24
	adds r1, r5, #0
	bl sub_0806D7DC
	adds r4, #0x90
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806E948
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
