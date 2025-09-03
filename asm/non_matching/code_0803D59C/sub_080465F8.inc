	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0804660A
	b _080467B4
_0804660A:
	ldr r1, _08046638
	ldr r3, _0804663C
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	adds r5, r1, #0
	cmp r0, #0
	bge _08046640
	movs r0, #0xe
	ands r0, r2
	cmp r0, #2
	bne _080466A2
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #4
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #0xa]
	b _080466A2
	.align 2, 0
_08046638: .4byte gUnknown_0200F920
_0804663C: .4byte 0x00006478
_08046640:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08046690
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08046658
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r4, #0xa]
	b _080466A2
_08046658:
	movs r0, #0xe
	ands r0, r2
	cmp r0, #6
	bne _08046678
	ldr r1, _08046674
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	bhi _08046670
	b _080467B4
_08046670:
	b _080466A2
	.align 2, 0
_08046674: .4byte 0x00006474
_08046678:
	ldr r2, _0804668C
	adds r0, r5, r2
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #3
	bhi _08046688
	b _080467B4
_08046688:
	b _080466A2
	.align 2, 0
_0804668C: .4byte 0x00006474
_08046690:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0xef
	ble _080466A2
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0x9f
	ble _080466A2
	b _080467B4
_080466A2:
	ldrb r1, [r4, #0xa]
	movs r0, #0x40
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	bne _08046710
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _080466BC
	cmp r0, #4
	beq _080466F4
	b _08046710
_080466BC:
	ldr r2, _080466E8
	ldr r1, _080466EC
	adds r0, r5, r1
	ldr r1, [r0]
	lsrs r1, r1, #3
	movs r0, #7
	ands r1, r0
	adds r2, r1, r2
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, _080466F0
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	b _08046710
	.align 2, 0
_080466E8: .4byte gUnknown_080C696C
_080466EC: .4byte 0x00006474
_080466F0: .4byte gUnknown_080C6974
_080466F4:
	ldr r2, _08046724
	ldr r1, _08046728
	adds r0, r5, r1
	ldr r0, [r0]
	lsrs r0, r0, #3
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
_08046710:
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _080467B4
	lsls r0, r0, #2
	ldr r1, _0804672C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046724: .4byte gUnknown_080C696C
_08046728: .4byte 0x00006474
_0804672C: .4byte _08046730
_08046730:
	.4byte _08046744
	.4byte _08046750
	.4byte _08046750
	.4byte _0804678C
	.4byte _0804678C
_08046744:
	ldr r0, _0804674C
	movs r3, #4
	ldrsh r1, [r4, r3]
	b _08046772
	.align 2, 0
_0804674C: .4byte gUnknown_080C6260
_08046750:
	ldr r0, _08046760
	ldr r1, _08046764
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _0804676C
	ldr r0, _08046768
	b _0804676E
	.align 2, 0
_08046760: .4byte gSomeBlend
_08046764: .4byte 0x00004260
_08046768: .4byte gUnknown_080C66E8
_0804676C:
	ldr r0, _08046788
_0804676E:
	movs r2, #4
	ldrsh r1, [r4, r2]
_08046772:
	movs r3, #6
	ldrsh r2, [r4, r3]
	ldrb r3, [r4, #0xa]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1e
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	b _080467A4
	.align 2, 0
_08046788: .4byte gUnknown_080C6274
_0804678C:
	ldr r0, _080467BC
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	ldrb r3, [r4, #0xa]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1e
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_080467A4:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldrb r1, [r4, #0xa]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xa]
_080467B4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080467BC: .4byte gUnknown_080C6288
	.syntax divided
