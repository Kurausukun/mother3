	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	ldrh r7, [r2]
	cmp r7, #1
	beq _0804E5D2
	b _0804E7B2
_0804E5D2:
	ldr r5, _0804E608
	ldr r0, _0804E60C
	adds r4, r5, r0
	ldrb r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4]
	ldr r1, _0804E610
	adds r6, r5, r1
	ldrh r0, [r6]
	cmp r0, #0
	beq _0804E5EE
	b _0804E75C
_0804E5EE:
	movs r0, #0xdc
	bl play_sound
	ldr r2, _0804E614
	adds r6, r5, r2
	ldrh r0, [r6]
	cmp r0, #0x1d
	beq _0804E674
	cmp r0, #0x1d
	bgt _0804E618
	cmp r0, #0x1c
	beq _0804E622
	b _0804E756
	.align 2, 0
_0804E608: .4byte gSomeBlend
_0804E60C: .4byte 0x000041DA
_0804E610: .4byte 0x000041CA
_0804E614: .4byte 0x000041CC
_0804E618:
	cmp r0, #0x1e
	beq _0804E688
	cmp r0, #0x1f
	beq _0804E6C4
	b _0804E756
_0804E622:
	ldr r0, _0804E660
	adds r4, r5, r0
	ldrh r0, [r4]
	bl sub_0805173C
	ldr r1, _0804E664
	adds r2, r5, r1
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0804E668
	ldrh r1, [r4]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x29
	ldrb r1, [r0]
	ldr r2, _0804E66C
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	ldr r2, _0804E670
	adds r1, r5, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	b _0804E756
	.align 2, 0
_0804E660: .4byte 0x00003004
_0804E664: .4byte 0x0000C5B4
_0804E668: .4byte gUnknown_020050C0
_0804E66C: .4byte 0x0000C5C0
_0804E670: .4byte 0x0000423C
_0804E674:
	bl sub_0805179C
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #5
	bl sub_080506CC
	b _0804E756
_0804E688:
	movs r2, #0
	ldr r1, _0804E6BC
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804E696
	movs r2, #1
_0804E696:
	ldr r1, _0804E6C0
	movs r0, #0x64
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804E6C4
	movs r0, #0xd2
	bl play_sound
	movs r0, #0x1f
	strh r0, [r6]
	movs r0, #0
	movs r1, #5
	bl sub_08053EEC
	b _0804E756
	.align 2, 0
_0804E6BC: .4byte 0x00003004
_0804E6C0: .4byte gUnknown_020050C0
_0804E6C4:
	ldr r4, _0804E728
	ldr r2, _0804E72C
	adds r6, r4, r2
	movs r0, #0x17
	strh r0, [r6]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
	movs r0, #1
	bl sub_0803DF94
	ldr r1, _0804E730
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r5, #0
	cmp r0, #0
	bne _0804E6EA
	movs r5, #1
_0804E6EA:
	adds r1, r5, #0
	bl sub_08051678
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804E744
	movs r0, #0xe4
	bl play_sound
	ldr r0, _0804E734
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804E738
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804E73C
	adds r2, r4, r0
	movs r0, #0x64
	muls r0, r5, r0
	ldr r1, _0804E740
	adds r0, r0, r1
	str r0, [r2]
	b _0804E756
	.align 2, 0
_0804E728: .4byte gSomeBlend
_0804E72C: .4byte 0x000041CC
_0804E730: .4byte 0x00003004
_0804E734: .4byte 0x000041DA
_0804E738: .4byte 0x0000C5B5
_0804E73C: .4byte 0x0000C5B8
_0804E740: .4byte gUnknown_020050C8
_0804E744:
	movs r0, #0xe5
	bl play_sound
	movs r0, #0x1b
	strh r0, [r6]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
_0804E756:
	bl sub_08046D90
	b _0804E7C6
_0804E75C:
	movs r0, #0xdd
	bl play_sound
	ldr r1, _0804E778
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x1d
	beq _0804E7A2
	cmp r0, #0x1d
	bgt _0804E77C
	cmp r0, #0x1c
	beq _0804E792
	b _0804E7C6
	.align 2, 0
_0804E778: .4byte 0x000041CC
_0804E77C:
	cmp r0, #0x1f
	bgt _0804E7C6
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r5, r2
	movs r1, #0
	bl sub_08053EEC
	movs r0, #2
	strh r0, [r6]
	b _0804E7C6
_0804E792:
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r5, r1
	movs r1, #0
	bl sub_08053EEC
	strh r7, [r6]
	b _0804E7C6
_0804E7A2:
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #5
	bl sub_080506CC
	b _0804E7C6
_0804E7B2:
	ldr r0, _0804E7D0
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r2, #2
	movs r3, #1
	bl sub_08053804
_0804E7C6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E7D0: .4byte gUnknown_0201A1F2
	.syntax divided
