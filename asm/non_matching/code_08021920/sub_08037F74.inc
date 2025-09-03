	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r7, _08037FB8
	ldr r0, _08037FBC
	adds r5, r7, r0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08037F92
	b _080380AC
_08037F92:
	ldrh r1, [r6]
	cmp r1, #1
	bne _08037FD8
	ldr r1, _08037FC0
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08037FD4
	movs r0, #0xe7
	bl play_sound
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08037FC4
	cmp r0, #1
	beq _08037FCC
	b _08037FEA
	.align 2, 0
_08037FB8: .4byte gSomeBlend
_08037FBC: .4byte 0x000035BA
_08037FC0: .4byte 0x0000351C
_08037FC4:
	ldr r0, [r4]
	bl sub_0802A0BC
	b _08037FEA
_08037FCC:
	ldr r0, [r4]
	bl sub_0802A080
	b _08037FEA
_08037FD4:
	movs r0, #0xd2
	b _08037FE6
_08037FD8:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037FF0
	movs r0, #0xd3
_08037FE6:
	bl play_sound
_08037FEA:
	bl sub_08037AF4
	b _080380AC
_08037FF0:
	ldrh r3, [r4, #2]
	cmp r3, #1
	bls _08038048
	ldrh r0, [r4, #4]
	mov r8, r0
	adds r0, r4, #4
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	str r5, [sp, #8]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08039544
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038048
	ldrh r0, [r4, #4]
	cmp r0, r8
	bls _0803802C
	ldr r1, _08038028
	adds r0, r7, r1
	strh r5, [r0]
	b _08038034
	.align 2, 0
_08038028: .4byte 0x00003524
_0803802C:
	ldr r0, _08038040
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
_08038034:
	ldr r0, _08038044
	adds r1, r7, r0
	movs r0, #0xa
	strh r0, [r1]
	b _080380AC
	.align 2, 0
_08038040: .4byte 0x00003524
_08038044: .4byte 0x00003526
_08038048:
	adds r0, r4, #0
	adds r0, #0xa
	movs r1, #0
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_08039694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038098
	ldrh r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08037CA4
	ldr r2, _08038088
	ldr r1, _0803808C
	adds r3, r2, r1
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08038090
	adds r0, r2, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	ldr r1, _08038094
	adds r2, r2, r1
	strb r0, [r2]
	b _080380AC
	.align 2, 0
_08038088: .4byte gSomeBlend
_0803808C: .4byte 0x000121B9
_08038090: .4byte 0x000035BA
_08038094: .4byte 0x000121C6
_08038098:
	ldr r0, _080380B8
	ldr r1, _080380BC
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080380AC
	adds r0, r4, #4
	adds r1, r6, #0
	bl sub_08039934
_080380AC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080380B8: .4byte gSomeBlend
_080380BC: .4byte 0x00003520
	.syntax divided
