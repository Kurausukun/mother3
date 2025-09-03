	.syntax unified
sub_08010624:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _080106C0
	movs r7, #0
	movs r6, #0
	ldr r0, _080106C4
	adds r0, r0, r5
	mov sb, r0
	movs r1, #1
	mov r8, r1
_0801063C:
	adds r0, r6, #0
	bl sub_0801B4C4
	adds r4, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080106A8
	ldrh r0, [r4, #4]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080106A8
	ldrb r0, [r5, #0xa]
	mov r3, r8
	orrs r0, r3
	strb r0, [r5, #0xa]
	str r4, [r5]
	ldrh r0, [r4, #0xc]
	bl get_giftbox_flag
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #1
	ldrb r0, [r5, #0xa]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r3, #6
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r5, #0xa]
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r4, #6]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #4]
	ldrb r0, [r4, #7]
	lsls r0, r0, #4
	adds r0, #0x10
	strh r0, [r5, #6]
	adds r5, #0xc
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bhi _080106B4
_080106A8:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080106C8
	cmp r6, r0
	bls _0801063C
_080106B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080106C0: .4byte gUnknown_0200B590
_080106C4: .4byte 0x00000E1C
_080106C8: .4byte 0x000003FF
	.syntax divided
