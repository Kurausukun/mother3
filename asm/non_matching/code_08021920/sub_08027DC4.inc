	.syntax unified
sub_08027DC4:
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08027DF4
	lsls r4, r4, #1
	adds r4, r0, r4
	ldrh r1, [r4]
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
