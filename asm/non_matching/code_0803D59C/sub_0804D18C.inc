	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0804D1BC
	ldr r0, _0804D1C0
	adds r0, r0, r6
	mov sb, r0
	ldrb r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _0804D1AE
	b _0804D384
_0804D1AE:
	ldrh r1, [r4]
	cmp r1, #1
	bne _0804D1C4
	adds r0, r5, #0
	bl nullsub_21
	b _0804D384
	.align 2, 0
_0804D1BC: .4byte gSomeBlend
_0804D1C0: .4byte 0x000044F2
_0804D1C4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D248
	movs r0, #0xd3
	bl play_sound
	bl sub_0804BE64
	ldr r0, _0804D22C
	ldr r2, _0804D230
	adds r1, r6, r2
	ldr r1, [r1]
	movs r2, #0xe4
	lsls r2, r2, #1
	bl sub_08001A14
	ldr r2, _0804D234
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r3, _0804D238
	adds r0, r6, r3
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r6, r3
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0]
	ldr r2, _0804D23C
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x50
	ldr r3, _0804D240
	adds r1, r6, r3
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r0, _0804D244
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x20
	b _0804D35E
	.align 2, 0
_0804D22C: .4byte gUnknown_080C71B2
_0804D230: .4byte 0x0000C61C
_0804D234: .4byte gUnknown_0200F920
_0804D238: .4byte 0x00002E04
_0804D23C: .4byte 0x00002E0A
_0804D240: .4byte 0x0000424C
_0804D244: .4byte 0x0000C5B5
_0804D248:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D25A
	adds r0, r5, #0
	bl sub_0804EE64
	b _0804D384
_0804D25A:
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0
	beq _0804D2BC
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0804D270
	b _0804D384
_0804D270:
	ldr r4, _0804D2B0
	ldrh r0, [r4]
	bl sub_08055DA4
	movs r0, #6
	bl sub_080506CC
	ldr r3, _0804D2B4
	ldrh r0, [r4]
	adds r1, r3, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrh r1, [r4, #2]
	adds r0, r3, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrh r0, [r5, #4]
	adds r1, r3, #0
	adds r1, #0x62
	strh r0, [r1]
	ldrh r0, [r5, #8]
	adds r1, #4
	strh r0, [r1]
	ldr r1, _0804D2B8
	adds r0, r6, r1
	adds r1, r3, #0
	adds r1, #0x6e
	movs r2, #0x20
	bl sub_08001B18
	b _0804D384
	.align 2, 0
_0804D2B0: .4byte gUnknown_02005090
_0804D2B4: .4byte gUnknown_0200F920
_0804D2B8: .4byte 0x00002990
_0804D2BC:
	adds r7, r5, #4
	ldr r2, _0804D364
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08053620
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804D2FE
	mov r3, r8
	ldrh r0, [r3]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08053598
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0804D2FE:
	cmp r0, #1
	beq _0804D316
	cmp r0, #2
	bne _0804D384
	bl sub_08046D90
	ldr r1, _0804D368
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804D316:
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r1, r6, r2
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804D384
	ldr r1, _0804D36C
	ldrb r0, [r3]
	strh r0, [r1]
	mov r0, sl
	strh r0, [r1, #2]
	ldr r2, _0804D370
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0x60
	strh r0, [r1, #0xc]
	bl sub_0805CE74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D378
	ldr r1, _0804D374
	adds r2, r6, r1
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrb r0, [r2]
	movs r1, #0x40
_0804D35E:
	orrs r0, r1
	strb r0, [r2]
	b _0804D384
	.align 2, 0
_0804D364: .4byte 0x0000427C
_0804D368: .4byte 0x0000C5AD
_0804D36C: .4byte gUnknown_02005090
_0804D370: .4byte gBattleMemoryEnemyHeight
_0804D374: .4byte 0x0000C5B5
_0804D378:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0804D384:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
