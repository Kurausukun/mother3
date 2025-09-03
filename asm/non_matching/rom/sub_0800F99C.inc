	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	mov sb, r3
	ldr r7, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800F9D4
	movs r1, #0
_0800F9D4:
	movs r0, #0
	mov sl, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r5, #2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0800F9E6
	movs r1, #0
_0800F9E6:
	strh r1, [r5, #2]
	add r4, sp, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08036BEC
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	ldr r2, _0800FA98
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	add r6, sp, #8
	strh r0, [r6, #2]
	add r5, sp, #0xc
	adds r0, r5, #0
	bl sub_0801A5C0
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
	strh r1, [r7]
	ldr r2, [sp, #0x48]
	strh r1, [r2]
	mov r0, sb
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0800FA38
	rsbs r0, r1, #0
_0800FA38:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FA9C
	cmp r1, #0
	ble _0800FA44
	movs r0, #1
_0800FA44:
	adds r1, r0, #0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r6, _0800FA98
	lsrs r2, r6, #0x10
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r5, r2
	beq _0800FAFC
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	add r1, sp, #8
	mov sl, r1
	mov r4, sp
	add r6, sp, #0xc
	add r0, sp, #4
	mov ip, r0
_0800FA6A:
	cmp r3, #0
	bge _0800FAA0
	mov r1, sl
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	bgt _0800FA8E
	ldrh r1, [r4, #2]
	ldrh r0, [r6, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _0800FAC8
	ldr r1, [sp, #0x48]
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FA8E:
	mov r2, r8
	ldrh r0, [r2]
	adds r0, r3, r0
	strh r0, [r2]
	b _0800FAD0
	.align 2, 0
_0800FA98: .4byte 0xFFFF0000
_0800FA9C: .4byte 0x0000FFFF
_0800FAA0:
	cmp r3, #0
	ble _0800FAD0
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r2, #2
	ldrsh r1, [r6, r2]
	ldrh r2, [r6, #6]
	adds r1, r1, r2
	cmp r0, r1
	bge _0800FAC8
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _0800FAC8
	ldr r2, [sp, #0x48]
	ldrh r0, [r2]
	adds r0, r3, r0
	strh r0, [r2]
_0800FAC8:
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FAD0:
	ldrh r0, [r4, #2]
	ldr r2, [sp, #0x48]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	mov r0, ip
	ldrh r1, [r0, #2]
	mov r2, r8
	ldrh r0, [r2]
	adds r1, r1, r0
	mov r0, ip
	strh r1, [r0, #2]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	mov r2, sl
	strh r1, [r2, #2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54
	cmp r5, r0
	bne _0800FA6A
_0800FAFC:
	ldr r2, [sp, #0x1c]
	asrs r1, r2, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0800FB08
	rsbs r0, r1, #0
_0800FB08:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54
	cmp r1, #0
	ble _0800FB14
	movs r0, #1
_0800FB14:
	adds r1, r0, #0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FB54
	cmp r5, r0
	beq _0800FBB6
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x24]
	mov r4, sp
	add r0, sp, #0xc
	mov sl, r0
	add r1, sp, #4
	mov ip, r1
_0800FB36:
	cmp r3, #0
	bge _0800FB58
	ldr r2, [sp, #0x24]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0x78
	bgt _0800FB86
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r2, sl
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bgt _0800FB7E
	b _0800FB86
	.align 2, 0
_0800FB54: .4byte 0x0000FFFF
_0800FB58:
	cmp r3, #0
	ble _0800FB8C
	movs r6, #0
	ldrsh r2, [r4, r6]
	str r2, [sp, #0x20]
	add r1, sp, #0xc
	mov r2, sl
	movs r6, #0
	ldrsh r0, [r2, r6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _0800FB86
	ldr r2, [sp, #0x24]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0x77
	ble _0800FB86
_0800FB7E:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
_0800FB86:
	ldrh r0, [r7]
	adds r0, r3, r0
	strh r0, [r7]
_0800FB8C:
	mov r2, sb
	ldrh r0, [r2]
	ldrh r6, [r4]
	adds r0, r0, r6
	strh r0, [r4]
	ldrh r0, [r7]
	mov r1, sp
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r6, [sp, #0x24]
	strh r0, [r6]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FBF8
	cmp r5, r0
	bne _0800FB36
_0800FBB6:
	ldr r1, _0800FBFC
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800FBCE
	mov r2, sp
	ldrh r6, [r2, #0x14]
	mov r2, sb
	strh r6, [r2]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r7]
_0800FBCE:
	ldr r1, _0800FBFC
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800FBE8
	mov r2, sp
	ldrh r6, [r2, #0x18]
	ldr r2, [sp, #0x48]
	strh r6, [r2]
	mov r0, sp
	ldrh r1, [r0, #0x18]
	mov r0, r8
	strh r1, [r0]
_0800FBE8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBF8: .4byte 0x0000FFFF
_0800FBFC: .4byte gGame
	.syntax divided
