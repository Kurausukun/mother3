	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r2, r8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _080197C4
	mov sl, r7
	ldr r0, [sp]
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	ldr r7, _080197C8
	mov sb, r7
	ldr r0, [sp]
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r4, r5, #0
	adds r4, #0xd5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r7, r8
	ldrh r7, [r7]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	adds r0, r4, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r7, sb
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #4]
	adds r5, #0x2b
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	asrs r0, r0, #8
	mov r4, r8
	ldrh r4, [r4, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	ldr r1, [sp, #8]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #8]
	movs r7, #0
	str r7, [sp, #0xc]
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x10]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x14]
	movs r2, #0x96
	lsls r2, r2, #4
	mov sl, r2
_08019772:
	mov r0, sp
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	bne _080197D8
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	cmp r1, sl
	bne _080197BC
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	beq _0801987A
	cmp r1, sl
	beq _080197CC
_080197BC:
	lsrs r2, r2, #0x10
	mov sb, r2
	b _080197D8
	.align 2, 0
_080197C4: .4byte 0xFFFF0000
_080197C8: .4byte 0x0000FFFF
_080197CC:
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, sl
	beq _080197D8
	lsrs r1, r1, #0x10
	mov sb, r1
_080197D8:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	mov r7, sb
	lsls r4, r7, #0x10
	adds r3, r0, #0
	cmp r1, sl
	bne _080197FA
	asrs r0, r4, #0x10
	cmp r0, sl
	beq _080197F0
	lsrs r6, r4, #0x10
	b _080197FA
_080197F0:
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, sl
	beq _08019804
	lsrs r6, r1, #0x10
_080197FA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r3, r6, #0x10
	cmp r0, sl
	bne _08019816
_08019804:
	asrs r1, r4, #0x10
	cmp r1, sl
	beq _0801980E
	lsrs r5, r4, #0x10
	b _08019816
_0801980E:
	asrs r0, r3, #0x10
	cmp r0, r1
	beq _08019816
	lsrs r5, r3, #0x10
_08019816:
	adds r2, r6, #0
	asrs r3, r3, #0x10
	mov ip, r3
	asrs r4, r4, #0x10
	cmp ip, r4
	ble _08019824
	mov r2, sb
_08019824:
	adds r3, r5, #0
	lsls r0, r5, #0x10
	lsls r1, r2, #0x10
	asrs r7, r0, #0x10
	mov r8, r7
	cmp r0, r1
	ble _08019834
	adds r3, r2, #0
_08019834:
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	adds r2, r6, #0
	cmp ip, r4
	bge _08019840
	mov r2, sb
_08019840:
	adds r3, r5, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r8, r0
	bge _0801984C
	adds r3, r2, #0
_0801984C:
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08019858
	movs r1, #0
_08019858:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08019862
	movs r3, #0xf0
_08019862:
	ldr r0, _0801989C
	ldr r4, [sp, #0xc]
	lsls r2, r4, #1
	ldr r7, _080198A0
	adds r0, r0, r7
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_0801987A:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, #0x9f
	bhi _0801988A
	b _08019772
_0801988A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801989C: .4byte gSomeBlend
_080198A0: .4byte 0x00013210
	.syntax divided
