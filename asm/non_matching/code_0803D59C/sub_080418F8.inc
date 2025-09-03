	.syntax unified
sub_080418F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r6, _08041AAC
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldr r1, _08041AB0
	ldr r2, _08041AB4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804197E
	ldr r3, _08041AB8
	adds r3, r3, r1
	mov sl, r3
	ldrh r0, [r3]
	cmp r0, #1
	bls _0804197E
	ldr r4, _08041ABC
	ldr r0, _08041AC0
	mov sb, r0
	ldr r1, _08041AC4
	adds r6, r6, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x16
	muls r1, r0, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	ands r0, r5
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_0804197E:
	movs r0, #0x78
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0xb8
	movs r2, #7
	bl sub_08047CDC
	ldr r0, _08041AC8
	ldrh r2, [r7, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	bl sub_080446E8
	ldr r2, _08041AB0
	ldr r1, _08041ACC
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0xf
	bhi _080419D0
	b _08041AEC
_080419D0:
	movs r3, #0x85
	lsls r3, r3, #7
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #6
	bls _080419DE
	movs r0, #6
_080419DE:
	adds r6, r0, #0
	ldrh r0, [r7, #8]
	lsls r0, r0, #2
	ldr r3, _08041AD0
	adds r1, r2, r3
	adds r5, r0, r1
	movs r4, #0
	cmp r4, r6
	bhs _08041A16
	ldr r0, _08041AD4
	adds r7, r2, r0
_080419F4:
	ldrb r0, [r5]
	ldrb r1, [r7]
	adds r2, r4, #0
	muls r2, r1, r2
	adds r2, #0x21
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xc0
	movs r3, #1
	bl sub_08045854
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #4
	cmp r4, r6
	blo _080419F4
_08041A16:
	ldr r6, _08041AB0
	ldr r1, _08041AB4
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041A4A
	movs r0, #0x83
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x26
	movs r2, #0x87
	bl sub_08047CDC
	ldr r3, _08041AD8
	adds r2, r6, r3
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08041A4A:
	ldr r1, _08041ADC
	adds r0, r6, r1
	ldr r2, _08041AE0
	adds r1, r6, r2
	ldrh r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	movs r2, #0x84
	lsls r2, r2, #7
	adds r5, r6, r2
	ldr r3, _08041AE4
	adds r0, r6, r3
	ldrh r0, [r0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xf
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	adds r0, r5, #0
	bl sub_080465F8
	ldrh r0, [r6, #0x14]
	movs r0, #0xc
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x1c]
	ldr r0, _08041AE8
	strh r0, [r6, #0x1c]
	b _08041C24
	.align 2, 0
_08041AAC: .4byte gUnknown_0200F920
_08041AB0: .4byte gSomeBlend
_08041AB4: .4byte 0x000041DA
_08041AB8: .4byte 0x00002DFA
_08041ABC: .4byte gUnknown_080C6530
_08041AC0: .4byte gUnknown_080C696C
_08041AC4: .4byte 0x00006474
_08041AC8: .4byte gUnknown_080C6260
_08041ACC: .4byte 0x0000426C
_08041AD0: .4byte 0x00003D44
_08041AD4: .4byte 0x0000C5A1
_08041AD8: .4byte 0x000044F3
_08041ADC: .4byte 0x000041F4
_08041AE0: .4byte 0x00002F04
_08041AE4: .4byte 0x00002F24
_08041AE8: .4byte 0x0000FFFF
_08041AEC:
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, _08041C34
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08041B18
	ldr r3, _08041C38
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041B0E
	adds r0, r4, #0
	bl sub_080444AC
_08041B0E:
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_08041B18:
	ldr r2, _08041C3C
	movs r1, #0x85
	lsls r1, r1, #7
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #6
	bls _08041B28
	movs r0, #6
_08041B28:
	adds r6, r0, #0
	ldrh r0, [r7, #8]
	lsls r0, r0, #2
	ldr r3, _08041C34
	adds r1, r2, r3
	adds r5, r0, r1
	movs r4, #0
	cmp r4, r6
	bhs _08041B64
	ldr r0, _08041C40
	adds r0, r0, r2
	mov r8, r0
_08041B40:
	ldrb r0, [r5]
	mov r2, r8
	ldrb r1, [r2]
	adds r2, r4, #0
	muls r2, r1, r2
	adds r2, #0x21
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xc0
	movs r3, #1
	bl sub_08045854
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #4
	cmp r4, r6
	blo _08041B40
_08041B64:
	ldr r5, _08041C44
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #8]
	subs r1, r1, r0
	ldr r3, _08041C48
	adds r3, r3, r5
	mov sb, r3
	ldr r2, _08041C4C
	adds r0, r5, r2
	ldrb r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, #0x17
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #1
	mov r8, r0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x50
	bl sub_08046D2C
	adds r0, r5, #0
	adds r0, #0x98
	ldrh r0, [r0]
	ldrh r2, [r7, #8]
	movs r1, #0xa0
	str r1, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	movs r1, #0x78
	str r1, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	movs r1, #6
	adds r3, r6, #0
	bl sub_080467C0
	adds r0, r5, #0
	subs r0, #0xe
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041C16
	adds r0, r5, #0
	adds r0, #0xc
	ldr r2, _08041C50
	adds r1, r5, r2
	ldrh r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	mov r2, r8
	str r2, [sp]
	str r2, [sp, #4]
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	adds r4, r5, #0
	adds r4, #0x18
	ldr r3, _08041C54
	adds r0, r5, r3
	ldrh r0, [r0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xf
	adds r3, r3, r0
	asrs r3, r3, #0x10
	mov r1, r8
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	adds r0, r4, #0
	bl sub_080465F8
_08041C16:
	mov r2, sb
	ldrh r0, [r2, #0x14]
	movs r0, #0xc
	strh r0, [r2, #0x14]
	ldrh r0, [r2, #0x1c]
	ldr r0, _08041C58
	strh r0, [r2, #0x1c]
_08041C24:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041C34: .4byte 0x00003D44
_08041C38: .4byte 0x000041DA
_08041C3C: .4byte gSomeBlend
_08041C40: .4byte 0x0000C5A1
_08041C44: .4byte gUnknown_0201A210
_08041C48: .4byte 0xFFFFBE18
_08041C4C: .4byte 0x000083B9
_08041C50: .4byte 0xFFFFED1C
_08041C54: .4byte 0xFFFFED3C
_08041C58: .4byte 0x0000FFFF
	.syntax divided
