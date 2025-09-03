	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0804AE10
	adds r5, r4, #0
	adds r5, #0x74
	adds r2, r4, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x74
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804ADFE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08050F2C
_0804ADFE:
	ldr r0, [r6, #4]
	cmp r0, #0x10
	bne _0804AE14
	adds r0, r5, #0
	movs r1, #0
	movs r2, #7
	bl sub_08050F2C
	b _0804AE20
	.align 2, 0
_0804AE10: .4byte gUnknown_0201A55C
_0804AE14:
	cmp r0, #0x14
	bne _0804AE20
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805108C
_0804AE20:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804AE3A
	ldr r0, [r6, #4]
	cmp r0, #0x13
	bls _0804AE3A
	movs r0, #2
	bl sub_0804B6E8
_0804AE3A:
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r5, #0
	bl sub_08050D80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
