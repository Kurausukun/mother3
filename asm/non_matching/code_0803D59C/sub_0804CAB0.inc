	.syntax unified
sub_0804CAB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	ldr r7, _0804CAF4
	ldr r1, _0804CAF8
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804CACC
	b _0804CC34
_0804CACC:
	mov r2, r8
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804CB1C
	ldr r0, _0804CAFC
	adds r1, r7, r0
	ldrh r0, [r5, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0804CB04
	ldr r1, _0804CB00
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804CAEC
	b _0804CC34
_0804CAEC:
	adds r0, r5, #0
	bl sub_0804EAA4
	b _0804CC34
	.align 2, 0
_0804CAF4: .4byte gSomeBlend
_0804CAF8: .4byte 0x000044F2
_0804CAFC: .4byte 0x00002DFA
_0804CB00: .4byte 0x0000426A
_0804CB04:
	ldr r2, _0804CB18
	adds r0, r7, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804CB10
	b _0804CC34
_0804CB10:
	adds r0, r5, #0
	bl sub_0804EA28
	b _0804CC34
	.align 2, 0
_0804CB18: .4byte 0x0000426C
_0804CB1C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0804CB36
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804CC34
_0804CB36:
	adds r0, r5, #0
	adds r0, #0xa
	ldrh r3, [r5, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [sp]
	mov r1, r8
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804CB7C
	ldrh r1, [r5, #0xa]
	ldr r2, _0804CB74
	adds r0, r7, r2
	strb r1, [r0]
	bl sub_0804BE64
	adds r0, r7, #0
	adds r0, #0x50
	ldr r2, _0804CB78
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	b _0804CC34
	.align 2, 0
_0804CB74: .4byte 0x00004264
_0804CB78: .4byte 0x0000423C
_0804CB7C:
	ldr r0, _0804CBC8
	adds r1, r7, r0
	ldrh r0, [r5, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0804CBF6
	ldr r1, _0804CBCC
	adds r6, r7, r1
	ldrh r4, [r6]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #0
	beq _0804CC34
	cmp r0, #0x10
	bhi _0804CBD4
	adds r0, r5, #4
	lsrs r3, r3, #0x11
	movs r1, #1
	ands r1, r4
	adds r3, r3, r1
	ldrh r1, [r6]
	str r1, [sp]
	ldrh r1, [r5, #6]
	str r1, [sp, #4]
	mov r1, r8
	movs r2, #2
	bl sub_08053AC8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804CC34
	bl sub_08046D90
	ldr r2, _0804CBD0
	adds r0, r7, r2
	b _0804CC2C
	.align 2, 0
_0804CBC8: .4byte 0x00002DFA
_0804CBCC: .4byte 0x0000426A
_0804CBD0: .4byte 0x0000C5AD
_0804CBD4:
	adds r0, r5, #4
	adds r1, r5, #0
	adds r1, #8
	lsrs r3, r3, #0x11
	movs r2, #1
	ands r2, r4
	adds r3, r3, r2
	str r3, [sp]
	ldrh r2, [r6]
	str r2, [sp, #4]
	ldrh r2, [r5, #6]
	str r2, [sp, #8]
	mov r2, r8
	movs r3, #2
	bl sub_08053968
	b _0804CC1C
_0804CBF6:
	ldr r2, _0804CC40
	adds r4, r7, r2
	ldrh r2, [r4]
	lsls r3, r2, #0x10
	cmp r3, #0
	beq _0804CC34
	adds r0, r5, #4
	lsrs r3, r3, #0x11
	movs r1, #1
	ands r1, r2
	adds r3, r3, r1
	ldrh r1, [r4]
	str r1, [sp]
	ldrh r1, [r5, #6]
	str r1, [sp, #4]
	mov r1, r8
	movs r2, #2
	bl sub_08053AC8
_0804CC1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804CC34
	bl sub_08046D90
	ldr r1, _0804CC44
	adds r0, r7, r1
_0804CC2C:
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804CC34:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC40: .4byte 0x0000426C
_0804CC44: .4byte 0x0000C5AD
	.syntax divided
