	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r3, r0, #0
	ldr r2, _08047860
	ldr r1, _08047864
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	bne _0804786C
	adds r0, r2, #0
	adds r0, #0x50
	ldr r3, _08047868
	adds r1, r2, r3
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	b _080478F0
	.align 2, 0
_08047860: .4byte gSomeBlend
_08047864: .4byte 0x0000426C
_08047868: .4byte 0x0000423C
_0804786C:
	cmp r1, #0x10
	bls _08047872
	movs r0, #0x10
_08047872:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sb, r1
	ldrh r1, [r3, #8]
	lsls r1, r1, #2
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r2, r2, r3
	adds r5, r1, r2
	movs r6, #0
	lsrs r0, r0, #0x11
	cmp r6, r0
	bhs _080478CC
	movs r7, #0xf
	mov r8, r0
_08047890:
	ldrb r1, [r5]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r6, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	movs r1, #2
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	adds r5, #4
	ldrb r1, [r5]
	movs r0, #2
	bl get_misctext_msg
	str r7, [sp]
	movs r1, #0xc
	adds r2, r4, #0
	movs r3, #9
	bl sub_08047B9C
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	blo _08047890
_080478CC:
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080478F0
	ldrb r1, [r5]
	movs r0, #2
	bl get_misctext_msg
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #2
	movs r3, #9
	bl sub_08047B9C
_080478F0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
