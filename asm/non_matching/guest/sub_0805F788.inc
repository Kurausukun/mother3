	.syntax unified
sub_0805F788:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F82E
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F7C8
	adds r2, r0, #0
_0805F7BE:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7BE
_0805F7C8:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r4, ip
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r5
	bge _0805F814
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F7E6
	adds r0, r1, #0
_0805F7E6:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F806
	adds r2, r0, #0
_0805F7FC:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7FC
_0805F806:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F810
	bl __builtin_vec_delete
_0805F810:
	str r5, [r4]
	str r7, [r4, #8]
_0805F814:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	mov r5, r8
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	movs r0, #1
	b _0805F830
_0805F82E:
	movs r0, #0
_0805F830:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
