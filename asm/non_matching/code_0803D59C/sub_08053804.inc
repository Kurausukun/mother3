	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	str r6, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r2, r8
	str r2, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	str r0, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	ldrh r7, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	bl __umodsi3
	adds r2, r0, #0
	subs r0, r7, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x10]
	ldrh r1, [r4, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08053890
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053870
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	subs r0, r0, r6
	b _0805393A
_08053870:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053956
	mov r2, r8
	cmp r2, #1
	bls _08053956
	movs r0, #0xd0
	bl play_sound
	mov r0, r8
	subs r0, #1
	muls r0, r6, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	b _0805393A
_08053890:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080538DE
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, r8
	subs r4, #1
	cmp r0, r4
	bge _080538C0
	adds r0, r7, r6
	cmp r0, sl
	bge _08053952
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	adds r0, r6, r0
	strh r0, [r5]
	b _08053952
_080538C0:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053956
	ldr r2, [sp, #8]
	cmp r2, #1
	bls _08053956
	movs r0, #0xd0
	bl play_sound
	adds r1, r6, #0
	muls r1, r4, r1
	ldrh r0, [r5]
	subs r0, r0, r1
	b _0805393A
_080538DE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08053914
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _080538F8
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	subs r0, #1
	b _0805393A
_080538F8:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053956
	movs r0, #0xd1
	bl play_sound
	ldr r0, _08053910
	add r0, sb
	adds r0, r6, r0
	b _0805393A
	.align 2, 0
_08053910: .4byte 0x0000FFFF
_08053914:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08053956
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	subs r1, #1
	cmp r0, r1
	bge _0805393E
	adds r0, r7, #1
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _08053952
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	adds r0, #1
_0805393A:
	strh r0, [r5]
	b _08053952
_0805393E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053956
	movs r0, #0xd1
	bl play_sound
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r5]
_08053952:
	movs r0, #1
	b _08053958
_08053956:
	movs r0, #0
_08053958:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
