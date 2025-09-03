	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r0, sp
	strh r2, [r0]
	mov r4, sp
	adds r4, #2
	strh r3, [r4]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, #8
	adds r5, r7, r0
	movs r1, #0
	movs r0, #2
	strh r0, [r7]
	movs r0, #0x4d
	strb r0, [r7, #2]
	movs r0, #0x33
	strb r0, [r7, #3]
	adds r0, r7, #0
	adds r0, #0xf0
	ldrh r2, [r0]
	strh r1, [r0]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r7, #4]
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x60
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08051D56
	b _08051F12
_08051D56:
	ldr r1, _08051F34
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r5]
	ldr r0, [r1, #8]
	str r0, [r5, #4]
	movs r3, #0x85
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r5, #8]
	movs r4, #0x88
	lsls r4, r4, #2
	adds r0, r1, r4
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _08051F38
	ldr r2, _08051F3C
	adds r3, r0, r2
	ldrh r2, [r3]
	strh r2, [r5, #0xc]
	movs r4, #0x90
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldr r0, _08051F40
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	lsls r2, r2, #0x10
	movs r6, #0
	subs r1, #1
	str r1, [sp, #0xc]
	movs r4, #0x22
	adds r4, r4, r5
	mov sb, r4
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	adds r1, #4
	str r1, [sp, #0x10]
	adds r4, r5, #0
	adds r4, #0x25
	str r4, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x26
	str r0, [sp, #0x18]
	adds r1, #3
	str r1, [sp, #0x1c]
	adds r4, #3
	str r4, [sp, #0x20]
	adds r0, #3
	str r0, [sp, #0x24]
	adds r1, #3
	str r1, [sp, #0x28]
	adds r4, #0xc
	str r4, [sp, #0x2c]
	adds r0, #0xc
	str r0, [sp, #0x30]
	adds r1, #0x1c
	str r1, [sp, #0x38]
	adds r4, #0x14
	str r4, [sp, #0x3c]
	adds r0, #0x15
	str r0, [sp, #0x40]
	adds r1, #6
	str r1, [sp, #0x44]
	adds r4, #6
	str r4, [sp, #0x48]
	subs r0, #0x14
	str r0, [sp, #0x34]
	cmp r2, #0
	beq _08051E1E
	mov r8, r3
_08051DF4:
	adds r0, r6, #0
	bl sub_08054FE0
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xe
	adds r0, r0, r6
	ldrb r1, [r4]
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x13
	adds r0, r0, r6
	ldrb r1, [r4, #1]
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, r8
	ldrh r1, [r1]
	cmp r6, r1
	blo _08051DF4
_08051E1E:
	movs r0, #1
	bl get_progression_flag
	strb r0, [r5, #0x19]
	movs r0, #2
	bl get_progression_flag
	strb r0, [r5, #0x1a]
	movs r0, #3
	bl get_progression_flag
	strb r0, [r5, #0x1b]
	movs r0, #4
	bl get_progression_flag
	strb r0, [r5, #0x1c]
	movs r0, #0x15
	bl get_progression_flag
	strb r0, [r5, #0x1d]
	movs r0, #0x16
	bl get_progression_flag
	strb r0, [r5, #0x1e]
	movs r0, #0x17
	bl get_progression_flag
	strb r0, [r5, #0x1f]
	movs r0, #0x18
	bl get_progression_flag
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	mov r3, sb
	ldrb r0, [r3]
	ldrb r1, [r5, #0x19]
	orrs r0, r1
	strb r0, [r3]
	mov r4, sl
	ldrb r0, [r4]
	ldrb r1, [r5, #0x1a]
	orrs r0, r1
	strb r0, [r4]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	ldrb r1, [r5, #0x1b]
	orrs r0, r1
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r3, [sp, #0x14]
	ldrb r0, [r3]
	ldrb r1, [r5, #0x1c]
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [sp, #0x18]
	ldrb r0, [r4]
	ldrb r1, [r5, #0x1d]
	orrs r0, r1
	strb r0, [r4]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	ldrb r1, [r5, #0x1e]
	orrs r0, r1
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	ldr r3, [sp, #0x20]
	ldrb r0, [r3]
	ldrb r1, [r5, #0x1f]
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [sp, #0x24]
	ldrb r0, [r4]
	ldr r2, [sp, #0xc]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r4]
	ldr r2, _08051F34
	movs r3, #0x85
	lsls r3, r3, #2
	adds r1, r2, r3
	ldr r4, [sp, #0x28]
	ldrb r0, [r4]
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r4]
	ldrb r1, [r2]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _08051F44
	adds r4, r1, r0
	ldrb r0, [r4]
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	ldrb r0, [r4, #1]
	ldr r2, [sp, #0x30]
	strb r0, [r2]
	ldrb r0, [r4, #0x12]
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	ldr r0, [r4, #0x20]
	ldr r2, [sp, #0x40]
	strh r0, [r2]
	ldrh r0, [r4, #0x1c]
	ldr r3, [sp, #0x44]
	strh r0, [r3]
	ldrh r0, [r4, #0x24]
	ldr r1, [sp, #0x48]
	strh r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, [sp, #0x34]
	movs r1, #0x12
	bl sub_08001B54
	adds r1, r4, #2
	ldr r0, [sp, #0x34]
	movs r2, #9
	bl sub_08002420
_08051F12:
	mov r0, sp
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	bne _08051F56
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _08051F4C
	ldr r2, _08051F48
	ldrb r1, [r2, #6]
	movs r0, #0x1d
	rsbs r0, r0, #0
	b _08051F52
	.align 2, 0
_08051F34: .4byte gSave
_08051F38: .4byte gSomeBlend
_08051F3C: .4byte 0x00002DFA
_08051F40: .4byte 0x0000081E
_08051F44: .4byte gCharStats
_08051F48: .4byte gUnknown_0200F920
_08051F4C:
	ldr r2, _08051F7C
	ldrb r1, [r2, #6]
	movs r0, #0x1f
_08051F52:
	ands r0, r1
	strb r0, [r2, #6]
_08051F56:
	adds r0, r7, #0
	movs r1, #0xf4
	bl sub_08001DC8
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	mvns r0, r0
	adds r1, r7, #0
	adds r1, #0xf0
	ldrh r2, [r1]
	strh r0, [r1]
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051F7C: .4byte gUnknown_0200F920
	.syntax divided
