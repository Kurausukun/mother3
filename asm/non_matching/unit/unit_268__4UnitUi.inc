    .syntax unified
unit_268__4UnitUi:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r1, r7, #0
	bl flagStuff__4UnitUs
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08064818
	str r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080755D4
	b _0807571E
_080755D4:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08075608
	ldr r2, [sp]
	cmp r2, #0
	bne _080755F6
	b _0807571A
_080755F6:
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0807571A
_08075608:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807563A
	ldr r2, [sp]
	cmp r2, #0
	beq _0807571A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0807571A
_0807563A:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080756A8
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807571E
	adds r4, #0xe8
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08075708
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08075686
	adds r0, r1, #0
_08075686:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080756FA
	adds r1, r0, #0
_0807569C:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0807569C
	b _080756FA
_080756A8:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807571E
	adds r4, #0xe8
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08075708
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080756DA
	adds r0, r1, #0
_080756DA:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080756FA
	adds r1, r0, #0
_080756F0:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080756F0
_080756FA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08075704
	bl __builtin_vec_delete
_08075704:
	str r5, [r4]
	str r6, [r4, #8]
_08075708:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0807571A:
	adds r0, r7, #0
	b _08075736
_0807571E:
	ldr r2, [sp]
	cmp r2, #0
	beq _08075734
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08075734:
	movs r0, #0
_08075736:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
