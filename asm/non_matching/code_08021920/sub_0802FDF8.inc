	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r1, sp
	bl sub_08036C24
	adds r0, r4, #0
	mov r1, sp
	bl sub_08036830
	cmp r0, #0xf
	bhi _0802FE14
	movs r0, #1
	b _0802FF88
_0802FE14:
	ldr r0, [r4, #0x2c]
	movs r1, #6
	ldrsh r0, [r0, r1]
	adds r6, r4, #0
	adds r6, #0x8f
	cmp r0, #0
	bne _0802FEB2
	bl sub_080031E0
	ldr r3, [r4, #0x2c]
	adds r5, r4, #0
	adds r5, #0xc3
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r2, r1, #4
	subs r2, r2, r1
	movs r1, #0x3f
	ands r1, r0
	adds r2, r2, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x2c]
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r0, #7
	strh r0, [r2, #4]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #6]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802FE72
	adds r0, r4, #0
	mov r1, sp
	bl sub_080367D8
	strb r0, [r6]
	b _0802FE92
_0802FE72:
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802FE8C
	adds r0, r1, #1
	strb r0, [r6]
	b _0802FE92
_0802FE8C:
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
_0802FE92:
	ldrb r0, [r6]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0802FEB2:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802FF60
	add r5, sp, #4
	mov r2, sp
	adds r2, #6
	adds r1, r5, #0
	bl sub_080270A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802FEFC
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r5, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08035AEC
	b _0802FF0C
_0802FEFC:
	ldr r0, [r4, #0x2c]
	strh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802FF2A
_0802FF0C:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FF6A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802FF6A
_0802FF2A:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802FF54
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FF6A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802FF6A
_0802FF54:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	b _0802FF6A
_0802FF60:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802FF6A:
	ldr r1, [r4, #0x2c]
	ldrh r2, [r1, #4]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802FF7A
	subs r0, r2, #1
	strh r0, [r1, #4]
_0802FF7A:
	ldr r0, [r4, #0x2c]
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0802FF86
	strh r1, [r0, #6]
_0802FF86:
	movs r0, #0
_0802FF88:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
