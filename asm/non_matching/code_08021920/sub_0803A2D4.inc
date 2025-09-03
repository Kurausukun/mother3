	.syntax unified
sub_0803A2D4:
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A2E8
	bl sub_0803A3C8
	b _0803A3C0
_0803A2E8:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A2FC
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A458
	b _0803A3C0
_0803A2FC:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803A340
	movs r0, #0xd9
	bl play_sound
	ldr r2, _0803A32C
	ldr r0, _0803A330
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0803A334
	ldr r1, _0803A338
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0803A33C
	adds r2, r2, r1
	strh r0, [r2]
	bl sub_08039CDC
	b _0803A3C0
	.align 2, 0
_0803A32C: .4byte gSomeBlend
_0803A330: .4byte 0x00003668
_0803A334: .4byte gGame
_0803A338: .4byte 0x000067AC
_0803A33C: .4byte 0x00003614
_0803A340:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803A358
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A3C0
_0803A358:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A3A8
	ldr r4, _0803A39C
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A3C0
	ldr r0, _0803A3A0
	bl sub_0800A1C4
	ldr r1, _0803A3A4
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
	b _0803A3C0
	.align 2, 0
_0803A39C: .4byte gUnknown_0201963A
_0803A3A0: .4byte gUnknown_080C1FE8
_0803A3A4: .4byte 0x00002166
_0803A3A8:
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
_0803A3C0:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
