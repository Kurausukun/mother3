	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldr r0, _08036098
	adds r0, r2, r0
	ldrb r4, [r0]
	ldr r0, _0803609C
	adds r2, r2, r0
	movs r3, #0
	ldrsb r3, [r2, r3]
	ldrb r2, [r5, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #2
	ands r0, r2
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x79
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x14]
	movs r0, #0
	strh r4, [r5, #2]
	strh r0, [r5, #0xa]
	cmp r3, #0
	ble _080360A0
	adds r0, r3, #0
	muls r0, r6, r0
	b _080360A8
	.align 2, 0
_08036098: .4byte gUnknown_08D2E0DC
_0803609C: .4byte gUnknown_08D2E0E8
_080360A0:
	rsbs r1, r3, #0
	adds r0, r6, #0
	bl __divsi3
_080360A8:
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #0
	bne _080360B4
	movs r0, #1
	strh r0, [r5]
_080360B4:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #0x74
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x22]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
