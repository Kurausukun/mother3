	.syntax unified
sub_08053620:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r6]
	cmp r0, #0
	bne _08053640
	cmp r5, #0
	beq _080536EC
_08053640:
	ldrh r2, [r2, #2]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08053688
	ldrh r0, [r6]
	cmp r0, r8
	beq _080536EC
	movs r0, #0xd1
	bl play_sound
	ldrh r3, [r4, #6]
	ldrh r0, [r6]
	cmp r0, r3
	bhs _0805366C
	mov r0, r8
	strh r0, [r6]
	ldrh r0, [r4, #8]
	cmp r0, r8
	beq _080536C8
	mov r1, r8
	b _080536C2
_0805366C:
	ldrh r2, [r6]
	ldrh r1, [r4, #6]
	lsls r0, r1, #1
	cmp r2, r0
	bge _0805367E
	subs r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	b _080536E6
_0805367E:
	subs r0, r2, r1
	strh r0, [r6]
	ldrh r0, [r4, #8]
	subs r0, r0, r3
	b _080536E6
_08053688:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080536EC
	ldrh r0, [r6]
	cmp r0, r5
	beq _080536EC
	movs r0, #0xd1
	bl play_sound
	ldrh r7, [r4, #6]
	cmp r5, r7
	bhs _080536AE
	strh r5, [r6]
	ldrh r0, [r4, #8]
	cmp r0, r8
	beq _080536C8
	mov r1, r8
	b _080536C2
_080536AE:
	ldrh r2, [r6]
	ldrh r1, [r4, #6]
	subs r3, r5, r1
	cmp r2, r3
	ble _080536CC
	strh r5, [r6]
	ldrh r0, [r4, #8]
	adds r1, r3, #1
	cmp r0, r1
	beq _080536C8
_080536C2:
	strh r1, [r4, #8]
	movs r0, #2
	b _080536EE
_080536C8:
	movs r0, #1
	b _080536EE
_080536CC:
	lsls r0, r1, #1
	subs r0, r5, r0
	cmp r2, r0
	ble _080536DE
	adds r0, r2, r1
	strh r0, [r6]
	subs r0, r5, r7
	adds r0, #1
	b _080536E6
_080536DE:
	adds r0, r2, r1
	strh r0, [r6]
	ldrh r1, [r4, #8]
	adds r0, r7, r1
_080536E6:
	strh r0, [r4, #8]
	movs r0, #2
	b _080536EE
_080536EC:
	movs r0, #0
_080536EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
