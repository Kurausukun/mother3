	.syntax unified
sub_08013578:
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0801AD4C
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801AD4C
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #8
	bl sub_08001B18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
