	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r1
	adds r4, r2, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	mov r1, sl
	str r1, [sp, #8]
	ldrh r0, [r5]
	adds r1, r6, #0
	bl Divide
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r7, [sp, #0xc]
	ldrh r0, [r5]
	adds r1, r6, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldrh r1, [r4, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080539F8
	cmp r7, #0
	beq _08053AB6
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	subs r0, r0, r6
	strh r0, [r5]
	mov r2, sl
	cmp r2, #1
	bls _08053AB2
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, r6
	blo _08053AB2
	adds r2, r0, #0
	adds r1, r2, r6
	ldrh r0, [r5]
	adds r0, r0, r6
	cmp r1, r0
	ble _08053AB2
	subs r0, r2, r6
	mov r2, sb
	strh r0, [r2]
	movs r0, #2
	b _08053AB8
_080539F8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08053A42
	ldrh r0, [r5]
	mov r4, r8
	subs r4, #1
	cmp r0, r4
	beq _08053AB6
	ldr r0, [sp]
	subs r0, #1
	cmp r7, r0
	bge _08053AB6
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	adds r0, r6, r0
	strh r0, [r5]
	ldrh r0, [r5]
	adds r1, r4, #0
	cmp r1, r0
	ble _08053A28
	adds r1, r0, #0
_08053A28:
	strh r1, [r5]
	ldrh r1, [r5]
	mov r0, sb
	ldrh r3, [r0]
	ldr r2, [sp, #8]
	adds r0, r3, r2
	cmp r1, r0
	blt _08053AB2
	adds r0, r6, r3
	mov r1, sb
	strh r0, [r1]
	movs r0, #2
	b _08053AB8
_08053A42:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08053A7C
	cmp r2, #0
	bne _08053A70
	ldrh r0, [r5]
	subs r0, #1
	adds r0, r0, r6
	cmp r0, r8
	bge _08053AB6
	movs r0, #0xd1
	bl play_sound
	ldr r2, _08053A6C
	adds r0, r2, #0
	ldrh r1, [r5]
	adds r0, r0, r1
	adds r0, r6, r0
	b _08053AB0
	.align 2, 0
_08053A6C: .4byte 0x0000FFFF
_08053A70:
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	subs r0, #1
	b _08053AB0
_08053A7C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08053AB6
	subs r0, r6, #1
	cmp r2, r0
	bne _08053A98
	movs r0, #0xd1
	bl play_sound
	ldr r2, [sp, #0xc]
	adds r0, r2, #0
	muls r0, r6, r0
	b _08053AB0
_08053A98:
	cmp r3, r0
	bge _08053AB6
	ldrh r0, [r5]
	adds r0, #1
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _08053AB6
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	adds r0, #1
_08053AB0:
	strh r0, [r5]
_08053AB2:
	movs r0, #1
	b _08053AB8
_08053AB6:
	movs r0, #0
_08053AB8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
