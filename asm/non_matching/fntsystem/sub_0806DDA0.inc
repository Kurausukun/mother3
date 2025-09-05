	.syntax unified
sub_0806DDA0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	str r3, [sp, #0x20]
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r1, [r6]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #0
	mov sl, r1
	strb r0, [r6]
	ldr r0, [r7, #0x54]
	str r0, [sp]
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_080887B0
	adds r1, r7, #0
	adds r1, #0x3c
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp]
	str r0, [r7, #0x54]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080887CC
	ldr r0, [r7, #0x74]
	str r0, [sp]
	adds r0, r4, #0
	bl __11Unk0806D478
	adds r1, r7, #0
	adds r1, #0x6c
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [sp]
	str r0, [r7, #0x74]
	adds r0, r4, #0
	movs r1, #2
	bl _._11Unk0806D478
	ldr r0, [r7, #0x7c]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_080886E0
	adds r1, r7, #0
	adds r1, #0x78
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r7, #0x7c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080886F0
	adds r5, r7, #0
	adds r5, #0x84
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08088628
	adds r1, r7, #0
	adds r1, #0x80
	adds r0, r4, #0
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08088638
	adds r0, r7, #0
	adds r0, #0x88
	mov r5, sl
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	subs r0, #0x50
	mov r1, r8
	bl sub_080887EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	adds r0, #0x58
	mov r1, sb
	bl sub_0806D5AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	adds r0, #0x6c
	ldr r1, [sp, #0x20]
	bl sub_0806D4D0__11Unk0806D478P4Unk2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DEA6
	adds r0, r7, #0
	movs r1, #0
	bl sub_0806E098
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #1
	b _0806DEA8
_0806DEA6:
	movs r0, #0
_0806DEA8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
