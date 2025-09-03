	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r0, sp
	strh r3, [r0]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	ldr r2, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r8, r1
	cmp r0, #0
	bne _0802FCE4
	movs r0, #1
	strh r0, [r2, #2]
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802FCE4
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
_0802FCE4:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802FD7C
	ldrb r0, [r6]
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
	beq _0802FD62
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FD1A
	adds r2, r5, #0
	adds r2, #0x96
	b _0802FD1E
_0802FD1A:
	adds r2, r5, #0
	adds r2, #0x98
_0802FD1E:
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
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FD5C
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802FD5C:
	add r1, sp, #4
	movs r0, #0
	b _0802FD80
_0802FD62:
	cmp r7, #3
	beq _0802FD7C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802FD7C
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	b _0802FD80
_0802FD7C:
	add r1, sp, #4
	movs r0, #1
_0802FD80:
	strh r0, [r1]
	cmp r7, #1
	beq _0802FD9C
	cmp r7, #1
	bgt _0802FD90
	cmp r7, #0
	beq _0802FD98
	b _0802FDE6
_0802FD90:
	cmp r7, #2
	beq _0802FDB0
	cmp r7, #3
	bne _0802FDE6
_0802FD98:
	ldrh r0, [r1]
	b _0802FDE8
_0802FD9C:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FDE6
	ldrb r0, [r6]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_080270F8
	b _0802FDBC
_0802FDB0:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FDE6
	ldrb r0, [r6]
	bl sub_080270E8
_0802FDBC:
	strb r0, [r6]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802FDE6
	ldrb r0, [r6]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0802FDE6:
	movs r0, #0
_0802FDE8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
