	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0803EA60
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0803EA64
	adds r0, r6, #0
	bl sub_0803EAEC
	b _0803EADC
	.align 2, 0
_0803EA60: .4byte gUnknown_02004100
_0803EA64:
	movs r0, #0x98
	lsls r0, r0, #6
	adds r4, r6, r0
	ldr r1, _0803EABC
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803EAA6
_0803EA74:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803EA9A
	adds r0, r4, #4
	ldr r1, [r4]
	movs r2, #0x40
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x44
	ldr r1, [r4]
	adds r1, #0x40
	movs r2, #0x40
	bl sub_08001A14
_0803EA9A:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x8c
	cmp r5, #0
	bne _0803EA74
_0803EAA6:
	ldr r0, _0803EAC0
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _0803EAC8
	ldr r1, _0803EAC4
	adds r0, r6, r1
	b _0803EACA
	.align 2, 0
_0803EABC: .4byte 0x000076D9
_0803EAC0: .4byte 0x00006C44
_0803EAC4: .4byte 0x00006C38
_0803EAC8:
	adds r0, r1, #0
_0803EACA:
	str r0, [r2]
	ldr r2, _0803EAE4
	adds r0, r6, r2
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _0803EAE8
	adds r0, r6, r2
	strb r1, [r0]
_0803EADC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EAE4: .4byte 0x00006C44
_0803EAE8: .4byte 0x000076D9
	.syntax divided
