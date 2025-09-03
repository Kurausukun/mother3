	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	mov sl, r1
	mov r8, r2
	mov sb, r3
	adds r7, r6, #0
	adds r7, #0x34
	ldrb r1, [r7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7]
	ldr r0, [r6, #0x50]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_080887B0
	adds r1, r6, #0
	adds r1, #0x38
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp]
	str r0, [r6, #0x50]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080887CC
	ldr r0, [r6, #0x70]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806D478
	adds r1, r6, #0
	adds r1, #0x68
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [sp]
	str r0, [r6, #0x70]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D4B0
	ldr r0, [r6, #0x78]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08088628
	adds r1, r6, #0
	adds r1, #0x74
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r6, #0x78]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r6, #0
	adds r0, #0x38
	mov r1, sl
	bl sub_080887EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	adds r0, #0x54
	mov r1, r8
	bl sub_0806D5AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	adds r0, #0x68
	mov r1, sb
	bl sub_0806D4D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DAC8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0806DADC
	ldrb r0, [r7]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #1
	b _0806DACA
_0806DAC8:
	movs r0, #0
_0806DACA:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
