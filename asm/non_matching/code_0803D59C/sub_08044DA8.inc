	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r2, #0
	ldr r6, _08044DEC
	ldr r1, _08044DF0
	adds r0, r6, r1
	strh r2, [r0]
	ldr r0, _08044DF4
	ldr r3, _08044DF8
	adds r1, r0, r3
	ldrh r0, [r1]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bhi _08044E00
	ldrh r0, [r1]
	movs r1, #0x1e
	bl Divide
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	bl sub_0805534C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08055558
	ldr r2, _08044DFC
	adds r1, r6, r2
	b _08044E6E
	.align 2, 0
_08044DEC: .4byte gSomeBlend
_08044DF0: .4byte 0x000044EE
_08044DF4: .4byte gUnknown_0200F920
_08044DF8: .4byte 0x00006470
_08044DFC: .4byte 0x000044F0
_08044E00:
	ldr r3, _08044E10
	adds r0, r6, r3
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08044E14
	movs r0, #0xae
	b _08044E22
	.align 2, 0
_08044E10: .4byte 0x000044F2
_08044E14:
	ldr r1, _08044E2C
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08044E30
	movs r0, #0xaf
_08044E22:
	bl sub_080486A0
	adds r4, r0, #0
	b _08044E70
	.align 2, 0
_08044E2C: .4byte 0x000044F3
_08044E30:
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _08044E40
	adds r0, r2, #0
	bl sub_08055594
	adds r4, r0, #0
	b _08044E70
_08044E40:
	cmp r5, #0x69
	bne _08044E5C
	bl sub_0805548C
	adds r4, r0, #0
	movs r0, #0
	bl sub_08055558
	ldr r2, _08044E58
	adds r1, r6, r2
	b _08044E6E
	.align 2, 0
_08044E58: .4byte 0x000044F0
_08044E5C:
	movs r0, #0
	bl sub_0805534C
	adds r4, r0, #0
	movs r0, #0
	bl sub_08055558
	ldr r3, _08044E80
	adds r1, r6, r3
_08044E6E:
	strh r0, [r1]
_08044E70:
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x87
	bl sub_08047F28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044E80: .4byte 0x000044F0
	.syntax divided
