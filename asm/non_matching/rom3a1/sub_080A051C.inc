	.syntax unified
sub_080A051C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x16
	add r1, sp, #0xc
	strh r0, [r1]
	mov r4, sp
	adds r6, r1, #0
	movs r0, #8
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #8]
	adds r2, r5, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A055A
	adds r1, r0, #0
_080A054C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A054C
_080A055A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080A0564
	bl __builtin_vec_delete
_080A0564:
	movs r0, #4
	str r0, [r4]
	str r5, [r4, #8]
	ldr r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r5
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A05E4
	movs r0, #0x17
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A05D4
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A05A2
	adds r0, r1, #0
_080A05A2:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A05C6
	adds r1, r0, #0
_080A05B8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A05B8
_080A05C6:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A05D0
	bl __builtin_vec_delete
_080A05D0:
	str r4, [r5]
	str r6, [r5, #8]
_080A05D4:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A05E4:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A064E
	movs r0, #0x18
	add r1, sp, #0x10
	strh r0, [r1]
	mov r5, sp
	adds r7, r1, #0
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080A063E
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080A060C
	adds r0, r1, #0
_080A060C:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080A0630
	adds r1, r0, #0
_080A0622:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080A0622
_080A0630:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A063A
	bl __builtin_vec_delete
_080A063A:
	str r4, [r5]
	str r6, [r5, #8]
_080A063E:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r7]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080A064E:
	ldr r1, [sp, #4]
	subs r1, #1
	movs r0, #0
	bl randS32
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	bl sub_08074124
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080A0672
	bl __builtin_vec_delete
_080A0672:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
