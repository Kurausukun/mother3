	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	adds r4, r6, #0
	adds r4, #0x34
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x34]
	cmp r0, r5
	bge _08089840
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08089812
	adds r0, r1, #0
_08089812:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r4, #8]
	adds r2, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08089832
	adds r1, r0, #0
_08089828:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08089828
_08089832:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808983C
	bl __builtin_vec_delete
_0808983C:
	str r5, [r4]
	str r7, [r4, #8]
_08089840:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	adds r0, r6, #0
	bl sub_080898CC
	ldr r0, [sp]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
