	.syntax unified
sub_08029B18:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08029C88
	ldr r1, _08029C8C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08029B36
	b _08029C78
_08029B36:
	ldr r0, _08029C90
	adds r0, r6, r0
	ldrb r0, [r0]
	bl sub_08029CAC
	movs r0, #0x82
	lsls r0, r0, #3
	bl sub_0803B800
	str r0, [sp, #0x1c]
	movs r5, #0
	add r2, sp, #0x14
	mov sb, r2
_08029B50:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	ldr r0, [r4, #0x40]
	str r0, [r1]
	mov r1, sb
	adds r0, r1, r5
	movs r2, #0
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029B50
	ldr r0, _08029C90
	adds r0, r6, r0
	strb r2, [r0]
	ldr r0, _08029C88
	ldr r3, _08029C8C
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _08029C94
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, [sp, #0x1c]
	mov r8, r2
	movs r5, #0
_08029B8E:
	ldr r0, _08029C90
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r7, r1, #0
	cmp r7, #0
	beq _08029C0E
	ldr r3, _08029C88
	mov sl, r3
	ldr r6, _08029C8C
	add r6, sl
	ldrb r0, [r6]
	add r0, sb
	strb r1, [r0]
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r4, #0x40]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08029BE4
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D3C
	ldrb r0, [r0, #3]
	lsrs r0, r0, #1
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0xa8
	strh r0, [r1]
	lsls r0, r0, #4
	adds r1, #4
	strh r0, [r1]
_08029BE4:
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xd0
	bl sub_08001B18
	movs r0, #0xd0
	add r8, r0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029C0E
	ldr r1, _08029C94
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029C0E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029B8E
	movs r5, #0
	ldr r4, _08029C98
	ldr r3, _08029C90
	mov r2, sb
_08029C20:
	adds r1, r5, r3
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029C20
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r1, _08029C9C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xd0
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x1c]
	adds r1, r4, #0
	bl sub_08001B18
	ldr r0, [sp, #0x1c]
	bl sub_0803B860
	ldr r2, _08029CA0
	adds r0, r4, r2
	bl sub_080293BC
	bl sub_08029D10
	movs r3, #0xd5
	lsls r3, r3, #6
	adds r1, r4, r3
	ldr r0, _08029CA4
	str r0, [r1]
	ldr r0, _08029CA8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
_08029C78:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C88: .4byte gGame
_08029C8C: .4byte 0x00008299
_08029C90: .4byte gSave
_08029C94: .4byte 0x0000829A
_08029C98: .4byte gUnknown_0200C3C8
_08029C9C: .4byte 0x00001AD1
_08029CA0: .4byte 0x00001450
_08029CA4: .4byte 0x06010000
_08029CA8: .4byte 0x00003544
	.syntax divided
