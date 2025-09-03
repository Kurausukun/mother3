	.syntax unified
sub_080626D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	add r5, sp, #4
	movs r4, #0
	strh r4, [r5]
	strh r4, [r5, #2]
	add r4, sp, #8
	movs r7, #0x80
	lsls r7, r7, #1
	strh r7, [r4]
	strh r7, [r4, #2]
	mov r4, sp
	strh r1, [r4]
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r6, r0, #0
	adds r6, #0x24
	mov r8, sp
	ldr r1, [r6, #4]
	adds r1, #1
	mov sb, r1
	ldr r0, [r0, #0x24]
	cmp r0, sb
	bge _0806277C
	lsls r1, r1, #1
	movs r0, #4
	cmp r0, r1
	bge _08062716
	adds r0, r1, #0
_08062716:
	mov sb, r0
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	bl __builtin_vec_new
	mov r2, sb
	subs r2, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r2, r1
	beq _08062746
	movs r4, #0
	adds r3, r7, #0
	adds r7, r1, #0
	adds r1, r0, #4
_08062736:
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	adds r1, #0xc
	subs r2, #1
	cmp r2, r7
	bne _08062736
_08062746:
	mov sl, r0
	ldr r0, [r6, #8]
	mov ip, r0
	mov r3, sl
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806276A
	adds r2, r0, #0
_08062756:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	movs r0, #0xc
	add ip, r0
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08062756
_0806276A:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08062774
	bl __builtin_vec_delete
_08062774:
	mov r1, sb
	str r1, [r6]
	mov r3, sl
	str r3, [r6, #8]
_0806277C:
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r0, r8
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	adds r2, #1
	str r2, [r6, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
