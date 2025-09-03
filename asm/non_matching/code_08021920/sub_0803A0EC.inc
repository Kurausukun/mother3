	.syntax unified
sub_0803A0EC:
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A100
	bl sub_0803A198
	b _0803A190
_0803A100:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A114
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A224
	b _0803A190
_0803A114:
	movs r1, #0xc
	ands r1, r2
	cmp r1, #0
	beq _0803A128
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A190
_0803A128:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A178
	ldr r4, _0803A16C
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A190
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803A170
	bl sub_0800A1C4
	ldr r1, _0803A174
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	b _0803A190
	.align 2, 0
_0803A16C: .4byte gUnknown_0201963A
_0803A170: .4byte gUnknown_080C1FE8
_0803A174: .4byte 0x00002166
_0803A178:
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
_0803A190:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
