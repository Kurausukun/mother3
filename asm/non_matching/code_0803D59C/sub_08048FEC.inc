	.syntax unified
sub_08048FEC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	mov r8, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080498E4
	mov r2, sp
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #8]
	mov r1, sp
	strb r3, [r1, #0x10]
	ldrb r1, [r0, #2]
	strb r1, [r2, #1]
	ldrb r1, [r0, #3]
	strb r1, [r2, #9]
	mov r1, sp
	strb r3, [r1, #0x11]
	ldrb r1, [r0, #4]
	strb r1, [r2, #2]
	ldrb r1, [r0, #5]
	strb r1, [r2, #0xa]
	mov r1, sp
	strb r3, [r1, #0x12]
	ldrb r1, [r0, #6]
	strb r1, [r2, #3]
	ldrb r1, [r0, #7]
	strb r1, [r2, #0xb]
	mov r1, sp
	strb r3, [r1, #0x13]
	ldrb r1, [r0, #8]
	strb r1, [r2, #4]
	ldrb r1, [r0, #9]
	strb r1, [r2, #0xc]
	mov r1, sp
	strb r3, [r1, #0x14]
	ldrb r1, [r0, #0xa]
	strb r1, [r2, #5]
	ldrb r1, [r0, #0xb]
	strb r1, [r2, #0xd]
	mov r1, sp
	strb r3, [r1, #0x15]
	ldrb r1, [r0, #0xc]
	strb r1, [r2, #6]
	ldrb r1, [r0, #0xd]
	strb r1, [r2, #0xe]
	mov r1, sp
	strb r3, [r1, #0x16]
	ldrb r1, [r0, #0xe]
	strb r1, [r2, #7]
	ldrb r1, [r0, #0xf]
	strb r1, [r2, #0xf]
	mov r1, sp
	strb r3, [r1, #0x17]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r3, [sp, #0x24]
	add r5, sp, #0x18
	ldrb r1, [r0, #0x10]
	strb r1, [r5]
	ldrb r0, [r0, #0x11]
	strb r0, [r5, #8]
	mov r4, r8
	adds r4, #0xc8
	ldrb r2, [r4]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	adds r1, r5, #0
	bl sub_08002104
	ldr r0, _080490CC
	mov r6, r8
	adds r6, #8
	movs r1, #0x68
	add r8, r1
	ldr r3, [r4]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r6, #0
	mov r2, r8
	bl sub_080491F0
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	mov r1, sp
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	mov r0, r8
	adds r1, r5, #0
	movs r3, #3
	bl sub_08001EA4
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080490CC: .4byte gUnknown_0201D428
	.syntax divided
