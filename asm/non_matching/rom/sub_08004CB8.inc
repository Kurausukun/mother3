	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _08004D18
	movs r0, #0
	strh r0, [r5]
	mov r2, sp
	ldr r1, _08004D1C
	ldrh r0, [r1]
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	ldr r2, _08004D20
	ldrh r0, [r2]
	strh r0, [r4]
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r5]
	ldr r2, _08004D24
	ldrb r6, [r2]
	movs r0, #5
	strb r0, [r2]
	ldr r0, _08004D28
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08004D2C
	ldr r2, _08004D30
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	bl sub_08005BFC
	ldr r0, _08004D34
	bl play_sound
	adds r7, r4, #0
	b _08004DA6
	.align 2, 0
_08004D18: .4byte 0x04000208
_08004D1C: .4byte 0x04000200
_08004D20: .4byte 0x04000004
_08004D24: .4byte gGame
_08004D28: .4byte 0x000067C4
_08004D2C: .4byte gSomeBlend
_08004D30: .4byte 0x00011D16
_08004D34: .4byte 0x00000246
_08004D38:
	ldr r0, _08004D6C
	ands r0, r1
	cmp r0, #0
	beq _08004D7C
	ldr r0, _08004D70
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	ldr r2, _08004D74
	adds r1, r5, r2
	ldrh r1, [r1]
	cmp r0, r1
	bge _08004DA6
	ldr r0, _08004D78
	bl play_sound
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0
	bl sub_08024DCC
	b _08004DA6
	.align 2, 0
_08004D6C: .4byte 0x00000111
_08004D70: .4byte 0x000053AC
_08004D74: .4byte 0x000053AE
_08004D78: .4byte 0x00000246
_08004D7C:
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08004DA6
	ldr r1, _08004E30
	adds r4, r5, r1
	ldrh r0, [r4]
	cmp r0, #0
	beq _08004DA6
	ldr r0, _08004E34
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0
	bl sub_08024DCC
_08004DA6:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _08004E38
	ldr r1, _08004E3C
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08004D38
	movs r0, #0xd3
	bl play_sound
	ldr r0, _08004E40
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r0, _08004E44
	movs r1, #0x80
	lsls r1, r1, #4
	bl memclear
	ldr r1, _08004E48
	movs r4, #0
	strb r6, [r1]
	ldr r2, _08004E4C
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08004E50
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004E54
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005C14
	ldr r2, _08004E58
	strh r4, [r2]
	ldr r1, _08004E5C
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08004E60
	ldrh r0, [r7]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E30: .4byte 0x000053AC
_08004E34: .4byte 0x00000246
_08004E38: .4byte gSomeBlend
_08004E3C: .4byte 0x00002CA0
_08004E40: .4byte 0x06008000
_08004E44: .4byte 0x06006000
_08004E48: .4byte gGame
_08004E4C: .4byte 0x000067C4
_08004E50: .4byte 0x00011D16
_08004E54: .4byte 0x000121B8
_08004E58: .4byte 0x04000208
_08004E5C: .4byte 0x04000200
_08004E60: .4byte 0x04000004
	.syntax divided
