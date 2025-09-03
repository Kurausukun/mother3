	.syntax unified
	push {r4, lr}
	lsls r2, r2, #1
	adds r1, #0x28
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r3, #0x1f
	ands r3, r1
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r1, r2
	lsls r3, r3, #3
	strb r3, [r0]
	lsrs r4, r4, #2
	strb r4, [r0, #1]
	lsrs r1, r1, #7
	strb r1, [r0, #2]
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
