	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r1, r8
	str r1, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	lsrs r0, r0, #0x10
	mov sb, r0
	mov sl, sb
	ldrh r0, [r5]
	adds r1, r4, #0
	bl Divide
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r7, [sp, #0xc]
	ldrh r0, [r5]
	adds r1, r4, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r6, #0
	ldr r0, [sp]
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08053B5A
	mov r1, r8
	cmp r1, #1
	bne _08053B22
	b _08053C22
_08053B22:
	cmp r7, #0
	bne _08053B4E
	movs r0, #0xd0
	bl play_sound
	cmp r6, #0
	bne _08053B40
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08053B40
	ldr r1, [sp, #8]
	lsrs r0, r1, #0x11
	b _08053B46
_08053B40:
	mov r1, sl
	lsrs r0, r1, #1
	subs r0, #1
_08053B46:
	muls r0, r4, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	b _08053C1E
_08053B4E:
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	subs r0, r0, r4
	b _08053C1E
_08053B5A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08053BB4
	mov r0, r8
	cmp r0, #1
	beq _08053C22
	mov r3, r8
	subs r3, #1
	cmp r7, r3
	bne _08053B7C
	movs r0, #0xd0
	bl play_sound
_08053B76:
	strh r6, [r5]
_08053B78:
	movs r0, #1
	b _08053C24
_08053B7C:
	cmp r7, r3
	bge _08053C22
	movs r0, #0xd0
	bl play_sound
	ldr r0, [sp, #4]
	subs r0, #2
	cmp r7, r0
	bne _08053B9E
	subs r0, r4, #1
	cmp r6, r0
	bne _08053B9E
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _08053B76
_08053B9E:
	ldrh r0, [r5]
	adds r0, r4, r0
	strh r0, [r5]
	ldrh r1, [r5]
	mov r0, sl
	subs r0, #1
	cmp r0, r1
	ble _08053BB0
	adds r0, r1, #0
_08053BB0:
	strh r0, [r5]
	b _08053B78
_08053BB4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08053BEC
	cmp r6, #0
	bne _08053BE0
	ldrh r0, [r5]
	subs r0, #1
	adds r0, r0, r4
	cmp r0, sb
	bge _08053C22
	movs r0, #0xd1
	bl play_sound
	ldr r1, _08053BDC
	adds r0, r1, #0
	ldrh r1, [r5]
	adds r0, r0, r1
	adds r0, r4, r0
	b _08053C1E
	.align 2, 0
_08053BDC: .4byte 0x0000FFFF
_08053BE0:
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	subs r0, #1
	b _08053C1E
_08053BEC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08053C22
	subs r0, r4, #1
	cmp r6, r0
	bne _08053C08
	movs r0, #0xd1
	bl play_sound
	ldr r1, [sp, #0xc]
	adds r0, r1, #0
	muls r0, r4, r0
	b _08053C1E
_08053C08:
	cmp r2, r0
	bge _08053C22
	ldrh r0, [r5]
	adds r0, #1
	cmp r0, sl
	bge _08053C22
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	adds r0, #1
_08053C1E:
	strh r0, [r5]
	b _08053B78
_08053C22:
	movs r0, #0
_08053C24:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
