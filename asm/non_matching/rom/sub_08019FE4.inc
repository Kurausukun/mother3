	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801A008
	ldr r1, _0801A00C
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801A010
	adds r5, r0, r1
	ldrb r0, [r5]
	cmp r0, #0xf0
	bne _0801A014
	movs r3, #0xf
	movs r1, #0xf2
	b _0801A040
	.align 2, 0
_0801A008: .4byte gGame
_0801A00C: .4byte 0x000067AC
_0801A010: .4byte gTownMapInfoTable
_0801A014:
	cmp r0, #0xef
	beq _0801A02C
	cmp r0, #0xee
	bne _0801A032
	movs r0, #3
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	cmp r0, #0xff
	bne _0801A02E
_0801A02C:
	movs r3, #0x10
_0801A02E:
	movs r1, #0xf1
	b _0801A040
_0801A032:
	ldrb r1, [r5]
	adds r0, r1, #0
	subs r0, #0xf1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, #0
	beq _0801A050
_0801A040:
	ldr r0, _0801A054
	adds r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0801A058
	cmp r0, #0
	bne _0801A058
_0801A050:
	movs r0, #0
	b _0801A1A4
	.align 2, 0
_0801A054: .4byte gSave
_0801A058:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0801A0A4
	adds r6, r0, r1
	ldr r7, _0801A0A8
	ldr r2, _0801A0AC
	adds r0, r7, r2
	movs r2, #0
	strh r3, [r0]
	ldrh r1, [r6]
	ldr r3, _0801A0B0
	adds r0, r7, r3
	strh r1, [r0]
	ldr r1, _0801A0B4
	adds r0, r7, r1
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r2, _0801A0B8
	adds r1, r7, r2
	ldrh r0, [r6, #8]
	strh r0, [r1]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #2]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _0801A0BC
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0801A0BC
	ldrh r2, [r5, #8]
	cmp r2, #0
	bne _0801A0BC
	subs r3, #0x1a
	adds r0, r7, r3
	strh r2, [r0]
	strh r2, [r0, #2]
	b _0801A1A2
	.align 2, 0
_0801A0A4: .4byte gTownMapSizeTable
_0801A0A8: .4byte gSomeBlend
_0801A0AC: .4byte 0x00003684
_0801A0B0: .4byte 0x00003686
_0801A0B4: .4byte 0x00003670
_0801A0B8: .4byte 0x00003674
_0801A0BC:
	ldrh r0, [r5, #6]
	ldrh r3, [r5, #2]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	ldrh r1, [r5, #8]
	ldrh r2, [r5, #4]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x11
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r5, _0801A110
	lsrs r1, r1, #0x11
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldr r1, _0801A114
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r0, r8
	orrs r0, r2
	mov r8, r0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r4, r5
	orrs r4, r0
	mov r2, r8
	asrs r0, r2, #0x10
	subs r0, #0x50
	lsls r0, r0, #0x10
	ands r4, r1
	orrs r4, r0
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _0801A10C
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0801A118
_0801A10C:
	ands r4, r5
	b _0801A13C
	.align 2, 0
_0801A110: .4byte 0xFFFF0000
_0801A114: .4byte 0x0000FFFF
_0801A118:
	movs r0, #8
	ldrsh r2, [r6, r0]
	lsls r0, r2, #3
	cmp r1, r0
	blt _0801A126
	lsls r0, r2, #0x13
	b _0801A136
_0801A126:
	adds r0, r1, #0
	adds r0, #0xf0
	ldrh r1, [r6, #2]
	cmp r0, r1
	blt _0801A13C
	adds r0, r1, #0
	subs r0, #0xf0
	lsls r0, r0, #0x10
_0801A136:
	lsrs r0, r0, #0x10
	ands r4, r5
	orrs r4, r0
_0801A13C:
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0801A14C
	asrs r3, r4, #0x10
	adds r2, r3, #0
	cmp r2, #0
	bge _0801A158
_0801A14C:
	ldr r0, _0801A154
	ands r4, r0
	b _0801A186
	.align 2, 0
_0801A154: .4byte 0x0000FFFF
_0801A158:
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	lsls r0, r1, #3
	cmp r2, r0
	blt _0801A170
	lsls r1, r1, #0x13
	ldr r0, _0801A16C
	ands r4, r0
	orrs r4, r1
	b _0801A186
	.align 2, 0
_0801A16C: .4byte 0x0000FFFF
_0801A170:
	adds r0, r2, #0
	adds r0, #0xa0
	ldrh r1, [r6, #4]
	cmp r0, r1
	blt _0801A186
	adds r0, r1, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	ldr r1, _0801A1B0
	ands r4, r1
	orrs r4, r0
_0801A186:
	ldr r1, _0801A1B4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801A192
	adds r0, #7
_0801A192:
	asrs r0, r0, #3
	strh r0, [r1]
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0801A19E
	adds r0, #7
_0801A19E:
	asrs r0, r0, #3
	strh r0, [r1, #2]
_0801A1A2:
	movs r0, #1
_0801A1A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A1B0: .4byte 0x0000FFFF
_0801A1B4: .4byte gUnknown_02019694
	.syntax divided
