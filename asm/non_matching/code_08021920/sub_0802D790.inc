	.syntax unified
sub_0802D790:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	add r7, sp, #0x10
	cmp r0, #0
	beq _0802D7C6
	movs r5, #0
	ldrh r1, [r6, #4]
	ldr r4, _0802D7F0
	ldr r0, [sp, #0xc]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r1, [r6, #6]
	add r0, sp, #0xc
	strh r1, [r0, #2]
	adds r0, r6, #0
	bl sub_08036238
	ldr r0, [sp, #0x10]
	ands r0, r4
	str r0, [sp, #0x10]
	strh r5, [r7, #2]
_0802D7C6:
	ldr r2, [r6, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D7F4
	adds r0, r6, #0
	adds r0, #8
	adds r1, r6, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r6, #0
	bl sub_08002E8C
	movs r1, #0
	strh r1, [r7]
	add r0, sp, #0x10
	strh r1, [r0, #2]
	b _0802D85A
	.align 2, 0
_0802D7F0: .4byte 0xFFFF0000
_0802D7F4:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	adds r2, r7, #2
	adds r1, r7, #0
	bl sub_080270A0
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r6, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802D836
	ldrb r0, [r1]
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
_0802D836:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802D85A
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, _0802D918
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #9
	bne _0802D850
	movs r1, #3
_0802D850:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0802D85A:
	adds r4, r7, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D86C
	b _0802D9C8
_0802D86C:
	movs r2, #0
	ldr r1, _0802D91C
	ldr r0, [sp, #0x14]
	ands r0, r1
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	strh r2, [r1, #2]
	ldr r0, _0802D918
	mov sb, r0
	ldr r0, _0802D920
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r6, #0
	adds r2, #0x85
	mov r8, r1
	ldrb r2, [r2]
	cmp r0, r2
	bne _0802D94C
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, r2, #0
	cmp r2, #1
	bls _0802D8B8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0x10
	strh r1, [r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	strh r0, [r4, #2]
_0802D8B8:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	add r4, sp, #0x18
	mov r0, sp
	adds r0, #0x1a
	str r0, [sp]
	add r5, sp, #0x1c
	str r5, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_0800F99C
	cmp r7, #0
	bne _0802D928
	ldr r3, _0802D924
	add r3, sb
	ldr r2, [r6, #0x34]
	ldrh r1, [r4]
	ldrh r0, [r2, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	strh r0, [r3]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #2]
	adds r4, r1, #0
	muls r4, r0, r4
	adds r0, r4, #0
	strh r0, [r3, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r5]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r2, #2]
	ldrh r0, [r5, #2]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	mov r3, r8
	strh r0, [r3, #2]
	b _0802D990
	.align 2, 0
_0802D918: .4byte gGame
_0802D91C: .4byte 0xFFFF0000
_0802D920: .4byte 0x000067B8
_0802D924: .4byte 0x000067A4
_0802D928:
	ldr r1, _0802D948
	add r1, sb
	ldrh r0, [r4]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsls r0, r0, #4
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	b _0802D98E
	.align 2, 0
_0802D948: .4byte 0x000067A4
_0802D94C:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802D958
	cmp r0, #9
	bne _0802D974
_0802D958:
	adds r2, r6, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	mov r7, r8
	strh r0, [r7]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	strh r0, [r7, #2]
	b _0802D990
_0802D974:
	ldr r2, [r6, #0x34]
	ldrh r1, [r2, #2]
	ldrh r0, [r7]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	mov r4, r8
	strh r0, [r4]
	ldrh r1, [r2, #2]
	ldrh r0, [r7, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
_0802D98E:
	strh r0, [r4, #2]
_0802D990:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	adds r0, r6, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D9B6
	adds r1, r6, #0
	adds r1, #0xb6
	mov r3, r8
	ldrh r0, [r3, #2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	b _0802D9C0
_0802D9B6:
	mov r7, r8
	ldrh r0, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
_0802D9C0:
	adds r0, r6, #0
	bl sub_080360E0
	b _0802D9CE
_0802D9C8:
	adds r0, r6, #0
	bl sub_08035FE4
_0802D9CE:
	ldr r0, _0802D9F4
	ldrb r0, [r0]
	cmp r0, #9
	bne _0802D9E6
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _0802D9E6
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802D9E6:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D9F4: .4byte gGame
	.syntax divided
