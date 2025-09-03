	.syntax unified
sub_0804B660:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0804B6D8
	adds r4, r3, #0
	adds r4, #0x74
	adds r5, r3, #0
	adds r5, #0xe8
	movs r0, #0xae
	lsls r0, r0, #1
	adds r6, r3, r0
	adds r0, #0x74
	adds r0, r0, r3
	mov r8, r0
	adds r1, r3, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	adds r1, #0x74
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B6DC
	adds r1, r3, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B6E0
	adds r1, r3, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B6E4
	adds r1, r3, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_08050D80
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r5, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	mov r0, r8
	bl sub_08050D80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6D8: .4byte gUnknown_0201A55C
_0804B6DC: .4byte 0x00000157
_0804B6E0: .4byte 0x000001CB
_0804B6E4: .4byte 0x0000023F
	.syntax divided
