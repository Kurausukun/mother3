	.syntax unified
sub_08081F8C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r0, #0x9c
	movs r1, #0
	bl sub_0806D540
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0x1f
	ands r2, r0
	movs r3, #0xf8
	lsls r3, r3, #2
	ands r3, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r0, r1
	lsls r2, r2, #3
	strb r2, [r5]
	lsrs r3, r3, #2
	strb r3, [r5, #1]
	lsrs r0, r0, #7
	strb r0, [r5, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
