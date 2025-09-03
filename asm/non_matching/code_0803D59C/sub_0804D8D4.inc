	.syntax unified
sub_0804D8D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, _0804D900
	mov r8, r0
	ldr r0, _0804D904
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804D8F2
	b _0804D9E8
_0804D8F2:
	ldrh r1, [r7]
	cmp r1, #1
	bne _0804D908
	adds r0, r5, #0
	bl sub_0804F294
	b _0804D9E8
	.align 2, 0
_0804D900: .4byte gSomeBlend
_0804D904: .4byte 0x000044F2
_0804D908:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D938
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C330
	mov r0, r8
	adds r0, #0x50
	ldr r1, _0804D934
	add r1, r8
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D9E8
	.align 2, 0
_0804D934: .4byte 0x0000423C
_0804D938:
	ldr r6, _0804D968
	add r6, r8
	ldrh r4, [r6]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #0
	beq _0804D9AC
	cmp r0, #0x10
	bhi _0804D96C
	adds r0, r5, #4
	lsrs r3, r3, #0x11
	movs r1, #1
	ands r1, r4
	adds r3, r3, r1
	ldrh r1, [r6]
	str r1, [sp]
	ldrh r1, [r5, #6]
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #2
	bl sub_08053AC8
	b _0804D98C
	.align 2, 0
_0804D968: .4byte 0x00004282
_0804D96C:
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
	adds r2, r7, #0
	movs r3, #2
	bl sub_08053968
_0804D98C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D9AC
	bl sub_08046D90
	ldr r0, _0804D9A8
	add r0, r8
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0804D9E8
	.align 2, 0
_0804D9A8: .4byte 0x0000C5AD
_0804D9AC:
	ldr r4, _0804D9F4
	adds r0, r4, #4
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804D9E8
	ldrh r0, [r4, #4]
	bl sub_08053E98
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0804D9F8
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq _0804D9E8
	strb r1, [r2]
	bl sub_0804C398
	bl sub_08046D90
_0804D9E8:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D9F4: .4byte gUnknown_02018FC8
_0804D9F8: .4byte 0x000012C4
	.syntax divided
