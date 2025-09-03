	.syntax unified
sub_08047900:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r1, r0, #0
	ldr r3, _0804792C
	ldr r0, _08047930
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08047938
	adds r0, r3, #0
	adds r0, #0x50
	ldr r2, _08047934
	adds r1, r3, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	b _080479C8
	.align 2, 0
_0804792C: .4byte gSomeBlend
_08047930: .4byte 0x00004282
_08047934: .4byte 0x0000423C
_08047938:
	ldrh r0, [r2]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #0x10
	ble _08047944
	movs r0, #0x10
_08047944:
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	mov sb, r4
	lsls r1, r1, #2
	ldr r4, _080479D8
	adds r0, r3, r4
	adds r5, r1, r0
	movs r6, #0
	lsrs r0, r2, #0x11
	cmp r6, r0
	bhs _080479A4
	movs r7, #0xf
	mov r8, r0
_0804795E:
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
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	blo _0804795E
_080479A4:
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080479C8
	ldrb r1, [r5]
	movs r0, #2
	bl get_misctext_msg
	adds r2, r6, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	movs r3, #9
	bl sub_08047B9C
_080479C8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080479D8: .4byte 0x00003DBC
	.syntax divided
