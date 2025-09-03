	.syntax unified
sub_080089F0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _08008B88
	adds r0, r7, r1
	movs r1, #0
	str r1, [r0]
	adds r4, r7, #0
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r2, r2, r4
	mov r8, r2
	ldr r3, _08008B8C
	adds r0, r4, r3
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _08008A1E
	b _08008B76
_08008A1E:
	add r0, sp, #8
	mov sb, r0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r6, r4, r1
_08008A28:
	ldr r0, [r4]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08008A32
	b _08008B62
_08008A32:
	ldr r2, _08008B88
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, #4
	add r5, sp, #4
	cmp r4, r0
	beq _08008A4A
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08008ECC
_08008A4A:
	ldr r0, [r4]
	lsls r0, r0, #0xe
	mov r3, r8
	adds r3, #0xc8
	str r3, [sp, #0xc]
	cmp r0, #0
	blt _08008B06
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08008A62
	adds r0, #7
_08008A62:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08008B90
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08008A7A
	adds r0, #7
_08008A7A:
	asrs r0, r0, #3
	mov r3, sb
	strh r0, [r3, #2]
	ldrb r0, [r6, #2]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldrb r1, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	mov r1, sb
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_08009C84
	mov r2, r8
	str r0, [r2]
	mov r3, sb
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	bl sub_08009CD8
	mov r1, r8
	str r0, [r1, #4]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #5
	adds r2, r2, r0
	ldr r0, _08008B94
	ands r2, r0
	lsls r2, r2, #7
	ldr r0, [r6]
	ldr r1, _08008B98
	ands r0, r1
	orrs r0, r2
	str r0, [r6]
	ldrh r0, [r5]
	movs r2, #7
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r1, [r4]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	mov r0, r8
	bl sub_08008C28
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08008B06:
	ldrb r0, [r4, #2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	bl sub_08009DDC
	ldrh r5, [r5]
	adds r0, r0, r5
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, _08008B9C
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	ldr r2, _08008BA0
	adds r1, r7, r2
	strh r0, [r1]
	mov r0, r8
	adds r0, #8
	ldr r3, _08008BA4
	adds r1, r7, r3
	movs r2, #0x60
	bl sub_08001B18
	mov r0, r8
	adds r0, #0x68
	ldr r2, _08008BA8
	adds r1, r7, r2
	movs r2, #0x60
	bl sub_08001B18
	adds r6, #0xcc
	movs r3, #0xcc
	add r8, r3
	ldr r1, _08008B88
	adds r0, r7, r1
	str r4, [r0]
_08008B62:
	adds r4, #4
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r7, r2
	cmp r4, r0
	bhs _08008B76
	mov r3, sl
	cmp r3, #0
	beq _08008B76
	b _08008A28
_08008B76:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B88: .4byte 0x0000322C
_08008B8C: .4byte 0x0000C513
_08008B90: .4byte 0xFFFF0000
_08008B94: .4byte 0x000003FF
_08008B98: .4byte 0xFFFE007F
_08008B9C: .4byte 0x0000322A
_08008BA0: .4byte 0x00003228
_08008BA4: .4byte 0x00003168
_08008BA8: .4byte 0x000031C8
	.syntax divided
