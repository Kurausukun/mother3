	.syntax unified
sub_0802F8A0:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r2, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r2, r1]
	add r6, sp, #4
	cmp r0, #0
	bne _0802F900
	movs r1, #1
	movs r0, #1
	strh r0, [r2, #2]
	adds r0, r5, #0
	adds r0, #0x8f
	strb r1, [r0]
	movs r7, #0
	adds r4, r0, #0
	b _0802F8DA
_0802F8CE:
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802F8DA:
	cmp r7, #3
	bhi _0802F900
	ldrb r0, [r4]
	bl sub_08027164
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F8CE
_0802F900:
	ldr r0, [r5, #0x2c]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0802F96A
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F962
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802F962:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	subs r0, #1
	b _0802FA88
_0802F96A:
	adds r7, r5, #0
	adds r7, #0x8f
	ldrb r0, [r7]
	bl sub_08027164
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, r6, #0
	adds r0, r4, #2
	mov sb, r0
	mov r0, r8
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FA20
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0802FA8A
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r5, #0
	adds r6, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r7]
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802FA16
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r6]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802FA8A
_0802FA16:
	ldrb r0, [r7]
	bl sub_08027138
	strb r0, [r7]
	b _0802FA8A
_0802FA20:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	mov r0, r8
	strb r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FA8A
	ldr r1, [r5, #0x2c]
	movs r0, #7
_0802FA88:
	strh r0, [r1, #4]
_0802FA8A:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
