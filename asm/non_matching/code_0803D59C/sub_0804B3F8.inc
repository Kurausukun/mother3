	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r4, _0804B49C
	adds r7, r4, #0
	adds r7, #0x74
	movs r0, #0xe8
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0xae
	lsls r0, r0, #1
	adds r0, r0, r4
	mov r8, r0
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r6, r4, r0
	adds r0, #0x74
	adds r5, r4, r0
	adds r1, r4, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	adds r1, #0x74
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B4A0
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B4A4
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B4A8
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B4AC
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3, #4]
	cmp r0, #0x33
	bne _0804B46A
	ldrb r0, [r3, #9]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #9]
_0804B46A:
	adds r0, r5, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r7, #0
	bl sub_08050D80
	mov r0, r8
	bl sub_08050D80
	mov r0, sb
	bl sub_08050D80
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B49C: .4byte gUnknown_0201A55C
_0804B4A0: .4byte 0x00000157
_0804B4A4: .4byte 0x000001CB
_0804B4A8: .4byte 0x0000023F
_0804B4AC: .4byte 0x000002B3
	.syntax divided
