	.syntax unified
	push {r4, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r3, [r2]
	cmp r3, #1
	bne _0803A4E4
	bl sub_0803A59C
	b _0803A594
_0803A4E4:
	ldrh r1, [r2, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A4F8
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0803A644
	b _0803A594
_0803A4F8:
	movs r1, #0xc
	ands r1, r3
	cmp r1, #0
	beq _0803A50C
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A594
_0803A50C:
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _0803A57C
	ldrh r0, [r4, #4]
	cmp r0, #2
	bne _0803A536
	adds r0, r4, #0
	adds r0, #0xa
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #3
	bl sub_08039544
	b _0803A594
_0803A536:
	ldr r4, _0803A570
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A594
	ldr r0, _0803A574
	bl sub_0800A1C4
	ldr r1, _0803A578
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _0803A594
	.align 2, 0
_0803A570: .4byte gUnknown_0201963A
_0803A574: .4byte gUnknown_080C1FE8
_0803A578: .4byte 0x00002166
_0803A57C:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A594:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
