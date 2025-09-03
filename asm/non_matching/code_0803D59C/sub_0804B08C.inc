	.syntax unified
sub_0804B08C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r5, _0804B0E8
	movs r0, #0x74
	adds r0, r0, r5
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0xe8
	movs r1, #0xae
	lsls r1, r1, #1
	adds r7, r5, r1
	adds r2, r5, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x74
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804B0EC
	adds r2, r5, r0
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804B0F0
	adds r2, r5, r0
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, #0x14
	beq _0804B0F8
	cmp r0, #0x18
	bne _0804B0F4
	adds r0, r6, #0
	movs r1, #2
	bl sub_0805108C
	b _0804B1B2
	.align 2, 0
_0804B0E8: .4byte gUnknown_0201A55C
_0804B0EC: .4byte 0x00000157
_0804B0F0: .4byte 0x000001CB
_0804B0F4:
	cmp r0, #0x78
	bne _0804B102
_0804B0F8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0805108C
	b _0804B1B2
_0804B102:
	cmp r0, #0x7c
	bne _0804B110
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805108C
	b _0804B1B2
_0804B110:
	cmp r0, #0xa0
	bne _0804B13A
	adds r0, r5, #0
	movs r1, #0
	movs r2, #7
	bl sub_08050F2C
	mov r0, sb
	movs r1, #0
	movs r2, #7
	bl sub_08050F2C
	adds r0, r7, #0
	movs r1, #0
	movs r2, #7
	bl sub_08050F2C
	adds r0, r7, #0
	bl sub_08051058
	b _0804B1B2
_0804B13A:
	cmp r0, #0xa4
	bne _0804B19A
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805108C
	mov r0, sb
	movs r1, #0
	bl sub_0805108C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0805108C
	adds r0, r5, #0
	movs r1, #0x82
	bl sub_08050F88
	mov r0, sb
	movs r1, #0x80
	bl sub_08050F88
	adds r0, r6, #0
	movs r1, #1
	movs r2, #6
	bl sub_08050F2C
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_08050F2C
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x48
	movs r3, #0x2e
	bl sub_08051254
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0x30
	movs r3, #0x2e
	bl sub_08051254
	b _0804B1B2
_0804B19A:
	cmp r0, #0xc4
	bne _0804B1B2
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
_0804B1B2:
	mov r0, r8
	ldr r2, [r0, #4]
	cmp r2, #0x27
	bls _0804B1D2
	ldr r0, _0804B210
	ldr r1, _0804B214
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804B1D2
	mov r1, r8
	ldrb r0, [r1, #9]
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #9]
_0804B1D2:
	cmp r2, #0xc3
	bls _0804B1E8
	ldr r0, _0804B210
	ldr r1, _0804B214
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0804B1E8
	movs r0, #5
	bl sub_0804B6E8
_0804B1E8:
	adds r0, r5, #0
	bl sub_08050D80
	mov r0, sb
	bl sub_08050D80
	adds r0, r7, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B210: .4byte gSomeBlend
_0804B214: .4byte 0x00004A30
	.syntax divided
