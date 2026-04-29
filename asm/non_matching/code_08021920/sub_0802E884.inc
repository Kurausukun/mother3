	.syntax unified
sub_0802E884:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r1, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802E8E0
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r5]
	strh r0, [r1, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _0802E8C8
	cmp r0, #6
	beq _0802E8D0
	b _0802E8D8
_0802E8C8:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	subs r0, r0, r2
	b _0802E8D6
_0802E8D0:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	adds r0, r2, r0
_0802E8D6:
	strh r0, [r1, #4]
_0802E8D8:
	ldrh r0, [r5]
	strh r0, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
_0802E8E0:
	movs r2, #8
	ldrsh r0, [r5, r2]
	ldr r3, [r5, #0x2c]
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r7, r5, #0
	adds r7, #0x9a
	ldrh r2, [r7]
	ldrh r3, [r3]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0802E9AC
	mov r8, r3
	ldr r1, [sp, #8]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #8]
	ldrh r2, [r7]
	ldr r0, [r5, #0x2c]
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl lerp
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0802E9B0
	ldr r2, [sp, #8]
	ands r2, r3
	orrs r2, r1
	str r2, [sp, #8]
	ldr r4, _0802E9B4
	ldrb r1, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	add r6, sp, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r1, sb
	subs r1, r1, r0
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r1, [sp, #4]
	mov r0, r8
	ands r1, r0
	mov r0, ip
	orrs r1, r0
	asrs r2, r2, #0x10
	mov r8, r2
	movs r2, #2
	ldrsh r0, [r5, r2]
	mov r2, r8
	subs r0, r2, r0
	lsls r2, r0, #0xc
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x10
	ands r1, r3
	orrs r1, r2
	str r1, [sp, #4]
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E98C
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
_0802E98C:
	ldrb r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #8]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldrh r1, [r7]
	ldr r0, [r5, #0x2c]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E9B8
	movs r0, #0
	b _0802E9BA
	.align 2, 0
_0802E9AC: .4byte 0xFFFF0000
_0802E9B0: .4byte 0x0000FFFF
_0802E9B4: .4byte gGame
_0802E9B8:
	movs r0, #1
_0802E9BA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
