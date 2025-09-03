	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp]
	adds r6, r4, #0
	adds r6, #0x20
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _080724EC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080724B8:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _080724E0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _080724DA
	adds r2, r0, #0
_080724D0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080724D0
_080724DA:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _080724EC
_080724E0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080724B8
_080724EC:
	ldr r0, [sp]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
