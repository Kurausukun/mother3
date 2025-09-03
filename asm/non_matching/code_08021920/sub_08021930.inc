	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r5, _080219A0
	ldr r0, _080219A4
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0x96
	lsls r1, r1, #7
	adds r0, r5, r1
	movs r4, #0
	strh r4, [r0]
	ldr r2, _080219A8
	adds r0, r5, r2
	strh r4, [r0]
	ldr r7, _080219AC
	adds r1, r5, r7
	ldr r2, _080219B0
	adds r0, r5, r2
	mov r7, sb
	str r7, [r0]
	str r7, [r1]
	ldr r1, _080219B4
	adds r0, r5, r1
	movs r1, #0
	bl sub_0800A0A4
	ldr r2, _080219B8
	adds r0, r5, r2
	strh r4, [r0]
	ldr r7, _080219BC
	adds r0, r5, r7
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080219C8
	ldr r1, _080219C0
	adds r0, r5, r1
	movs r1, #1
	strh r1, [r0]
	ldr r2, _080219C4
	adds r0, r5, r2
	strh r1, [r0]
	b _080219DA
	.align 2, 0
_080219A0: .4byte gSomeBlend
_080219A4: .4byte 0x00004B18
_080219A8: .4byte 0x00004B02
_080219AC: .4byte 0x00003688
_080219B0: .4byte 0x0000368C
_080219B4: .4byte 0x00005778
_080219B8: .4byte 0x00011C90
_080219BC: .4byte 0x00004B19
_080219C0: .4byte 0x00004ACC
_080219C4: .4byte 0x00004AC8
_080219C8:
	ldr r7, _08021A7C
	adds r0, r5, r7
	movs r1, #1
	strh r1, [r0]
	strh r3, [r0, #2]
	ldr r2, _08021A80
	adds r0, r5, r2
	strh r1, [r0]
	strh r3, [r0, #2]
_080219DA:
	ldr r2, _08021A84
	ldr r7, _08021A88
	adds r4, r2, r7
	ldrb r1, [r4]
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r5, #9
	rsbs r5, r5, #0
	ands r0, r5
	movs r1, #0x11
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	adds r7, #1
	adds r7, r7, r2
	mov ip, r7
	ldrb r0, [r7]
	ands r3, r0
	ands r3, r5
	ldr r0, _08021A8C
	adds r1, r2, r0
	movs r4, #0
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _08021A90
	adds r5, r2, r1
	movs r6, #1
	strb r6, [r5]
	ldr r7, _08021A94
	adds r0, r2, r7
	movs r1, #0
	strh r4, [r0]
	adds r7, #0xe
	adds r0, r2, r7
	strb r1, [r0]
	ldr r1, _08021A98
	adds r0, r2, r1
	strh r4, [r0]
	adds r7, #8
	adds r0, r2, r7
	strh r4, [r0]
	adds r1, #4
	adds r0, r2, r1
	strh r4, [r0]
	adds r7, #4
	adds r0, r2, r7
	strh r4, [r0]
	ldr r0, _08021A9C
	adds r1, r2, r0
	ldr r0, _08021AA0
	strh r0, [r1]
	subs r7, #0x16
	adds r1, r2, r7
	movs r7, #5
	strh r7, [r1]
	ldr r0, _08021AA4
	adds r2, r2, r0
	str r4, [r2]
	mov r2, r8
	ands r3, r2
	mov r0, ip
	strb r3, [r0]
	ldr r0, _08021AA8
	ldrb r0, [r0, #8]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08021ABA
	cmp r0, #1
	bgt _08021AAC
	cmp r0, #0
	beq _08021AB2
	b _08021AC6
	.align 2, 0
_08021A7C: .4byte 0x00004AC8
_08021A80: .4byte 0x00004ACC
_08021A84: .4byte gSomeBlend
_08021A88: .4byte 0x00004B18
_08021A8C: .4byte 0x00004AFC
_08021A90: .4byte 0x00004AFD
_08021A94: .4byte 0x00004AF0
_08021A98: .4byte 0x00004B04
_08021A9C: .4byte 0x00004AF2
_08021AA0: .4byte 0x0000FFFF
_08021AA4: .4byte 0x00004AF8
_08021AA8: .4byte gGame
_08021AAC:
	cmp r0, #2
	beq _08021AC0
	b _08021AC6
_08021AB2:
	movs r0, #2
	strb r0, [r5]
	movs r0, #3
	b _08021AC4
_08021ABA:
	strb r6, [r5]
	strh r7, [r1]
	b _08021AC6
_08021AC0:
	strb r6, [r5]
	movs r0, #0xa
_08021AC4:
	strh r0, [r1]
_08021AC6:
	ldr r4, _08021AF0
	adds r0, r4, #0
	bl sub_080376EC
	ldr r0, _08021AF4
	movs r1, #0xc
	bl sub_0800289C
	str r0, [r4]
	ldr r1, _08021AF8
	adds r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_08021AFC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021AF0: .4byte gUnknown_0201AAE4
_08021AF4: .4byte gUnknown_09AF3790
_08021AF8: .4byte 0xFFFFEBCC
	.syntax divided
