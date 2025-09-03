	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #4]
	cmp r0, #2
	beq _0803A652
	b _0803A74C
_0803A652:
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A662
	movs r4, #0xa
	b _0803A670
_0803A662:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A670
	movs r4, #0x64
_0803A670:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803A6E8
	movs r0, #0xd2
	bl play_sound
	ldrh r1, [r5, #0xa]
	cmp r1, #1
	beq _0803A6AC
	cmp r1, #1
	bgt _0803A68E
	cmp r1, #0
	beq _0803A698
	b _0803A74C
_0803A68E:
	cmp r1, #2
	beq _0803A6C0
	cmp r1, #3
	beq _0803A6D4
	b _0803A74C
_0803A698:
	ldr r1, _0803A6A4
	ldr r0, _0803A6A8
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6A4: .4byte gSomeBlend
_0803A6A8: .4byte 0x00003678
_0803A6AC:
	ldr r1, _0803A6B8
	ldr r0, _0803A6BC
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6B8: .4byte gSomeBlend
_0803A6BC: .4byte 0x0000367A
_0803A6C0:
	ldr r1, _0803A6CC
	ldr r0, _0803A6D0
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6CC: .4byte gSomeBlend
_0803A6D0: .4byte 0x0000367C
_0803A6D4:
	ldr r1, _0803A6E0
	ldr r0, _0803A6E4
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6E0: .4byte gSomeBlend
_0803A6E4: .4byte 0x0000367E
_0803A6E8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A74C
	movs r0, #0xd2
	bl play_sound
	ldrh r1, [r5, #0xa]
	cmp r1, #1
	beq _0803A720
	cmp r1, #1
	bgt _0803A706
	cmp r1, #0
	beq _0803A710
	b _0803A74C
_0803A706:
	cmp r1, #2
	beq _0803A730
	cmp r1, #3
	beq _0803A740
	b _0803A74C
_0803A710:
	ldr r1, _0803A718
	ldr r0, _0803A71C
	b _0803A744
	.align 2, 0
_0803A718: .4byte gSomeBlend
_0803A71C: .4byte 0x00003678
_0803A720:
	ldr r1, _0803A728
	ldr r0, _0803A72C
	b _0803A744
	.align 2, 0
_0803A728: .4byte gSomeBlend
_0803A72C: .4byte 0x0000367A
_0803A730:
	ldr r1, _0803A738
	ldr r0, _0803A73C
	b _0803A744
	.align 2, 0
_0803A738: .4byte gSomeBlend
_0803A73C: .4byte 0x0000367C
_0803A740:
	ldr r1, _0803A754
	ldr r0, _0803A758
_0803A744:
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r0, r4
_0803A74A:
	strh r0, [r1]
_0803A74C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A754: .4byte gSomeBlend
_0803A758: .4byte 0x0000367E
	.syntax divided
