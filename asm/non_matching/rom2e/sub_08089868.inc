	.syntax unified
sub_08089868:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	mov r6, ip
	adds r6, #0x34
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080898BA
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08089884:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080898AE
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080898A6
	adds r2, r0, #0
_0808989C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0808989C
_080898A6:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r4, #1
	b _080898BC
_080898AE:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08089884
_080898BA:
	movs r4, #0
_080898BC:
	mov r0, ip
	bl sub_080898CC
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
