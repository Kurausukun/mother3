	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _08057A74
	ldr r0, _08057A78
	adds r5, r4, r0
	ldrb r3, [r5]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08057A2C
	movs r2, #0xc
_08057A2C:
	ldr r1, _08057A7C
	adds r0, r4, r1
	movs r1, #0
	strb r2, [r0]
	ldr r6, _08057A80
	adds r0, r4, r6
	str r1, [r0]
	adds r6, #4
	adds r0, r4, r6
	str r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	subs r1, #3
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r5]
	cmp r2, #0x13
	bhi _08057A6C
	ldr r1, _08057A84
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08057A6C
	ldr r2, _08057A88
	adds r0, r4, r2
	bl _call_via_r1
_08057A6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057A74: .4byte gSomeBlend
_08057A78: .4byte 0x00002CF0
_08057A7C: .4byte 0x00002CE4
_08057A80: .4byte 0x00002CDC
_08057A84: .4byte gUnknown_09BCDCE0
_08057A88: .4byte 0x00002CB8
	.syntax divided
