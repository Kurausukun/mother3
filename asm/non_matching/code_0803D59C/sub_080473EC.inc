	.syntax unified
sub_080473EC:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _08047418
	ldr r2, _0804741C
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08047424
	adds r0, r1, #0
	adds r0, #0x50
	ldr r3, _08047420
	adds r1, r1, r3
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	b _08047594
	.align 2, 0
_08047418: .4byte gSomeBlend
_0804741C: .4byte 0x0000427A
_08047420: .4byte 0x0000423C
_08047424:
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	add r3, sp, #4
	mov r2, sp
	adds r2, #6
	movs r1, #0
	strh r1, [r2]
	ldrh r1, [r2]
	strh r1, [r3]
	ldrb r0, [r0]
	mov sb, r2
	cmp r0, #3
	beq _08047454
	cmp r0, #3
	bgt _0804744A
	cmp r0, #2
	beq _0804744E
	b _0804745A
_0804744A:
	cmp r0, #4
	bne _0804745A
_0804744E:
	add r1, sp, #4
	movs r0, #1
	b _08047458
_08047454:
	movs r0, #1
	mov r1, sb
_08047458:
	strh r0, [r1]
_0804745A:
	ldr r1, _080474CC
	ldr r2, _080474D0
	adds r0, r1, r2
	ldrh r0, [r0]
	ldrh r2, [r4, #8]
	subs r0, r0, r2
	cmp r0, #0x10
	ble _0804746C
	movs r0, #0x10
_0804746C:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	lsls r2, r2, #2
	movs r3, #0xde
	lsls r3, r3, #6
	adds r1, r1, r3
	adds r5, r2, r1
	movs r6, #0
	lsrs r0, r0, #0x11
	cmp r6, r0
	bhs _0804753E
	movs r7, #0xf
_08047486:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080474D4
	ldrb r1, [r5]
	movs r0, #8
	bl get_misctext_msg
	adds r4, r6, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	movs r1, #1
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	adds r5, #4
	ldrb r1, [r5]
	movs r0, #8
	bl get_misctext_msg
	str r7, [sp]
	movs r1, #0xa
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08047D90
	b _0804752E
	.align 2, 0
_080474CC: .4byte gSomeBlend
_080474D0: .4byte 0x0000427A
_080474D4:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _080474FE
	ldrb r1, [r5]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r6, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	movs r1, #1
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	adds r5, #4
	ldrb r1, [r5]
	movs r0, #2
	b _0804751E
_080474FE:
	ldrb r1, [r5]
	movs r0, #0xd
	bl get_misctext_msg
	adds r4, r6, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	movs r1, #1
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	adds r5, #4
	ldrb r1, [r5]
	movs r0, #0xd
_0804751E:
	bl get_misctext_msg
	str r7, [sp]
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
_0804752E:
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r2, r8
	lsrs r0, r2, #1
	cmp r6, r0
	blo _08047486
_0804753E:
	movs r0, #1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047594
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08047556
	ldrb r1, [r5]
	movs r0, #8
	b _08047562
_08047556:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804757A
	ldrb r1, [r5]
	movs r0, #2
_08047562:
	bl get_misctext_msg
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	movs r3, #9
	bl sub_08047B9C
	b _08047594
_0804757A:
	ldrb r1, [r5]
	movs r0, #0xd
	bl get_misctext_msg
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	movs r3, #9
	bl sub_08047B9C
_08047594:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
