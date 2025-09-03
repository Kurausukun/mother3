	.syntax unified
sub_08012590:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r1, [r6, #1]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _080125AA
	lsls r0, r1, #0x1b
	lsrs r2, r0, #0x1e
	cmp r2, #0
	bne _080125AE
_080125AA:
	movs r0, #0
	b _0801262A
_080125AE:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, r2
	bge _08012618
	movs r0, #0xf
	mov r8, r0
	mov r7, sp
_080125C0:
	adds r0, r6, #4
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r4, #0xf
	ands r4, r0
	lsrs r2, r0, #4
	mov r0, r8
	ands r2, r0
	lsls r1, r4, #4
	ldr r0, _08012638
	adds r3, r1, r0
	ldrb r1, [r3, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012608
	ldr r0, [r3]
	ldrb r0, [r0, #8]
	cmp r0, r2
	bls _08012608
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801263C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08012608
	movs r0, #8
	bl sub_080260C8
	ldrh r0, [r7]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7]
_08012608:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r5, r0
	blt _080125C0
_08012618:
	ldr r0, [r6]
	lsls r0, r0, #9
	lsrs r0, r0, #0x16
	cmp r0, #0
	beq _08012626
	bl play_sound
_08012626:
	mov r0, sp
	ldrh r0, [r0]
_0801262A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012638: .4byte gUnknown_0200B7D0
	.syntax divided
