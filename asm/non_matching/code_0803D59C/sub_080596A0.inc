	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080596B0
	b _080597FC
_080596B0:
	ldrh r2, [r5]
	adds r0, r2, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080596F8
	cmp r1, r0
	bls _08059724
	adds r0, #0xb4
	cmp r1, r0
	bhi _080596C8
	b _080597E4
_080596C8:
	ldr r1, _080596FC
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xef
	bhi _08059700
	movs r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xf0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #0xf0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08059704
	.align 2, 0
_080596F8: .4byte 0x0000324F
_080596FC: .4byte 0xFFFFCCFD
_08059700:
	movs r6, #0
	movs r3, #0x10
_08059704:
	ldr r1, _0805971C
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _08059720
	strh r0, [r1]
	lsls r0, r3, #8
	orrs r6, r0
	ldrh r0, [r1, #2]
	strh r6, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	b _080597E4
	.align 2, 0
_0805971C: .4byte gSomeBlend
_08059720: .4byte 0x00003841
_08059724:
	ldr r0, _0805974C
	ldr r0, [r0, #8]
	movs r1, #4
	bl sub_08002FD4
	cmp r0, #0
	bne _080597E4
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	movs r0, #6
	ldrsh r1, [r5, r0]
	cmp r1, #0
	beq _08059750
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08059778
	b _08059798
	.align 2, 0
_0805974C: .4byte gUnknown_02015DC0
_08059750:
	ldrh r3, [r5, #4]
	adds r3, #1
	strh r3, [r5, #4]
	ldr r2, _0805976C
	ldr r1, _08059770
	adds r4, r2, r1
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08059774
	adds r2, r2, r0
	strb r3, [r2]
	b _08059798
	.align 2, 0
_0805976C: .4byte gSomeBlend
_08059770: .4byte 0x0000328C
_08059774: .4byte 0x00003292
_08059778:
	ldrh r3, [r5, #4]
	adds r3, #1
	strh r3, [r5, #4]
	ldr r2, _080597D0
	ldr r1, _080597D4
	adds r4, r2, r1
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080597D8
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #6]
_08059798:
	ldrh r0, [r5, #4]
	cmp r0, #0xe
	bne _080597E4
	ldrb r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #8]
	ldr r4, _080597D0
	ldr r1, _080597D4
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080597DC
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #5
	bl memclear
	ldr r0, _080597E0
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	b _080597FC
	.align 2, 0
_080597D0: .4byte gSomeBlend
_080597D4: .4byte 0x0000328C
_080597D8: .4byte 0x00003292
_080597DC: .4byte 0x00003294
_080597E0: .4byte 0x00002C90
_080597E4:
	ldr r4, _08059804
	ldr r0, _08059808
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #0xe
	movs r3, #0x40
	bl sub_0800160C
	subs r4, #0x50
	ldrh r0, [r5, #6]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
_080597FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059804: .4byte gUnknown_02016078
_08059808: .4byte 0x00004244
	.syntax divided
