	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0806C148
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r4, _0806C14C
	add r4, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0806C118
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C0EA
	adds r0, r1, #0
_0806C0EA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806C10A
	adds r2, r0, #0
_0806C100:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C100
_0806C10A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C114
	bl __builtin_vec_delete
_0806C114:
	str r5, [r4]
	str r7, [r4, #8]
_0806C118:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	ldr r2, _0806C150
	add r2, r8
	ldrh r0, [r2]
	mov r3, sb
	adds r1, r0, r3
	strh r1, [r2]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806C148: .4byte 0xFFFF0000
_0806C14C: .4byte 0x00000938
_0806C150: .4byte 0x00000944
	.syntax divided
