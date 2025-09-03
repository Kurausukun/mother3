	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, #0
	bne _08065B4E
	movs r0, #0
	b _08065C16
_08065B4E:
	movs r0, #0x58
	bl __builtin_new
	adds r1, r4, #0
	bl sub_080864AC
	adds r1, r0, #0
	str r1, [sp]
	cmp r5, #0
	beq _08065B76
	ldr r2, [r1, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	adds r1, r5, #0
	adds r1, #0x20
	ldr r2, [r2, #4]
	bl _call_via_r2
_08065B76:
	mov r7, r8
	adds r7, #4
	cmp r6, #0
	ble _08065BAA
	ldr r4, [sp, #0x1c]
	adds r5, r6, #0
_08065B82:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r3, r1, #0
	adds r3, #0xc8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r2, [r4]
	movs r1, #0
	cmp r2, #0
	beq _08065B9C
	adds r1, r2, #0
	adds r1, #0x20
_08065B9C:
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bne _08065B82
_08065BAA:
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r7, #0
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, r5
	bge _08065C04
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08065BD6
	adds r0, r1, #0
_08065BD6:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08065BF6
	adds r1, r0, #0
_08065BEC:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08065BEC
_08065BF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08065C00
	bl __builtin_vec_delete
_08065C00:
	str r5, [r4]
	str r6, [r4, #8]
_08065C04:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp]
_08065C16:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
