	.syntax unified
	push {r4, r5, r6, lr}
	ldr r2, _080121CC
	movs r3, #0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r6, r2, r0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801217E:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x18
	bls _0801217E
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_080121A2:
	ldrb r0, [r2, #0x14]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0x14]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x18
	cmp r3, #0x13
	bls _080121A2
	bl sub_08012210
	movs r0, #1
	bl sub_08012238
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080121CC: .4byte gUnknown_0200B7D0
	.syntax divided
