	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _08065CC2
	adds r4, r2, #4
	b _08065C4C
_08065C46:
	movs r0, #1
	bl setsleep
_08065C4C:
	ldr r0, [sp]
	ldr r2, [r0, #0x1c]
	adds r2, #0xb0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08065C46
	adds r6, r4, #0
	mov r7, sp
	movs r5, #0
	ldr r3, [r6, #4]
	cmp r5, r3
	bge _08065CAC
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08065C78:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08065CA0
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08065C9A
	adds r2, r0, #0
_08065C90:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08065C90
_08065C9A:
	subs r0, r4, #1
	str r0, [r6, #4]
	b _08065CAC
_08065CA0:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08065C78
_08065CAC:
	ldr r2, [sp]
	cmp r2, #0
	beq _08065CC2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065CC2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
