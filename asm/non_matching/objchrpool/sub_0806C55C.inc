	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r1, r4, #0
	bl sub_0806C634
	mov r8, r0
	ldr r1, _0806C62C
	ldr r0, [sp]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	lsls r5, r5, #0x10
	ldr r1, _0806C630
	ands r0, r1
	orrs r0, r5
	str r0, [sp]
	str r4, [sp, #4]
	lsrs r4, r4, #4
	movs r0, #3
	ands r4, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r6, r0, r6
	adds r6, #0x20
	ldr r0, [r6, #4]
	adds r4, r0, #1
	ldr r0, [r6]
	cmp r0, r4
	bge _0806C5DA
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C5AC
	adds r0, r1, #0
_0806C5AC:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r5, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C5CC
	adds r2, r0, #0
_0806C5C2:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C5C2
_0806C5CC:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C5D6
	bl __builtin_vec_delete
_0806C5D6:
	str r4, [r6]
	str r7, [r6, #8]
_0806C5DA:
	mov r0, r8
	lsls r2, r0, #3
	ldr r1, [r6, #8]
	adds r1, r2, r1
	ldr r0, [r6, #4]
	mov r3, r8
	subs r5, r0, r3
	adds r3, r1, #0
	adds r3, #8
	lsls r0, r5, #3
	subs r0, #8
	adds r4, r1, r0
	adds r3, r3, r0
	adds r7, r2, #0
	cmp r5, #0
	ble _0806C60E
	adds r2, r5, #0
_0806C5FC:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C5FC
_0806C60E:
	ldr r0, [r6, #8]
	adds r0, r7, r0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C62C: .4byte 0xFFFF0000
_0806C630: .4byte 0x0000FFFF
	.syntax divided
