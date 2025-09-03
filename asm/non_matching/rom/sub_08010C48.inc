	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, [sp, #0x40]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r2, _08010CC0
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08010CB2
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08010CB2
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r4, _08010CC4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08010CC8
_08010CB2:
	adds r0, r6, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08010CCE
	.align 2, 0
_08010CC0: .4byte gGame
_08010CC4: .4byte 0x000058E5
_08010CC8:
	cmp r6, r1
	blo _08010CCE
	b _08010F48
_08010CCE:
	ldr r1, _08010D04
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08010CFC
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _08010CFC
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _08010D08
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08010D0C
_08010CFC:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08010D10
	.align 2, 0
_08010D04: .4byte gGame
_08010D08: .4byte 0x000058E5
_08010D0C:
	mov r0, sp
	strh r1, [r0]
_08010D10:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	asrs r2, r6, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0xc]
	ldr r5, _08010DC4
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x1c]
_08010D52:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r1, r2, r3
	ldr r4, [sp, #0x14]
	cmp r1, r4
	blt _08010D82
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010D68
	b _08010F48
_08010D68:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x1c]
	asrs r2, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0xc]
_08010D82:
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08010D92
	b _08010F1E
_08010D92:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _08010D9C
	b _08010F1E
_08010D9C:
	ldr r0, _08010DC8
	ldr r4, _08010DCC
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _08010DD4
	ldr r1, _08010DD0
	mov sl, r1
	b _08010DF4
	.align 2, 0
_08010DC4: .4byte gUnknown_02016078
_08010DC8: .4byte gGame
_08010DCC: .4byte 0x00004088
_08010DD0: .4byte gUnknown_08D2D310
_08010DD4:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _08010DE4
	ldr r2, _08010DE0
	b _08010DF2
	.align 2, 0
_08010DE0: .4byte gUnknown_08D2D314
_08010DE4:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _08010E4C
	mov sl, r1
	cmp r2, r0
	bne _08010DF4
	ldr r2, _08010E50
_08010DF2:
	mov sl, r2
_08010DF4:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _08010E54
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08010E58
	.align 2, 0
_08010E4C: .4byte gUnknown_08D2D31C
_08010E50: .4byte gUnknown_08D2D318
_08010E54:
	mov r2, sb
	strh r1, [r2]
_08010E58:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010E96
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _08010E9A
_08010E96:
	mov r0, sb
	strh r1, [r0, #2]
_08010E9A:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010ED8
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _08010EDC
_08010ED8:
	mov r0, r8
	strh r1, [r0]
_08010EDC:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x18]
	ands r1, r2
	cmp r1, #0
	beq _08010F18
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _08010F2C
_08010F18:
	mov r0, r8
	strh r1, [r0, #2]
	b _08010F2C
_08010F1E:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_08010F2C:
	movs r3, #4
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0xc]
	adds r4, #2
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xf
	bhi _08010F48
	b _08010D52
_08010F48:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
