	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080498E4
	adds r3, r0, #0
	movs r2, #0
	add r6, sp, #0x18
	movs r4, #0
_080497E6:
	mov r0, sp
	adds r1, r0, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #8
	add r0, sp
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _080497E6
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	adds r0, r5, #4
	adds r4, r5, #0
	adds r4, #0x85
	ldrb r2, [r4]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r2, [r4]
	lsrs r2, r2, #4
	adds r1, r6, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
