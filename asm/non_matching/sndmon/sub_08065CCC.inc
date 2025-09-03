	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08065D36
	adds r6, r2, #4
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _08065D20
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08065CEC:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08065D14
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08065D0E
	adds r2, r0, #0
_08065D04:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08065D04
_08065D0E:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _08065D20
_08065D14:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08065CEC
_08065D20:
	ldr r2, [sp]
	cmp r2, #0
	beq _08065D36
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065D36:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
