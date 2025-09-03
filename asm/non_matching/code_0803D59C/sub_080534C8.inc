	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r4, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov r0, sp
	strh r4, [r0]
	ldrh r0, [r5]
	cmp r0, #0
	bne _080534FA
	cmp r6, #0
	beq _08053588
_080534FA:
	ldrh r1, [r7, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08053542
	ldrh r0, [r5]
	cmp r0, r8
	beq _08053522
	cmp r2, #0x40
	bne _08053516
	movs r0, #0xd0
	bl play_sound
	b _0805351C
_08053516:
	movs r0, #0xd1
	bl play_sound
_0805351C:
	ldrh r0, [r5]
	subs r0, #1
	b _08053582
_08053522:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053588
	cmp r2, #0x40
	bne _08053536
	movs r0, #0xd0
	bl play_sound
	b _0805353C
_08053536:
	movs r0, #0xd1
	bl play_sound
_0805353C:
	strh r6, [r5]
	movs r0, #1
	b _0805358A
_08053542:
	ands r1, r3
	cmp r1, #0
	beq _08053588
	ldrh r0, [r5]
	cmp r0, r6
	beq _08053566
	cmp r3, #0x80
	bne _0805355A
	movs r0, #0xd0
	bl play_sound
	b _08053560
_0805355A:
	movs r0, #0xd1
	bl play_sound
_08053560:
	ldrh r0, [r5]
	adds r0, #1
	b _08053582
_08053566:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053588
	cmp r3, #0x80
	bne _0805357A
	movs r0, #0xd0
	bl play_sound
	b _08053580
_0805357A:
	movs r0, #0xd1
	bl play_sound
_08053580:
	mov r0, r8
_08053582:
	strh r0, [r5]
	movs r0, #1
	b _0805358A
_08053588:
	movs r0, #0
_0805358A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
