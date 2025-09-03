	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	mov r8, r6
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r7, r5, #0
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _0800343E
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x1b
	ldrh r3, [r4, #0xc]
	str r6, [sp]
	str r5, [sp, #4]
	bl sub_08003554
_0800343E:
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _080034BC
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldrb r3, [r4, #0x1d]
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800349A
	cmp r0, #1
	bgt _0800346A
	cmp r0, #0
	beq _08003470
	b _080034BC
_0800346A:
	cmp r0, #2
	beq _080034A6
	b _080034BC
_08003470:
	adds r0, r1, #1
	strh r0, [r4, #0xc]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	subs r2, r5, r6
	cmp r0, r2
	ble _080034BC
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080034BA
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x1d]
	strh r2, [r4, #0xc]
	b _080034BC
_0800349A:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080034B8
	mov r1, r8
	subs r0, r7, r1
	b _080034BA
_080034A6:
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080034B8
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r4, #0x1d]
	movs r0, #1
	b _080034BA
_080034B8:
	subs r0, r1, #1
_080034BA:
	strh r0, [r4, #0xc]
_080034BC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
