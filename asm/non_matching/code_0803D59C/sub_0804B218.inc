	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0804B27C
	adds r6, r4, #0
	adds r6, #0x74
	movs r1, #0xe8
	adds r1, r1, r4
	mov r8, r1
	movs r1, #0xae
	lsls r1, r1, #1
	adds r7, r4, r1
	adds r1, #0x74
	adds r5, r4, r1
	adds r2, r4, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	movs r3, #4
	orrs r1, r3
	strb r1, [r2]
	adds r2, #0x74
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	ldr r1, _0804B280
	adds r2, r4, r1
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	ldr r1, _0804B284
	adds r2, r4, r1
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	ldr r1, _0804B288
	adds r2, r4, r1
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	ldr r0, [r0, #4]
	cmp r0, #0x28
	bne _0804B28C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r6, #0
	movs r1, #0
	b _0804B2EC
	.align 2, 0
_0804B27C: .4byte gUnknown_0201A55C
_0804B280: .4byte 0x00000157
_0804B284: .4byte 0x000001CB
_0804B288: .4byte 0x0000023F
_0804B28C:
	cmp r0, #0x50
	bne _0804B29A
	adds r0, r5, #0
	movs r1, #0x71
	bl sub_08050F88
	b _0804B308
_0804B29A:
	cmp r0, #0x86
	bne _0804B2AA
	adds r0, r5, #0
	movs r1, #0
	movs r2, #7
	bl sub_08050F2C
	b _0804B308
_0804B2AA:
	cmp r0, #0x8a
	bne _0804B2B8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805108C
	b _0804B308
_0804B2B8:
	cmp r0, #0x8e
	bne _0804B2C6
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805108C
	b _0804B308
_0804B2C6:
	cmp r0, #0x92
	bne _0804B2D4
	adds r0, r5, #0
	movs r1, #0x6d
	bl sub_08050F88
	b _0804B308
_0804B2D4:
	cmp r0, #0xc8
	bne _0804B2E4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_08050F2C
	b _0804B308
_0804B2E4:
	cmp r0, #0xcc
	bne _0804B2F4
	adds r0, r5, #0
	movs r1, #7
_0804B2EC:
	movs r2, #0
	bl sub_08050F2C
	b _0804B308
_0804B2F4:
	cmp r0, #0xcb
	bls _0804B308
	ldr r1, _0804B330
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0804B308
	movs r0, #6
	bl sub_0804B6E8
_0804B308:
	adds r0, r5, #0
	bl sub_08050D80
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	adds r0, r7, #0
	bl sub_08050D80
	mov r0, r8
	bl sub_08050D80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B330: .4byte 0x000004FC
	.syntax divided
