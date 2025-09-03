	.syntax unified
sub_08008F0C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r2, _08008F70
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r0, _08008F74
	adds r2, r3, r0
	movs r0, #0x28
	strb r0, [r2]
	ldr r0, _08008F78
	ldr r1, _08008F7C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008F4C
	ldr r3, [sp, #8]
	ldr r1, _08008F80
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08008F50
_08008F4C:
	movs r0, #0x50
	strb r0, [r2]
_08008F50:
	ldr r2, [sp, #8]
	ldr r3, _08008F84
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r1, [r0, #4]
	mov sb, r1
	ldr r3, _08008F88
	adds r7, r2, r3
	ldr r1, _08008F8C
	str r1, [sp, #0xc]
	movs r2, #0xb0
	lsls r2, r2, #2
	str r2, [sp, #0x1c]
	movs r4, #0
	b _08009236
	.align 2, 0
_08008F70: .4byte 0x0000C515
_08008F74: .4byte 0x0000C517
_08008F78: .4byte gSomeBlend
_08008F7C: .4byte 0x0000566C
_08008F80: .4byte 0x0000C51A
_08008F84: .4byte 0x0000C204
_08008F88: .4byte 0x00009610
_08008F8C: .4byte 0x06015800
_08008F90:
	mov r3, sb
	ldrb r1, [r3, #0xe]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08008FA6
	ldr r0, [sp, #8]
	movs r1, #1
	bl sub_0800A0A4
	b _08008FB6
_08008FA6:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008FB6
	ldr r0, [sp, #8]
	movs r1, #2
	bl sub_0800A0A4
_08008FB6:
	mov r0, sb
	ldrh r2, [r0, #8]
	ldr r1, _08009044
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sb
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #0x10
	ldr r3, _08009048
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [r2]
	str r0, [sp]
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x2c]
	mov r1, sb
	adds r1, #0x10
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	blo _08008FFA
	b _08009210
_08008FFA:
	adds r3, r7, #0
	adds r3, #0x88
	str r3, [sp, #0x34]
	adds r0, r7, #0
	adds r0, #0x86
	str r0, [sp, #0x38]
	adds r1, r7, #0
	adds r1, #0x85
	str r1, [sp, #0x3c]
	adds r5, r7, #0
	adds r5, #0x84
	adds r2, r7, #0
	adds r2, #0x87
	str r2, [sp, #0x40]
	ldr r0, _0800904C
	ldr r3, [sp, #8]
	adds r0, r3, r0
	str r0, [sp, #0x20]
_0800901E:
	ldr r0, [sp]
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _08009050
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bls _08009054
	ldrb r0, [r5, #3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #3]
	ldr r0, [sp, #8]
	mov r1, sb
	mov r2, sp
	add r3, sp, #4
	bl sub_08009B98
	b _080091F6
	.align 2, 0
_08009044: .4byte 0xFFFF0000
_08009048: .4byte 0x0000FFFF
_0800904C: .4byte 0x0000C515
_08009050: .4byte 0x0000FEFF
_08009054:
	ldr r3, _0800910C
	ldrh r2, [r3]
	lsls r2, r2, #3
	ldr r0, _08009110
	adds r2, r2, r0
	add r4, sp, #4
	ldrh r1, [r4, #2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r4]
	ldr r3, _08009114
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r1, r0, #0
	ldr r0, [sp, #0x1c]
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_08032DF4
	ldr r1, _08009118
	adds r0, r1, #0
	ldr r2, [sp, #0x18]
	ands r2, r0
	ldrh r0, [r5]
	ldr r3, _0800911C
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	mov r0, sb
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r0, [r5, #3]
	movs r2, #9
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5, #3]
	ldr r3, _08009120
	adds r0, r3, #0
	ldr r2, [sp, #0x1c]
	ands r2, r0
	ldrh r0, [r5, #2]
	ldr r3, _08009124
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #2]
	ldrh r0, [r5]
	ldrh r2, [r5, #4]
	ldr r1, _08009128
	ands r1, r0
	ldr r0, _08009128
	ands r0, r2
	ldr r6, [sp, #0x40]
	mov sl, r5
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x24]
	ldr r3, [sp, #0x38]
	str r3, [sp, #0x28]
	ldr r4, [sp, #0x34]
	movs r2, #0x8a
	adds r2, r2, r7
	mov r8, r2
	cmp r1, r0
	bne _0800912C
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r3, [sp, #0x1c]
	cmp r3, r0
	bne _0800912C
	ldrb r0, [r5, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #3]
	b _08009156
	.align 2, 0
_0800910C: .4byte gMenuObjCount
_08009110: .4byte gMenuObjBuffer
_08009114: .4byte 0x000001FF
_08009118: .4byte 0x00000FFF
_0800911C: .4byte 0xFFFFF000
_08009120: .4byte 0x000003FF
_08009124: .4byte 0xFFFFFC00
_08009128: .4byte 0x0000FFFF
_0800912C:
	adds r0, r7, #4
	movs r1, #0x40
	bl memclear
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0x40
	bl memclear
	ldr r0, [sp, #0xc]
	str r0, [r7]
	ldrb r0, [r6]
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	bl sub_08009264
_08009156:
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r0, [r4]
	ldr r3, _08009250
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	mov r3, r8
	ldrh r0, [r3]
	ldr r3, _08009254
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r3, [sp, #0x34]
	adds r3, #0x8c
	str r3, [sp, #0x34]
	ldr r0, [sp, #0x38]
	adds r0, #0x8c
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	adds r1, #0x8c
	str r1, [sp, #0x3c]
	adds r5, #0x8c
	ldr r2, [sp, #0x40]
	adds r2, #0x8c
	str r2, [sp, #0x40]
	adds r7, #0x8c
	ldr r0, [sp, #0x1c]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r3, [sp, #0xc]
	adds r3, #0x80
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08009DDC
	mov r1, sp
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	add r1, sp, #4
	strh r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	cmp r0, #0x28
	bne _080091F6
	ldr r3, _08009258
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080091F6
	movs r0, #0xb0
	lsls r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, _0800925C
	str r1, [sp, #0xc]
_080091F6:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r2, r3
	bhs _08009210
	b _0800901E
_08009210:
	mov r0, sb
	ldrb r1, [r0, #0xe]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08009224
	ldr r0, [sp, #8]
	movs r1, #0
	bl sub_0800A0A4
_08009224:
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	ldr r2, [sp, #0x30]
	mov sb, r2
	ldr r3, [sp, #8]
	ldr r1, _08009260
	adds r0, r3, r1
	ldr r0, [r0]
_08009236:
	ldrb r0, [r0, #9]
	cmp r4, r0
	bhs _0800923E
	b _08008F90
_0800923E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009250: .4byte 0xFFFFF000
_08009254: .4byte 0xFFFFFC00
_08009258: .4byte gUnknown_0201B694
_0800925C: .4byte 0x06012C00
_08009260: .4byte 0x0000C204
	.syntax divided
