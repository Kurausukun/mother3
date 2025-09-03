	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r6, _08041D98
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldrh r0, [r7, #0xa]
	bl sub_08054FE0
	ldrh r0, [r7, #0xa]
	bl sub_08054FF0
	ldr r1, _08041D9C
	ldr r2, _08041DA0
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041CEE
	ldr r3, _08041DA4
	adds r3, r3, r1
	mov sl, r3
	ldrh r0, [r3]
	cmp r0, #1
	bls _08041CEE
	ldr r4, _08041DA8
	ldr r0, _08041DAC
	mov sb, r0
	ldr r1, _08041DB0
	adds r6, r6, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x16
	muls r1, r0, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	ands r0, r5
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_08041CEE:
	movs r0, #0x78
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0xb8
	movs r2, #7
	bl sub_08047CDC
	ldr r0, _08041DB4
	ldrh r2, [r7, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	bl sub_080446E8
	ldr r2, _08041D9C
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r4, r1, #0
	cmp r1, #0
	beq _08041D64
	ldr r3, _08041DA0
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041D5A
	adds r0, r1, #0
	bl sub_080444AC
_08041D5A:
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_08041D64:
	ldr r2, _08041D9C
	ldr r0, _08041DB8
	adds r6, r2, r0
	ldrh r3, [r6]
	cmp r3, #6
	bls _08041D72
	movs r3, #6
_08041D72:
	mov r8, r3
	ldrh r0, [r6]
	cmp r0, #0
	bne _08041DBC
	movs r0, #0x57
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x7a
	movs r2, #0x4a
	bl sub_08047CDC
	b _08041E08
	.align 2, 0
_08041D98: .4byte gUnknown_0200F920
_08041D9C: .4byte gSomeBlend
_08041DA0: .4byte 0x000041DA
_08041DA4: .4byte 0x00002DFA
_08041DA8: .4byte gUnknown_080C6530
_08041DAC: .4byte gUnknown_080C696C
_08041DB0: .4byte 0x00006474
_08041DB4: .4byte gUnknown_080C6260
_08041DB8: .4byte 0x0000426C
_08041DBC:
	ldr r1, _08041EE8
	adds r4, r2, r1
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #8]
	subs r1, r1, r0
	ldr r3, _08041EEC
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, #0x17
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r5, #1
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x56
	bl sub_08046D2C
	adds r0, r4, #0
	bl sub_080465F8
	ldrh r0, [r6]
	ldrh r2, [r7, #8]
	movs r1, #0xa0
	str r1, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	movs r1, #0x78
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #6
	mov r3, r8
	bl sub_080467C0
_08041E08:
	ldrh r0, [r7, #8]
	lsls r0, r0, #2
	ldr r1, _08041EF0
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r8
	bhs _08041E6A
	ldr r0, _08041EF4
	adds r6, r1, r0
_08041E1A:
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08041E48
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _08041E48
	ldrb r0, [r6]
	adds r2, r5, #0
	muls r2, r0, r2
	adds r2, #0x21
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _08041EF8
	movs r1, #0x5e
	movs r3, #0x20
	bl sub_08046A28
_08041E48:
	ldrb r0, [r4]
	ldrb r1, [r6]
	adds r2, r5, #0
	muls r2, r1, r2
	adds r2, #0x21
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xc4
	movs r3, #0
	bl sub_08045854
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, r8
	blo _08041E1A
_08041E6A:
	ldr r6, _08041EFC
	ldr r1, _08041F00
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08041ECC
	ldr r2, _08041F04
	adds r0, r6, r2
	ldr r3, _08041F08
	adds r1, r6, r3
	ldrh r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	movs r2, #0x84
	lsls r2, r2, #7
	adds r5, r6, r2
	ldr r3, _08041F0C
	adds r0, r6, r3
	ldrh r0, [r0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xf
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	adds r0, r5, #0
	bl sub_080465F8
_08041ECC:
	ldrh r0, [r6, #0x14]
	movs r0, #0x10
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x1c]
	ldr r0, _08041F10
	strh r0, [r6, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041EE8: .4byte 0x000041E8
_08041EEC: .4byte 0x0000C5A1
_08041EF0: .4byte gUnknown_020194A8
_08041EF4: .4byte 0x00009121
_08041EF8: .4byte gUnknown_080C6440
_08041EFC: .4byte gSomeBlend
_08041F00: .4byte 0x000041DA
_08041F04: .4byte 0x000041F4
_08041F08: .4byte 0x00002F04
_08041F0C: .4byte 0x00002F24
_08041F10: .4byte 0x0000FFFF
	.syntax divided
