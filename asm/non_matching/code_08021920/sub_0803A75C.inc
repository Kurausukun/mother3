	.syntax unified
sub_0803A75C:
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A770
	bl sub_0803A830
	b _0803A828
_0803A770:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A784
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A844
	b _0803A828
_0803A784:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803A7A8
	movs r0, #0
	bl sub_080038A4
	ldr r0, _0803A7A0
	ldr r1, _0803A7A4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl play_sound
	b _0803A828
	.align 2, 0
_0803A7A0: .4byte gSomeBlend
_0803A7A4: .4byte 0x00003618
_0803A7A8:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803A7C0
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A828
_0803A7C0:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A810
	ldr r4, _0803A804
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A828
	ldr r0, _0803A808
	bl sub_0800A1C4
	ldr r1, _0803A80C
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
	b _0803A828
	.align 2, 0
_0803A804: .4byte gUnknown_0201963A
_0803A808: .4byte gUnknown_080C1FE8
_0803A80C: .4byte 0x00002166
_0803A810:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A828:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
