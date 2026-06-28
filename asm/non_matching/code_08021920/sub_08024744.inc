	.syntax unified
sub_08024744:
	push {r4, r5, r6, r7, lr}
	ldr r6, _080247D8
	adds r0, r6, #0
	bl sub_08024B40
	ldr r1, _080247DC
	adds r0, r6, r1
	bl sub_08024A74
	ldr r5, _080247E0
	ldr r0, _080247E4
	adds r7, r5, r0
	ldrb r1, [r7]
	movs r0, #0x80
	adds r4, r1, #0
	orrs r4, r0
	strb r4, [r7]
	ldr r1, _080247E8
	adds r1, r1, r5
	mov ip, r1
	ldrb r1, [r1]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08024804
	movs r3, #0
	movs r0, #1
	strb r0, [r5]
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r6, ip
	strb r0, [r6]
	ands r4, r2
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	subs r0, #4
	ands r4, r0
	subs r0, #0x38
	ands r4, r0
	strb r4, [r7]
	ldr r0, _080247EC
	adds r2, r5, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldr r1, _080247F0
	adds r0, r5, r1
	strh r3, [r0]
	ldr r6, _080247F4
	adds r1, r5, r6
	ldr r0, _080247F8
	strh r0, [r1]
	ldr r0, _080247FC
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r6, #0x26
	adds r1, r5, r6
	strh r0, [r1]
	ldrh r1, [r5, #2]
	ldr r0, _08024800
	ands r0, r1
	strh r0, [r5, #2]
	movs r0, #1
	bl sub_0801B5E8
	b _0802484E
	.align 2, 0
_080247D8: .4byte gSoundUnkInfos
_080247DC: .4byte 0xFFFFE00C
_080247E0: .4byte gGame
_080247E4: .4byte 0x00008495
_080247E8: .4byte 0x00008494
_080247EC: .4byte 0x00008496
_080247F0: .4byte 0x0000848C
_080247F4: .4byte 0x00008456
_080247F8: .4byte 0x0000FFFF
_080247FC: .4byte 0x0000847A
_08024800: .4byte 0xFFFFF87F
_08024804:
	ldr r1, _0802485C
	adds r0, r5, r1
	bl sub_080248D4
	ldr r1, _08024860
	adds r0, r5, r1
	bl sub_080249E8
	ldrh r0, [r5, #2]
	ldr r4, _08024864
	adds r2, r4, #0
	ands r2, r0
	strh r2, [r5, #2]
	ldr r0, _08024868
	adds r7, r6, r0
	ldrb r3, [r7]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08024848
	ldr r1, _0802486C
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #7
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strh r0, [r5, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r7]
_08024848:
	movs r0, #1
	bl sub_0801B5E8
_0802484E:
	ldr r0, _08024870
	bl sub_0802519C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802485C: .4byte 0x00008384
_08024860: .4byte 0x00008498
_08024864: .4byte 0xFFFFF87F
_08024868: .4byte 0xFFFFDFEC
_0802486C: .4byte 0xFFFFDF9A
_08024870: .4byte gUnknown_0201B574
	.syntax divided
