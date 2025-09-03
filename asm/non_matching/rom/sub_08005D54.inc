	.syntax unified
sub_08005D54:
	push {r4, r5, r6, lr}
	bl sub_08005A70
	ldr r1, _08005F20
	ldr r4, _08005F24
	ldr r2, _08005F28
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	strh r3, [r1]
	ldr r1, _08005F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	strh r0, [r1]
	ldr r2, _08005F30
	ldr r1, _08005F34
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F38
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F3C
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F40
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r2, _08005F44
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	ldr r0, _08005F48
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	strh r1, [r0]
	cmp r3, #0
	beq _08005DDE
	ldr r2, _08005F4C
	ldrh r0, [r2]
	ldrh r1, [r4, #0x26]
	strh r0, [r4, #0x26]
	ldr r0, _08005F50
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005DDE
	ldr r0, _08005F54
	ldrh r0, [r0]
	cmp r0, #0
	bne _08005DDE
	ldr r0, _08005F58
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_08001A14
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080019DC
_08005DDE:
	ldr r0, _08005F2C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E0A
	ldr r4, _08005F5C
	ldr r5, _08005F60
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08001A14
	ldr r1, _08005F64
	adds r0, r4, r1
	ldrh r1, [r5]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080019DC
_08005E0A:
	ldr r0, _08005F30
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E2C
	ldr r4, _08005F68
	ldr r5, _08005F6C
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r2, _08005F70
	adds r4, r4, r2
	ldrh r0, [r5]
	ldrh r1, [r4, #0x14]
	strh r0, [r4, #0x14]
_08005E2C:
	ldr r0, _08005F38
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E4E
	ldr r4, _08005F74
	ldr r5, _08005F78
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r0, _08005F7C
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrh r1, [r4, #0x16]
	strh r0, [r4, #0x16]
_08005E4E:
	ldr r0, _08005F3C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E70
	ldr r4, _08005F80
	ldr r5, _08005F84
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r1, _08005F88
	adds r4, r4, r1
	ldrh r0, [r5]
	ldrh r1, [r4, #0x18]
	strh r0, [r4, #0x18]
_08005E70:
	ldr r0, _08005F40
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005E92
	ldr r4, _08005F8C
	ldr r5, _08005F90
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r2, _08005F94
	adds r4, r4, r2
	ldrh r0, [r5]
	ldrh r1, [r4, #0x1c]
	strh r0, [r4, #0x1c]
_08005E92:
	ldr r0, _08005F44
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005EB4
	ldr r4, _08005F98
	ldr r5, _08005F9C
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r0, _08005FA0
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrh r1, [r4, #0x1e]
	strh r0, [r4, #0x1e]
_08005EB4:
	ldr r0, _08005F48
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005ED6
	ldr r4, _08005FA4
	ldr r5, _08005FA8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001A14
	ldr r1, _08005FAC
	adds r4, r4, r1
	ldrh r0, [r5]
	ldrh r1, [r4, #0x20]
	strh r0, [r4, #0x20]
_08005ED6:
	ldr r0, _08005FB0
	ldrb r1, [r0, #1]
	movs r0, #5
	ands r0, r1
	cmp r0, #1
	beq _08005F1A
	ldr r2, _08005F24
	ldr r0, _08005F28
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3]
	ldr r1, _08005F34
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
_08005F1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005F20: .4byte gUnknown_03004AF0
_08005F24: .4byte gSomeBlend
_08005F28: .4byte 0x0001ED10
_08005F2C: .4byte gUnknown_03004AF2
_08005F30: .4byte gUnknown_03004AF4
_08005F34: .4byte 0x0001ED11
_08005F38: .4byte gUnknown_03004AF6
_08005F3C: .4byte gUnknown_03004AF8
_08005F40: .4byte gUnknown_03004AFA
_08005F44: .4byte gUnknown_03004AFC
_08005F48: .4byte gUnknown_03004AFE
_08005F4C: .4byte gUnknown_030040F0
_08005F50: .4byte gUnknown_02000000
_08005F54: .4byte gUnknown_02000002
_08005F58: .4byte 0x00013210
_08005F5C: .4byte gUnknown_02029378
_08005F60: .4byte gUnknown_03004230
_08005F64: .4byte 0xFFFECCB0
_08005F68: .4byte gUnknown_0202A6F8
_08005F6C: .4byte gUnknown_03004370
_08005F70: .4byte 0xFFFEB930
_08005F74: .4byte gUnknown_0202A838
_08005F78: .4byte gUnknown_030044B0
_08005F7C: .4byte 0xFFFEB7F0
_08005F80: .4byte gUnknown_0202A978
_08005F84: .4byte gUnknown_030045F0
_08005F88: .4byte 0xFFFEB6B0
_08005F8C: .4byte gUnknown_0202AAB8
_08005F90: .4byte gUnknown_03004730
_08005F94: .4byte 0xFFFEB570
_08005F98: .4byte gUnknown_0202ABF8
_08005F9C: .4byte gUnknown_03004870
_08005FA0: .4byte 0xFFFEB430
_08005FA4: .4byte gUnknown_0202AD38
_08005FA8: .4byte gUnknown_030049B0
_08005FAC: .4byte 0xFFFEB2F0
_08005FB0: .4byte gGame
	.syntax divided
