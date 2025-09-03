	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sp
	strh r2, [r0]
	mov r7, sp
	adds r7, #2
	strh r3, [r7]
	bl sub_08012790
	adds r5, r0, #0
	cmp r5, #0
	beq _0801268A
	lsls r1, r4, #4
	ldr r0, _08012690
	adds r6, r1, r0
	ldr r4, [r6]
	ldrb r1, [r6, #0xc]
	movs r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801268A
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801268A
	ldrb r1, [r4, #8]
	cmp r8, r1
	blo _08012694
_0801268A:
	movs r0, #0
	b _08012778
	.align 2, 0
_08012690: .4byte gUnknown_0200B7D0
_08012694:
	ldrb r1, [r5, #0x14]
	mov r2, ip
	orrs r1, r2
	strb r1, [r5, #0x14]
	ldrh r0, [r7]
	ands r0, r2
	lsls r0, r0, #1
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	mov r0, sb
	lsls r1, r0, #3
	movs r0, #7
	ands r2, r0
	orrs r2, r1
	strb r2, [r5, #0x14]
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	ldrb r3, [r5, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #0x15]
	mov r0, sp
	ldrh r0, [r0]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x14]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r0, [r6, #8]
	ldrb r1, [r4, #9]
	bl sub_08013778
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012710
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r5, #0x14]
	ldr r2, _0801270C
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #0x14]
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012728
	.align 2, 0
_0801270C: .4byte 0xFFFE0FFF
_08012710:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08012788
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #0x14]
	ldrh r1, [r4]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012728:
	lsls r1, r1, #1
	ldrb r2, [r5, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x16]
	str r4, [r5]
	mov r2, r8
	lsls r1, r2, #2
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x14
	ldr r3, _0801278C
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r3, #0x5c
	adds r1, r1, r3
	ldr r4, [r1]
	ldr r3, [r5, #4]
	ldrb r1, [r3, #1]
	lsls r1, r1, #1
	ldrb r3, [r3, #2]
	lsls r2, r2, #1
	muls r2, r3, r2
	adds r1, r1, r2
	adds r4, r4, r1
	str r4, [r5, #0xc]
_08012778:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012788: .4byte 0xFFFE0FFF
_0801278C: .4byte gGame
	.syntax divided
