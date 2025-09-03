	.syntax unified
sub_0806C898:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r3, _0806C95C
	ldr r0, [sp]
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	lsls r1, r1, #0x10
	ldr r3, _0806C960
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0806C964
	adds r6, r4, #0
	adds r6, #0x20
	mov r8, r0
	ldr r0, [r6, #4]
	adds r5, r0, #1
	ldr r0, [r4, #0x20]
	cmp r0, r5
	bge _0806C908
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C8DA
	adds r0, r1, #0
_0806C8DA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r4, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C8FA
	adds r2, r0, #0
_0806C8F0:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C8F0
_0806C8FA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C904
	bl __builtin_vec_delete
_0806C904:
	str r5, [r6]
	str r7, [r6, #8]
_0806C908:
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
	ble _0806C93C
	adds r2, r5, #0
_0806C92A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C92A
_0806C93C:
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
_0806C95C: .4byte 0xFFFF0000
_0806C960: .4byte 0x0000FFFF
	.syntax divided
