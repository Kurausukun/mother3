	.syntax unified
sub_0804D7E4:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0804D808
	ldr r1, _0804D80C
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D8C4
	ldrh r1, [r5]
	cmp r1, #1
	bne _0804D810
	adds r0, r4, #0
	bl sub_0804F1D8
	b _0804D8C4
	.align 2, 0
_0804D808: .4byte gSomeBlend
_0804D80C: .4byte 0x000044F2
_0804D810:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D840
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C330
	adds r0, r6, #0
	adds r0, #0x50
	ldr r2, _0804D83C
	adds r1, r6, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D8C4
	.align 2, 0
_0804D83C: .4byte 0x0000423C
_0804D840:
	ldr r0, _0804D880
	adds r7, r6, r0
	ldrh r2, [r7]
	lsls r3, r2, #0x10
	cmp r3, #0
	beq _0804D888
	adds r0, r4, #4
	lsrs r3, r3, #0x11
	movs r1, #1
	ands r1, r2
	adds r3, r3, r1
	ldrh r1, [r7]
	str r1, [sp]
	ldrh r1, [r4, #6]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #2
	bl sub_08053AC8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D888
	bl sub_08046D90
	ldr r1, _0804D884
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0804D8C4
	.align 2, 0
_0804D880: .4byte 0x0000426C
_0804D884: .4byte 0x0000C5AD
_0804D888:
	ldr r4, _0804D8CC
	adds r0, r4, #4
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804D8C4
	ldrh r0, [r4, #4]
	bl sub_08053E98
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0804D8D0
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq _0804D8C4
	strb r1, [r2]
	bl sub_0804C35C
	bl sub_08046D90
_0804D8C4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D8CC: .4byte gUnknown_02018FC8
_0804D8D0: .4byte 0x000012C4
	.syntax divided
