	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802F49A
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08002FD4
	ldr r3, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0xc3
	ldrb r2, [r1]
	lsrs r2, r2, #3
	adds r2, #1
	lsls r1, r2, #4
	subs r1, r1, r2
	adds r1, r1, r0
	strh r1, [r3]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802F420
	adds r0, r1, #1
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	b _0802F42A
_0802F420:
	movs r0, #1
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x8f
	strb r1, [r0]
_0802F42A:
	adds r7, r5, #0
	adds r7, #0x8f
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0xbc
	movs r3, #7
	mov sl, r3
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r3, [r2]
	movs r1, #0x1d
	rsbs r1, r1, #0
	mov sb, r1
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	adds r6, r2, #0
	mov r2, r8
	cmp r2, #0
	beq _0802F49A
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036830
	mov r3, r8
	lsls r1, r3, #4
	cmp r0, r1
	bls _0802F49A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	strb r0, [r7]
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0802F49A:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0802F4A8
	b _0802F614
_0802F4A8:
	ldrb r0, [r7]
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r4, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F5C0
	adds r2, r5, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	movs r3, #0
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	mov r0, sp
	strh r3, [r0]
	adds r0, r5, #0
	bl sub_08035AEC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F502
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	adds r6, r5, #0
	adds r6, #0xbc
	b _0802F54C
_0802F502:
	adds r6, r5, #0
	adds r6, #0xbc
	mov r2, r8
	cmp r2, #0
	beq _0802F54C
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036830
	mov r3, r8
	lsls r1, r3, #4
	cmp r0, r1
	bls _0802F54C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	strb r0, [r7]
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0802F54C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802F592
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802F56E
	adds r0, r1, #1
	strb r0, [r7]
	b _0802F574
_0802F56E:
	movs r0, #1
	orrs r1, r0
	strb r1, [r7]
_0802F574:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	b _0802F5B6
_0802F592:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r2, [r6]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, r1
	beq _0802F5B6
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
_0802F5B6:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r6]
	b _0802F5D8
_0802F5C0:
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F5E4
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
_0802F5D8:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802F61E
_0802F5E4:
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802F608
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802F61E
_0802F608:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	b _0802F61E
_0802F614:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802F61E:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802F62E
	subs r0, r2, #1
	strh r0, [r1]
_0802F62E:
	movs r1, #0
	ldr r0, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802F63C
	movs r1, #1
_0802F63C:
	adds r0, r1, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
