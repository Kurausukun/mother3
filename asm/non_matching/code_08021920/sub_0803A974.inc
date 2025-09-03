	.syntax unified
sub_0803A974:
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A988
	bl sub_0803AA98
	b _0803AA90
_0803A988:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A99C
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803AAAC
	b _0803AA90
_0803A99C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803AA10
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _0803A9D0
	cmp r0, #1
	bgt _0803A9BA
	cmp r0, #0
	beq _0803A9C0
	b _0803AA90
_0803A9BA:
	cmp r0, #2
	beq _0803A9E8
	b _0803AA90
_0803A9C0:
	ldr r0, _0803A9C8
	ldr r1, _0803A9CC
	b _0803A9D4
	.align 2, 0
_0803A9C8: .4byte gSomeBlend
_0803A9CC: .4byte 0x0000361C
_0803A9D0:
	ldr r0, _0803A9DC
	ldr r1, _0803A9E0
_0803A9D4:
	adds r0, r0, r1
	ldr r1, _0803A9E4
	str r1, [r0]
	b _0803AA90
	.align 2, 0
_0803A9DC: .4byte gSomeBlend
_0803A9E0: .4byte 0x00003620
_0803A9E4: .4byte 0x000F423F
_0803A9E8:
	ldr r2, _0803AA00
	ldr r0, _0803AA04
	adds r1, r2, r0
	ldr r0, _0803AA08
	str r0, [r1]
	ldr r1, _0803AA0C
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _0803AA90
	.align 2, 0
_0803AA00: .4byte gSomeBlend
_0803AA04: .4byte 0x00003624
_0803AA08: .4byte 0x0009E340
_0803AA0C: .4byte 0x00003668
_0803AA10:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803AA28
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803AA90
_0803AA28:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803AA78
	ldr r4, _0803AA6C
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803AA90
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803AA70
	bl sub_0800A1C4
	ldr r1, _0803AA74
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	b _0803AA90
	.align 2, 0
_0803AA6C: .4byte gUnknown_0201963A
_0803AA70: .4byte gUnknown_080C1FE8
_0803AA74: .4byte 0x00002166
_0803AA78:
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
_0803AA90:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
