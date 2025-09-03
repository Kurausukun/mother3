	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_08009D6C
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	add r5, sp, #0x18
_080092CA:
	mov r1, sp
	adds r2, r1, r3
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	mov r7, sp
	adds r2, r7, r0
	ldrb r0, [r1, #1]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _080092CA
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r5]
	ldrb r0, [r1, #1]
	strb r0, [r5, #8]
	adds r0, r6, #4
	adds r4, r6, #0
	adds r4, #0x85
	ldrb r2, [r4]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r2, [r4]
	lsrs r2, r2, #4
	adds r1, r5, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
