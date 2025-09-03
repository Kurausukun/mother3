	.syntax unified
sub_080471B4:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r4, _080471E0
	ldrh r3, [r2, #0xa]
	lsls r0, r3, #1
	ldr r5, _080471E4
	adds r1, r4, r5
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _080471EC
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _080471E8
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	b _080472B4
	.align 2, 0
_080471E0: .4byte gSomeBlend
_080471E4: .4byte 0x00004270
_080471E8: .4byte 0x0000423C
_080471EC:
	ldrh r0, [r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #0x10
	ble _080471F8
	movs r0, #0x10
_080471F8:
	lsls r2, r0, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #7
	lsls r0, r1, #2
	movs r5, #0xd4
	lsls r5, r5, #6
	adds r1, r4, r5
	adds r0, r0, r1
	adds r4, r3, r0
	movs r6, #0
	lsrs r2, r2, #0x11
	cmp r6, r2
	bhs _08047280
_08047212:
	ldrb r1, [r4]
	movs r0, #8
	bl get_misctext_msg
	adds r3, r0, #0
	adds r1, r6, #2
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #0xa
	adds r5, r1, #0
	cmp r0, #0
	bge _08047230
	movs r0, #0xf
	b _08047232
_08047230:
	movs r0, #1
_08047232:
	str r0, [sp]
	adds r0, r3, #0
	movs r1, #1
	movs r3, #9
	bl sub_08047B9C
	adds r4, #4
	ldrb r1, [r4]
	movs r0, #8
	bl get_misctext_msg
	adds r1, r0, #0
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804725A
	movs r0, #0xf
	b _0804725C
_0804725A:
	movs r0, #1
_0804725C:
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #0xa
	movs r3, #9
	bl sub_08047B9C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08047D90
	adds r4, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsrs r0, r7, #1
	cmp r6, r0
	blo _08047212
_08047280:
	movs r5, #1
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080472B4
	ldrb r1, [r4]
	movs r0, #8
	bl get_misctext_msg
	adds r1, r0, #0
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _080472A8
	movs r0, #0xf
	str r0, [sp]
	b _080472AA
_080472A8:
	str r5, [sp]
_080472AA:
	adds r0, r1, #0
	movs r1, #1
	movs r3, #9
	bl sub_08047B9C
_080472B4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
