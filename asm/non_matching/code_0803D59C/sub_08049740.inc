	.syntax unified
sub_08049740:
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080498E4
	mov r2, sp
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #8]
	ldrb r1, [r0, #2]
	strb r1, [r2, #1]
	ldrb r1, [r0, #3]
	strb r1, [r2, #9]
	ldrb r1, [r0, #4]
	strb r1, [r2, #2]
	ldrb r1, [r0, #5]
	strb r1, [r2, #0xa]
	ldrb r1, [r0, #6]
	strb r1, [r2, #3]
	ldrb r1, [r0, #7]
	strb r1, [r2, #0xb]
	ldrb r1, [r0, #8]
	strb r1, [r2, #4]
	ldrb r1, [r0, #9]
	strb r1, [r2, #0xc]
	ldrb r1, [r0, #0xa]
	strb r1, [r2, #5]
	ldrb r1, [r0, #0xb]
	strb r1, [r2, #0xd]
	ldrb r1, [r0, #0xc]
	strb r1, [r2, #6]
	ldrb r1, [r0, #0xd]
	strb r1, [r2, #0xe]
	ldrb r1, [r0, #0xe]
	strb r1, [r2, #7]
	ldrb r1, [r0, #0xf]
	strb r1, [r2, #0xf]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r3, [sp, #0x24]
	add r4, sp, #0x18
	ldrb r1, [r0, #0x10]
	strb r1, [r4]
	ldrb r0, [r0, #0x11]
	strb r0, [r4, #8]
	adds r0, r5, #4
	adds r6, r5, #0
	adds r6, #0x85
	ldrb r2, [r6]
	lsrs r2, r2, #4
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	adds r5, #0x44
	ldrb r2, [r6]
	lsrs r2, r2, #4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
