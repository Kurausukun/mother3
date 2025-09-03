	.syntax unified
sub_0800C030:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0800C096
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0800C096:
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800C0BC
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, [r4, #0x34]
	movs r1, #2
	ldrsh r0, [r0, r1]
	movs r1, #1
	cmp r0, #0x10
	ble _0800C0B2
	movs r1, #3
_0800C0B2:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0800C0BC:
	mov r5, sp
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C10C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C0FC
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C0EE
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08034CE8
	adds r0, r4, #0
	bl sub_080360E0
	b _0800C102
_0800C0EE:
	adds r0, r4, #0
	bl sub_08034DA8
	adds r0, r4, #0
	bl sub_080361DC
	b _0800C102
_0800C0FC:
	adds r0, r4, #0
	bl sub_08035FE4
_0800C102:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
