	.syntax unified
sub_0806E34C:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldrh r1, [r4, #6]
	adds r1, #1
	bl sub_0806E418
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	ldr r1, [r4]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	strh r5, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
