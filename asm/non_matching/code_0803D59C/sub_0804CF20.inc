	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	ldr r7, _0804CF74
	ldr r1, _0804CF78
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804CF3C
	b _0804D060
_0804CF3C:
	mov r2, r8
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804CF84
	movs r0, #0xd3
	bl play_sound
	bl sub_0804BF34
	adds r0, r7, #0
	adds r0, #0x50
	ldr r2, _0804CF7C
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r1, _0804CF80
	adds r0, r7, r1
	bl sub_08049AF8
	b _0804CFCA
	.align 2, 0
_0804CF74: .4byte gSomeBlend
_0804CF78: .4byte 0x000044F2
_0804CF7C: .4byte 0x0000423C
_0804CF80: .4byte 0x00004ED0
_0804CF84:
	adds r0, r5, #0
	adds r0, #0xa
	ldrh r3, [r5, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	mov r1, r8
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804CFE0
	ldrh r1, [r5, #0xa]
	ldr r2, _0804CFD8
	adds r0, r7, r2
	strb r1, [r0]
	strh r4, [r5, #4]
	strh r4, [r5, #8]
	adds r0, r7, #0
	adds r0, #0x50
	subs r2, #0x28
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	bl sub_08052DBC
	bl sub_08046D90
_0804CFCA:
	ldr r0, _0804CFDC
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0804D060
	.align 2, 0
_0804CFD8: .4byte 0x00004264
_0804CFDC: .4byte 0x000044F3
_0804CFE0:
	ldr r1, _0804D020
	adds r6, r7, r1
	ldrh r4, [r6]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #0
	beq _0804D060
	cmp r0, #0x10
	bhi _0804D028
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
	bne _0804D060
	bl sub_08046D90
	ldr r2, _0804D024
	adds r0, r7, r2
	b _0804D058
	.align 2, 0
_0804D020: .4byte 0x0000427A
_0804D024: .4byte 0x0000C5AD
_0804D028:
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
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D060
	bl sub_08046D90
	ldr r1, _0804D06C
	adds r0, r7, r1
_0804D058:
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804D060:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D06C: .4byte 0x0000C5AD
	.syntax divided
