	.syntax unified
sub_0804D9FC:
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r4, _0804DA28
	ldr r1, _0804DA2C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804DA14
	b _0804DB3E
_0804DA14:
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804DA88
	ldr r0, _0804DA30
	ldrb r0, [r0]
	cmp r0, #7
	beq _0804DA34
	cmp r0, #8
	beq _0804DA3C
	b _0804DB3E
	.align 2, 0
_0804DA28: .4byte gSomeBlend
_0804DA2C: .4byte 0x000044F2
_0804DA30: .4byte gUnknown_02004100
_0804DA34:
	adds r0, r5, #0
	bl sub_0804F334
	b _0804DB3E
_0804DA3C:
	ldr r6, _0804DA74
	ldrh r0, [r5, #4]
	movs r4, #0x64
	muls r0, r4, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804DA80
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0804DA78
	ldrh r0, [r5, #4]
	muls r0, r4, r0
	adds r0, r0, r6
	adds r0, #0x29
	ldrb r0, [r0]
	ldr r2, _0804DA7C
	adds r1, r1, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08053EEC
	b _0804DB3E
	.align 2, 0
_0804DA74: .4byte gUnknown_020050C0
_0804DA78: .4byte gSave
_0804DA7C: .4byte 0x0000081E
_0804DA80:
	movs r0, #0xd6
	bl play_sound
	b _0804DB3E
_0804DA88:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DAB0
	movs r0, #0xd3
	bl play_sound
	ldr r0, _0804DAAC
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #7
	beq _0804DAA2
	movs r1, #5
_0804DAA2:
	adds r0, r1, #0
	bl sub_080506CC
	b _0804DB3E
	.align 2, 0
_0804DAAC: .4byte gUnknown_02004100
_0804DAB0:
	adds r0, r5, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #1
	bl sub_080534C8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804DB3E
	ldr r3, _0804DB10
	adds r1, r4, r3
	movs r0, #0x14
	strb r0, [r1]
	bl sub_08049DC4
	ldr r0, _0804DB14
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804DB18
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _0804DB28
	ldr r1, _0804DB1C
	adds r0, r1, #0
	adds r0, #0x29
	ldrb r2, [r0]
	ldr r3, _0804DB20
	adds r0, r4, r3
	strb r2, [r0]
	ldr r2, _0804DB24
	adds r0, r4, r2
	adds r1, #0x6c
	b _0804DB3C
	.align 2, 0
_0804DB10: .4byte 0x00004261
_0804DB14: .4byte 0x0000C5B4
_0804DB18: .4byte 0x0000C5B5
_0804DB1C: .4byte gUnknown_020050C0
_0804DB20: .4byte 0x0000C5C0
_0804DB24: .4byte 0x0000C5B8
_0804DB28:
	ldr r1, _0804DB48
	adds r0, r1, #0
	adds r0, #0x8d
	ldrb r2, [r0]
	ldr r3, _0804DB4C
	adds r0, r4, r3
	strb r2, [r0]
	ldr r2, _0804DB50
	adds r0, r4, r2
	adds r1, #8
_0804DB3C:
	str r1, [r0]
_0804DB3E:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DB48: .4byte gUnknown_020050C0
_0804DB4C: .4byte 0x0000C5C0
_0804DB50: .4byte 0x0000C5B8
	.syntax divided
