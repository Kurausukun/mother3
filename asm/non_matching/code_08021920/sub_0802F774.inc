	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802F7D0
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270E8
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
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
	ldr r2, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0xc3
	ldrb r1, [r0]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	strh r0, [r2]
_0802F7D0:
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F81A
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
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
	b _0802F826
_0802F81A:
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F844
_0802F826:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F878
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802F878
_0802F844:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802F86E
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F878
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802F878
_0802F86E:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802F878:
	ldr r1, [r4, #0x2c]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802F888
	subs r0, r2, #1
	strh r0, [r1]
_0802F888:
	movs r1, #0
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802F896
	movs r1, #1
_0802F896:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
