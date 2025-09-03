	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	ldr r2, _080249DC
	add r2, ip
	ldrb r1, [r2]
	lsrs r0, r1, #7
	cmp r0, #0
	bne _080248F0
	ldr r0, _080249E0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080248F8
_080248F0:
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080248F8:
	movs r5, #0x88
	lsls r5, r5, #1
	add r5, ip
	ldrb r1, [r5]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r3, #3
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #5
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	strb r0, [r5]
	ldr r5, _080249DC
	add r5, ip
	ldrb r1, [r5]
	adds r0, r3, #0
	ands r0, r1
	ands r0, r2
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	movs r5, #0x89
	lsls r5, r5, #1
	add r5, ip
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	ands r0, r3
	mov r1, r8
	ands r0, r1
	ands r0, r2
	ands r0, r6
	strb r0, [r5]
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	str r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, ip
	movs r5, #0
	strh r1, [r0]
	mov r0, ip
	adds r0, #0xe2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, ip
	adds r2, #0xd2
	ldr r0, _080249E4
	strh r0, [r2]
	adds r2, #0x24
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	strh r0, [r2]
	mov r3, ip
	adds r3, #0x2c
	ldrb r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r3]
	mov r0, ip
	str r1, [r0, #0x20]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	mov r1, ip
	adds r1, #0x38
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	mov r0, ip
	adds r0, #0x34
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r4, #0
	adds r1, #0xb3
	movs r2, #0
_080249C2:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _080249C2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080249DC: .4byte 0x00000111
_080249E0: .4byte gUnknown_02005080
_080249E4: .4byte 0x0000FFFF
	.syntax divided
