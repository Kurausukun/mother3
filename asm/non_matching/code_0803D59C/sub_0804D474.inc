	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r4, _0804D4E8
	ldr r1, _0804D4EC
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804D48C
	b _0804D5D0
_0804D48C:
	ldr r1, _0804D4F0
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xf
	bls _0804D500
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0804D516
	ldr r0, _0804D4F4
	adds r6, r4, r0
	ldr r2, _0804D4F8
	adds r0, r4, r2
	ldrh r3, [r6, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804D4C6
	b _0804D5D0
_0804D4C6:
	ldrh r0, [r6, #4]
	bl sub_08053E98
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0804D4FC
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, r2
	beq _0804D5D0
	strb r2, [r1]
	bl sub_0804C254
	bl sub_08046D90
	b _0804D5D0
	.align 2, 0
_0804D4E8: .4byte gSomeBlend
_0804D4EC: .4byte 0x000044F2
_0804D4F0: .4byte 0x0000426C
_0804D4F4: .4byte 0x00002F20
_0804D4F8: .4byte 0x00002F24
_0804D4FC: .4byte 0x00004264
_0804D500:
	ldrh r1, [r5]
	cmp r1, #1
	bne _0804D50E
	adds r0, r2, #0
	bl sub_0804F01C
	b _0804D5D0
_0804D50E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D540
_0804D516:
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C228
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _0804D53C
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D5D0
	.align 2, 0
_0804D53C: .4byte 0x00004254
_0804D540:
	ldrh r3, [r2, #2]
	cmp r3, #6
	bls _0804D578
	adds r1, r2, #4
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r2, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08053598
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D594
	bl sub_08046D90
	ldr r1, _0804D574
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0804D5D0
	.align 2, 0
_0804D574: .4byte 0x0000C5AD
_0804D578:
	adds r0, r2, #4
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	bl sub_080534C8
_0804D594:
	ldr r6, _0804D5D8
	adds r0, r6, #4
	ldrh r3, [r6, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804D5D0
	ldrh r0, [r6, #4]
	bl sub_08053E98
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0804D5DC
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, r2
	beq _0804D5D0
	strb r2, [r1]
	bl sub_0804C254
	bl sub_08046D90
_0804D5D0:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D5D8: .4byte gUnknown_02018F48
_0804D5DC: .4byte 0x00001344
	.syntax divided
