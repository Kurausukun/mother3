	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806B070
	ldrh r1, [r4, #0x2c]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_0806BA20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
