	.syntax unified
sub_08029078:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080290F8
	add sp, r4
	movs r1, #0x82
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #3
	mov r0, sp
	bl memclear
	mov r5, sp
	movs r2, #0
	ldr r3, _080290FC
	add r3, sp
	str r2, [r3]
	add r0, sp, #0xbc
	mov r8, r0
	movs r1, #0x85
	add r1, sp
	mov sb, r1
	add r6, sp, #0x88
	mov sl, r2
_080290B0:
	ldr r0, _08029100
	ldr r2, _080290FC
	add r2, sp
	ldr r2, [r2]
	adds r0, r2, r0
	ldrb r4, [r0]
	cmp r4, #0
	bne _080290C2
	b _08029214
_080290C2:
	ldr r1, _08029104
	movs r0, #0x6c
	muls r0, r4, r0
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _080290D2
	b _08029214
_080290D2:
	ldr r0, _08029108
	ldr r3, _0802910C
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #6
	bne _08029110
	adds r0, r4, #0
	bl sub_0802B924
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080290F4
	b _08029214
_080290F4:
	b _08029124
	.align 2, 0
_080290F8: .4byte 0xFFFFFBE8
_080290FC: .4byte 0x00000414
_08029100: .4byte gSave
_08029104: .4byte gCharStats
_08029108: .4byte gGame
_0802910C: .4byte 0x0000829B
_08029110:
	adds r0, r1, #0
	bl sub_0802B8F4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _08029214
_08029124:
	movs r3, #0x82
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3]
	ldr r1, _08029330
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029154
	movs r0, #0x82
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	ldr r2, _08029334
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029154:
	adds r0, r7, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r1, _08029338
	add r1, sp
	ldr r0, [r1]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd0
	bl sub_08001B18
	ldrh r0, [r6]
	bl sub_08036D18
	ldrh r0, [r6]
	bl sub_08036D3C
	adds r2, r0, #0
	ldr r3, _08029338
	add r3, sp
	ldrb r0, [r3]
	mov r3, sb
	strb r0, [r3]
	ldrb r0, [r6, #3]
	lsrs r0, r0, #3
	mov r4, sb
	cmp r0, #0xb
	bgt _080291A2
	cmp r0, #0xa
	blt _080291A2
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	strb r0, [r6, #3]
_080291A2:
	ldr r0, _0802933C
	strh r0, [r6, #4]
	mov r3, sl
	str r3, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x10]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	mov r3, sl
	str r3, [r5, #0x2c]
	str r3, [r5, #0x30]
	str r3, [r5, #0x34]
	ldrb r1, [r1, #0xb]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0xb]
	str r3, [r5, #0x38]
	str r3, [r5, #0x3c]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #1
	adds r3, r5, #0
	adds r3, #0xa6
	strh r0, [r6, #0x1e]
	ldrb r0, [r2, #3]
	lsrs r1, r0, #1
	adds r2, r5, #0
	adds r2, #0xa8
	strh r1, [r6, #0x20]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080291F6
	adds r0, r1, #4
	strh r0, [r6, #0x20]
_080291F6:
	ldrh r0, [r3]
	lsls r0, r0, #4
	strh r0, [r6, #0x22]
	ldrh r0, [r2]
	lsls r0, r0, #4
	strh r0, [r6, #0x24]
	ldrh r0, [r7]
	strh r0, [r5]
	ldrh r0, [r7, #2]
	strh r0, [r5, #2]
	movs r2, #0xd0
	add r8, r2
	add sb, r2
	adds r6, #0xd0
	adds r5, #0xd0
_08029214:
	ldr r3, _08029338
	add r3, sp
	ldr r0, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r3]
	cmp r0, #4
	bhi _08029228
	b _080290B0
_08029228:
	ldr r1, _08029340
	ldr r2, _08029344
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802930E
	ldr r3, _08029348
	adds r4, r1, r3
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802930E
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldrh r1, [r4]
	add r0, sp, #0x88
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	mov r0, sp
	adds r0, #0x92
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	add r3, sp, #0xbc
	movs r1, #0x1c
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8f
	strb r1, [r0]
	mov r2, sp
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x8a
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8a
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	add r0, sp, #0x94
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0xc9
	ldrb r0, [r6]
	adds r3, #0xd
	movs r1, #6
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r6]
	movs r1, #8
	ands r1, r2
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x81
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r1, [r0]
	add r0, sp, #0x84
	strb r1, [r0]
_0802930E:
	ldr r1, _0802934C
	movs r2, #0x82
	lsls r2, r2, #3
	mov r0, sp
	bl sub_08001B18
	movs r3, #0x83
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029330: .4byte 0x00000681
_08029334: .4byte 0x00000682
_08029338: .4byte 0x00000414
_0802933C: .4byte 0x0000FFFF
_08029340: .4byte gGame
_08029344: .4byte 0x0000829B
_08029348: .4byte 0x000082AC
_0802934C: .4byte gUnknown_0200C3C8
	.syntax divided
