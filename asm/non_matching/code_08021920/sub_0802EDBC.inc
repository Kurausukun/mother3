	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802EDD0
	b _0802EFFE
_0802EDD0:
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	eors r0, r2
	strh r0, [r1, #4]
	ldr r2, [r5, #0x2c]
	movs r3, #6
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _0802EE00
	cmp r1, #0
	bgt _0802EDF6
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EE14
	b _0802EF16
_0802EDF6:
	cmp r1, #3
	beq _0802EE00
	cmp r1, #6
	beq _0802EE00
	b _0802EF16
_0802EE00:
	ldrh r2, [r7, #2]
	movs r1, #4
	mov r0, sp
	strh r1, [r0]
	mov r1, sp
	adds r1, #2
	movs r0, #2
	strh r0, [r1]
	adds r4, r1, #0
	b _0802EF30
_0802EE14:
	ldrh r0, [r7, #2]
	strh r0, [r2]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802EE4E
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r4, #0
	bl sub_080270A0
	b _0802EE6E
_0802EE4E:
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #8
	bl sub_08002FD4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r4, #0
	bl sub_080270A0
_0802EE6E:
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _0802EE8E
	rsbs r1, r1, #0
_0802EE8E:
	lsls r1, r1, #3
	adds r0, r2, #0
	bl sub_08002FD4
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802EEA4
	rsbs r0, r0, #0
_0802EEA4:
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ldr r1, _0802EEF4
	ands r6, r1
	orrs r6, r0
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _0802EEC4
	rsbs r1, r1, #0
_0802EEC4:
	lsls r1, r1, #3
	bl sub_08002FD4
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0802EED6
	rsbs r0, r0, #0
_0802EED6:
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #0x14
	ldr r1, _0802EEF8
	ands r6, r1
	orrs r6, r0
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _0802EEFC
	ldrh r0, [r5, #0xc]
	adds r0, r0, r6
	b _0802EF00
	.align 2, 0
_0802EEF4: .4byte 0xFFFF0000
_0802EEF8: .4byte 0x0000FFFF
_0802EEFC:
	ldrh r0, [r5, #0xc]
	subs r0, r0, r6
_0802EF00:
	strh r0, [r5, #0xc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802EF12
	asrs r0, r6, #0x10
	ldrh r2, [r5, #0xe]
	adds r0, r0, r2
	b _0802EFCA
_0802EF12:
	asrs r1, r6, #0x10
	b _0802EFC6
_0802EF16:
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r1, #3
	bl Divide
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, r0, #0
_0802EF30:
	ldr r0, [r5, #0x2c]
	strh r2, [r0]
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	bl sub_08002FD4
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0802EF9C
	ands r6, r0
	orrs r6, r1
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	bl sub_08002FD4
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0802EFA0
	ands r6, r0
	orrs r6, r1
	ldr r0, [r5, #0x2c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0802EFA4
	lsls r0, r6, #4
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	b _0802EFAA
	.align 2, 0
_0802EF9C: .4byte 0xFFFF0000
_0802EFA0: .4byte 0x0000FFFF
_0802EFA4:
	lsls r1, r6, #4
	ldrh r0, [r5, #0xc]
	subs r0, r0, r1
_0802EFAA:
	strh r0, [r5, #0xc]
	bl sub_080030A4
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802EFC2
	asrs r0, r6, #0x10
	lsls r0, r0, #4
	ldrh r3, [r5, #0xe]
	adds r0, r0, r3
	b _0802EFCA
_0802EFC2:
	asrs r1, r6, #0x10
	lsls r1, r1, #4
_0802EFC6:
	ldrh r0, [r5, #0xe]
	subs r0, r0, r1
_0802EFCA:
	strh r0, [r5, #0xe]
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
_0802EFFE:
	ldr r0, [r5, #0x2c]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802F018
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0802FF90
	b _0802F022
_0802F018:
	ldrh r1, [r7, #4]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0802FF90
_0802F022:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
