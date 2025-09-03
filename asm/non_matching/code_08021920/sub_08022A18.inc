	.syntax unified
sub_08022A18:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08022A38
	adds r0, r1, r2
	cmp r0, #0xc
	bls _08022A2C
	b _08022E3E
_08022A2C:
	lsls r0, r0, #2
	ldr r1, _08022A3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022A38: .4byte 0xFFFF0100
_08022A3C: .4byte _08022A40
_08022A40:
	.4byte _08022A74
	.4byte _08022AF0
	.4byte _08022C34
	.4byte _08022CA0
	.4byte _08022CC4
	.4byte _08022CDC
	.4byte _08022D38
	.4byte _08022D74
	.4byte _08022D84
	.4byte _08022E3E
	.4byte _08022E3E
	.4byte _08022DF4
	.4byte _08022E24
_08022A74:
	movs r3, #0xa2
	lsls r3, r3, #5
	adds r0, r4, r3
	ldrh r1, [r0]
	ldr r2, _08022AB4
	adds r0, r4, r2
	movs r2, #0
	strh r1, [r0]
	ldr r3, _08022AB8
	ldr r1, _08022ABC
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08022AC0
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022ADC
	ldr r0, _08022AC4
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022AC8
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08022AD4
	.align 2, 0
_08022AB4: .4byte 0x00001444
_08022AB8: .4byte gSomeBlend
_08022ABC: .4byte 0x00004AFE
_08022AC0: .4byte 0x00001446
_08022AC4: .4byte 0x00004B18
_08022AC8:
	ldr r1, _08022AE4
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08022AD4:
	ldr r2, _08022AE8
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
_08022ADC:
	ldr r0, _08022AEC
	adds r1, r3, r0
	movs r0, #0
	b _08022E3C
	.align 2, 0
_08022AE4: .4byte 0x00011C92
_08022AE8: .4byte 0x00001446
_08022AEC: .4byte 0x00011C90
_08022AF0:
	ldr r1, _08022B24
	adds r3, r4, r1
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08022B88
	ldr r1, _08022B28
	ldr r0, _08022B2C
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08022B30
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08022B1A
	b _08022E3E
_08022B1A:
	cmp r0, #1
	bgt _08022B34
	cmp r0, #0
	beq _08022B3A
	b _08022B88
	.align 2, 0
_08022B24: .4byte 0x00001490
_08022B28: .4byte gSomeBlend
_08022B2C: .4byte 0x00004B06
_08022B30: .4byte 0x00001491
_08022B34:
	cmp r0, #2
	beq _08022B54
	b _08022B88
_08022B3A:
	ldr r2, _08022B4C
	adds r0, r4, r2
	ldr r3, _08022B50
	adds r1, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08022B88
	b _08022E3E
	.align 2, 0
_08022B4C: .4byte 0x0000147E
_08022B50: .4byte 0x0000147C
_08022B54:
	movs r0, #0x20
	orrs r0, r2
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0xa2
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08022B80
	adds r0, r4, r2
	strh r1, [r0]
	ldr r3, _08022B84
	adds r0, r4, r3
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r5, [r0]
	b _08022E3E
	.align 2, 0
_08022B80: .4byte 0x00001444
_08022B84: .4byte 0x0000147E
_08022B88:
	movs r1, #0xa2
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08022BEC
	adds r0, r4, r2
	strh r1, [r0]
	ldr r5, _08022BF0
	ldr r0, _08022BF4
	adds r3, r5, r0
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r1, _08022BF8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _08022BC2
	ldr r0, _08022BFC
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r3]
	movs r0, #0
	bl sub_0802400C
_08022BC2:
	ldr r2, _08022C00
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022C18
	ldr r3, _08022BFC
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022C04
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08022C10
	.align 2, 0
_08022BEC: .4byte 0x00001444
_08022BF0: .4byte gSomeBlend
_08022BF4: .4byte 0x00004AFE
_08022BF8: .4byte 0x00001476
_08022BFC: .4byte 0x00004B18
_08022C00: .4byte 0x00001446
_08022C04:
	ldr r1, _08022C24
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08022C10:
	ldr r2, _08022C28
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
_08022C18:
	ldr r0, _08022C2C
	ldr r3, _08022C30
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	b _08022E3E
	.align 2, 0
_08022C24: .4byte 0x00011C92
_08022C28: .4byte 0x00001446
_08022C2C: .4byte gSomeBlend
_08022C30: .4byte 0x00011C90
_08022C34:
	ldr r0, _08022C84
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08022C44
	b _08022E3E
_08022C44:
	movs r0, #0x20
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08022C88
	ldr r2, _08022C8C
	adds r1, r0, r2
	ldr r3, _08022C90
	adds r0, r0, r3
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r2, r1, r0
	ldr r0, _08022C94
	adds r3, r4, r0
	strh r2, [r3]
	ldr r1, _08022C98
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08022C74
	b _08022E3E
_08022C74:
	adds r0, r2, #1
	ldr r2, _08022C9C
	adds r1, r4, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	b _08022E3E
	.align 2, 0
_08022C84: .4byte 0x00001490
_08022C88: .4byte gSomeBlend
_08022C8C: .4byte 0x00004ACE
_08022C90: .4byte 0x00004ACA
_08022C94: .4byte 0x00001482
_08022C98: .4byte 0x00001491
_08022C9C: .4byte 0x0000147C
_08022CA0:
	ldr r2, _08022CBC
	ldr r3, _08022CC0
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	bl sub_0802400C
	b _08022E3E
	.align 2, 0
_08022CBC: .4byte gSomeBlend
_08022CC0: .4byte 0x00004B18
_08022CC4:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r1, _08022CD4
	ldr r2, _08022CD8
	adds r1, r1, r2
	b _08022E3C
	.align 2, 0
_08022CD4: .4byte gSomeBlend
_08022CD8: .4byte 0x00004AF0
_08022CDC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	beq _08022D08
	cmp r3, #2
	bgt _08022CF6
	cmp r3, #1
	beq _08022CFC
	b _08022D28
_08022CF6:
	cmp r3, #3
	beq _08022D18
	b _08022D28
_08022CFC:
	ldr r1, _08022D04
	adds r0, r4, r1
	strb r3, [r0]
	b _08022E3E
	.align 2, 0
_08022D04: .4byte 0x00001474
_08022D08:
	ldr r2, _08022D14
	adds r1, r4, r2
	movs r0, #3
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D14: .4byte 0x00001474
_08022D18:
	ldr r3, _08022D24
	adds r1, r4, r3
	movs r0, #8
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D24: .4byte 0x00001474
_08022D28:
	ldr r0, _08022D34
	adds r1, r4, r0
	movs r0, #0xf
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D34: .4byte 0x00001474
_08022D38:
	ldr r1, _08022D68
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r2, _08022D6C
	adds r1, r4, r2
	movs r2, #0
	strh r0, [r1]
	ldr r3, _08022D70
	adds r0, r4, r3
	strh r2, [r0]
	movs r1, #0xa4
	lsls r1, r1, #5
	adds r0, r4, r1
	strh r2, [r0]
	adds r0, r5, #2
	str r0, [r4, #0xc]
	b _08022E3E
	.align 2, 0
_08022D68: .4byte 0x00001490
_08022D6C: .4byte 0x0000147C
_08022D70: .4byte 0x0000147E
_08022D74:
	ldr r2, _08022D80
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r2, #4
	b _08022E10
	.align 2, 0
_08022D80: .4byte 0x00001491
_08022D84:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #3
	beq _08022DC4
	cmp r0, #3
	bls _08022DB0
	ldr r2, _08022DA8
	adds r1, #0xe9
	ldr r3, _08022DAC
	adds r0, r2, r3
	strh r1, [r0]
	b _08022DCE
	.align 2, 0
_08022DA8: .4byte gSomeBlend
_08022DAC: .4byte 0x00004AF2
_08022DB0:
	ldr r2, _08022DBC
	adds r1, #0xe1
	ldr r3, _08022DC0
	adds r0, r2, r3
	strh r1, [r0]
	b _08022DCE
	.align 2, 0
_08022DBC: .4byte gSomeBlend
_08022DC0: .4byte 0x00004AF2
_08022DC4:
	ldr r2, _08022DE0
	ldr r0, _08022DE4
	adds r1, r2, r0
	ldr r0, _08022DE8
	strh r0, [r1]
_08022DCE:
	adds r3, r2, #0
	ldr r1, _08022DEC
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08022E3E
	ldr r2, _08022DF0
	adds r0, r3, r2
	b _08022E0C
	.align 2, 0
_08022DE0: .4byte gSomeBlend
_08022DE4: .4byte 0x00004AF2
_08022DE8: .4byte 0x0000FFFF
_08022DEC: .4byte 0x00004AF8
_08022DF0: .4byte 0x00004B19
_08022DF4:
	ldr r4, _08022E18
	adds r0, r4, #0
	movs r1, #2
	bl sub_0800A0A4
	ldr r3, _08022E1C
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _08022E3E
	ldr r1, _08022E20
	adds r0, r4, r1
_08022E0C:
	ldrb r1, [r0]
	movs r2, #0x10
_08022E10:
	orrs r1, r2
	strb r1, [r0]
	b _08022E3E
	.align 2, 0
_08022E18: .4byte gUnknown_0201B7A0
_08022E1C: .4byte 0xFFFFF380
_08022E20: .4byte 0xFFFFF3A1
_08022E24:
	ldr r3, _08022E48
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r2, _08022E4C
	adds r1, r4, r2
_08022E3C:
	strh r0, [r1]
_08022E3E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08022E48: .4byte 0x00001490
_08022E4C: .4byte 0x00001478
	.syntax divided
