	.syntax unified
sub_0802F02C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802F044
	b _0802F1C8
_0802F044:
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	eors r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5, #0x2c]
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _0802F06A
	cmp r0, #3
	bgt _0802F066
	cmp r0, #0
	beq _0802F06A
	b _0802F074
_0802F066:
	cmp r0, #6
	bne _0802F074
_0802F06A:
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r6, #4
	movs r7, #2
	b _0802F088
_0802F074:
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r1, #3
	bl Divide
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #1
	movs r7, #1
_0802F088:
	ldr r0, [r5, #0x2c]
	strh r1, [r0]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802F118
	ldrh r0, [r5]
	strh r0, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	mov r1, sp
	strh r0, [r1]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	strh r0, [r4, #2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r6, #3
	bl sub_08002FD4
	mov r1, sp
	ldrh r1, [r1]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r7, #3
	bl sub_08002FD4
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	strh r1, [r4, #2]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	ldrh r2, [r5, #8]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xa]
	adds r1, r1, r0
	strh r1, [r5, #0xe]
	b _0802F196
_0802F118:
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r6, #3
	adds r1, r4, #0
	bl sub_08002FD4
	adds r4, r4, r0
	mov r0, sp
	strh r4, [r0]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r7, #3
	adds r1, r4, #0
	bl sub_08002FD4
	adds r4, r4, r0
	mov r0, sp
	strh r4, [r0, #2]
	ldr r0, [r5, #0x2c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0802F166
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	b _0802F170
_0802F166:
	mov r0, sp
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xc]
	subs r0, r0, r1
_0802F170:
	strh r0, [r5, #0xc]
	bl sub_080030A4
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802F18A
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	b _0802F194
_0802F18A:
	mov r0, sp
	ldrh r1, [r0, #2]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xe]
	subs r0, r0, r1
_0802F194:
	strh r0, [r5, #0xe]
_0802F196:
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0xc
	bl sub_080367D8
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
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
_0802F1C8:
	mov r2, r8
	movs r0, #4
	ldrsh r4, [r2, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802F1E6
	movs r0, #1
	b _0802F1F2
_0802F1E6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0802FF90
	movs r0, #0
_0802F1F2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
