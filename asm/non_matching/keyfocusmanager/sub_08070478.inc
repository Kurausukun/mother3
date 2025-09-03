	.syntax unified
sub_08070478:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov sb, r3
	add r0, sp, #0x2c
	ldrb r0, [r0]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080704BC
	ldr r0, [r4, #8]
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #8]
	strh r5, [r0, #6]
	ldr r1, [r4, #8]
	movs r0, #2
	str r0, [r1, #8]
_080704BC:
	cmp r6, #0
	beq _08070564
	str r6, [sp]
	mov r0, sp
	movs r1, #0
	mov r4, sb
	strh r4, [r0, #4]
	strh r1, [r0, #6]
	mov r6, r8
	cmp r6, #1
	bne _080704EC
	ldr r0, [sp]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r6, [sp, #8]
	b _080704EE
_080704EC:
	str r1, [sp, #8]
_080704EE:
	adds r5, r7, #0
	adds r5, #0x20
	mov r8, sp
	ldr r0, [r5, #4]
	adds r0, #1
	mov sb, r0
	ldr r0, [r7, #0x20]
	cmp r0, sb
	bge _0807054E
	mov r4, sb
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0807050C
	adds r0, r1, #0
_0807050C:
	mov sb, r0
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	bl __builtin_vec_new
	mov sl, r0
	ldr r6, [r5, #8]
	mov ip, r6
	mov r3, sl
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0807053C
	adds r2, r0, #0
_08070528:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	movs r7, #0xc
	add ip, r7
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08070528
_0807053C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08070546
	bl __builtin_vec_delete
_08070546:
	mov r0, sb
	str r0, [r5]
	mov r1, sl
	str r1, [r5, #8]
_0807054E:
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r0, r8
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	adds r2, #1
	str r2, [r5, #4]
_08070564:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
