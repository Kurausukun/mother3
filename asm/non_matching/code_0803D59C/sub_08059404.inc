	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _080594B0
	mov sl, r0
	ldr r1, _080594B4
	mov sb, r1
	ldr r0, _080594B8
	add r0, sb
	mov r8, r0
	movs r1, #0x54
	mov ip, r1
	ldr r6, _080594BC
	movs r7, #2
	rsbs r7, r7, #0
	movs r5, #3
	rsbs r5, r5, #0
_08059430:
	mov r1, ip
	muls r1, r3, r1
	add r1, r8
	adds r1, r1, r6
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	ands r0, r5
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08059430
	lsls r0, r4, #2
	add r0, sl
	ldr r3, [r0]
	mov r5, sb
	movs r7, #0
	movs r1, #4
	ldrsh r0, [r3, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080594F2
	movs r0, #0
	mov sb, r0
	subs r0, #5
	mov sl, r0
	movs r6, #4
	mov r8, r1
	adds r2, r5, #0
	adds r2, #0x3c
_08059472:
	ldrb r1, [r2, #0x11]
	movs r0, #1
	orrs r1, r0
	strb r7, [r2]
	movs r0, #2
	orrs r1, r0
	strb r1, [r2, #0x11]
	ldrh r0, [r3, #4]
	strh r0, [r2, #2]
	ldrb r0, [r3, #6]
	subs r0, #1
	strb r0, [r2, #6]
	ldr r0, _080594C0
	strh r0, [r2, #8]
	mov r1, sb
	str r1, [r5, #4]
	ldrh r0, [r3, #8]
	strh r0, [r2, #0xc]
	ldrh r0, [r3, #0xa]
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x11]
	mov r1, sl
	ands r1, r0
	strb r1, [r2, #0x11]
	cmp r4, #0xe
	beq _080594CA
	cmp r4, #0xe
	bgt _080594C4
	cmp r4, #4
	beq _080594CA
	b _080594D6
	.align 2, 0
_080594B0: .4byte gUnknown_09C5FCCC
_080594B4: .4byte gUnknown_02018D74
_080594B8: .4byte 0xFFFFD2B4
_080594BC: .4byte 0x00002D99
_080594C0: .4byte 0x0000FFFF
_080594C4:
	cmp r4, #0xf
	beq _080594D0
	b _080594D6
_080594CA:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080594D6
_080594D0:
	adds r0, r1, #0
	orrs r0, r6
	strb r0, [r2, #0x11]
_080594D6:
	ldrh r0, [r3]
	strh r0, [r5]
	ldrh r0, [r3, #2]
	strh r0, [r5, #2]
	adds r3, #0xc
	adds r2, #0x54
	adds r5, #0x54
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, r8
	bne _08059472
_080594F2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
