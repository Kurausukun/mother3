	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	movs r5, #0
	ldr r0, _08038674
	ldr r1, _08038678
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r5, r2
	bhs _0803864E
	adds r7, r0, #0
_08038620:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08038642
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038642
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08038642:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r3, [r7]
	cmp r5, r3
	blo _08038620
_0803864E:
	ldr r1, _0803867C
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r7, [r0]
	ldr r0, _08038680
	ldr r1, _08038684
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803868C
	movs r1, #0
	ldr r2, _08038688
	movs r0, #0x80
	movs r3, #0xa0
	b _08038694
	.align 2, 0
_08038674: .4byte gGame
_08038678: .4byte 0x00008299
_0803867C: .4byte gUnknown_08D2E15C
_08038680: .4byte gSomeBlend
_08038684: .4byte 0x000035BA
_08038688: .4byte 0x0000FFE0
_0803868C:
	movs r1, #0x80
	movs r2, #0xa0
	movs r0, #0
	ldr r3, _080386B0
_08038694:
	mov sb, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldrh r0, [r6, #0xa]
	cmp r0, #1
	beq _080386B4
	cmp r0, #1
	ble _0803872A
	cmp r0, #2
	beq _080386F0
	b _0803872A
	.align 2, 0
_080386B0: .4byte 0x0000FFE0
_080386B4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0803872A
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0803872A
_080386F0:
	asrs r0, r1, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r0, r5, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0803872A
	bl sub_08037958
_0803872A:
	ldr r0, _08038778
	ldrh r1, [r0, #0x1a]
	strh r4, [r0, #0x1a]
	movs r5, #0
	ldr r0, _0803877C
	ldr r3, _08038780
	adds r0, r0, r3
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0803879A
	mov sb, r0
	mov r2, r8
	lsls r6, r2, #0x10
_08038744:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803878C
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803878C
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	asrs r3, r6, #0x10
	bl sub_08038ABC
	mov r3, sl
	cmp r3, #3
	bls _08038784
	adds r0, r7, #0
	adds r0, #0x3c
	b _08038788
	.align 2, 0
_08038778: .4byte gSomeBlend
_0803877C: .4byte gGame
_08038780: .4byte 0x00008299
_08038784:
	adds r0, r7, #0
	adds r0, #0x40
_08038788:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0803878C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blo _08038744
_0803879A:
	ldr r0, _080387CC
	ldr r1, _080387D0
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080387BC
	subs r0, r3, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080387BC
	bl sub_0803793C
_080387BC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080387CC: .4byte gSomeBlend
_080387D0: .4byte 0x000035B6
	.syntax divided
