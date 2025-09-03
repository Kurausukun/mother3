	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r0, [r2]
	ldrh r6, [r0]
	adds r1, r0, #2
	ldr r0, _080495F0
	cmp r6, r0
	bgt _080495F4
	subs r0, #1
	cmp r6, r0
	bge _080496DA
	subs r0, #2
	cmp r6, r0
	beq _08049608
	b _080496DA
	.align 2, 0
_080495F0: .4byte 0x0000FF04
_080495F4:
	ldr r0, _08049604
	cmp r6, r0
	beq _08049640
	adds r0, #0xdc
	cmp r6, r0
	beq _08049692
	b _080496DA
	.align 2, 0
_08049604: .4byte 0x0000FF05
_08049608:
	ldrh r0, [r4, #8]
	strh r0, [r5]
	ldr r0, _08049624
	ldr r1, _08049628
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0804962C
	ldrh r0, [r5, #2]
	adds r0, #0xc
	strh r0, [r5, #2]
	b _080496DA
	.align 2, 0
_08049624: .4byte gSomeBlend
_08049628: .4byte 0x000044F3
_0804962C:
	ldr r2, _0804963C
	adds r1, r7, r2
	ldrh r0, [r5, #2]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #2]
	b _080496DA
	.align 2, 0
_0804963C: .4byte 0x000076D1
_08049640:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0804863C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0804966C
	cmp r0, #2
	bgt _0804965A
	cmp r0, #1
	beq _08049660
	b _08049688
_0804965A:
	cmp r0, #3
	beq _08049678
	b _08049688
_08049660:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08049682
_0804966C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08049682
_08049678:
	ldrb r0, [r4, #0x10]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #7
_08049682:
	orrs r1, r0
	strb r1, [r4, #0x10]
	b _080496DA
_08049688:
	ldrb r0, [r4, #0x10]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _080496DA
_08049692:
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0x87
	bne _080496B8
	adds r0, r1, #0
	movs r1, #0
	bl sub_0804863C
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	subs r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080487A0
	b _080496D4
_080496B8:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0804863C
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	subs r2, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080487A0
_080496D4:
	ldrh r0, [r5]
	adds r0, #0x12
	strh r0, [r5]
_080496DA:
	adds r0, r6, #0
	bl sub_0804865C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
