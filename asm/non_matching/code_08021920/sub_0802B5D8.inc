	.syntax unified
sub_0802B5D8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0xfa
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B5F2
	b _0802B82A
_0802B5F2:
	ldr r2, _0802B738
	ldr r0, _0802B73C
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r6, #0
	ldr r1, _0802B740
	adds r0, r2, r1
	mov sl, r2
	ldrb r1, [r0]
	cmp r6, r1
	blo _0802B618
	b _0802B792
_0802B618:
	ldr r1, _0802B744
	mov sb, r1
	adds r7, r3, #0
	movs r3, #1
	mov r8, r3
_0802B622:
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802B632
	b _0802B782
_0802B632:
	bl isCharIdOverworldPlayable
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B63E
	b _0802B782
_0802B63E:
	adds r0, r4, #0
	movs r1, #0x60
	bl heldItemQty
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B67C
	adds r0, r4, #0
	movs r1, #0x60
	bl heldItemIndex
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, #1
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802B67C
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0x61
	strb r1, [r0]
	strh r5, [r2]
_0802B67C:
	adds r0, r4, #0
	movs r1, #0x61
	bl heldItemQty
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B6BA
	adds r0, r4, #0
	movs r1, #0x61
	bl heldItemIndex
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r5, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	ldr r0, _0802B748
	cmp r1, r0
	bls _0802B6BA
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0x62
	strb r1, [r0]
	strh r5, [r2]
_0802B6BA:
	adds r0, r4, #0
	movs r1, #0x66
	bl heldItemQty
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B6F8
	adds r0, r4, #0
	movs r1, #0x66
	bl heldItemIndex
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, #1
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802B6F8
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0xaa
	strb r1, [r0]
	strh r5, [r2]
_0802B6F8:
	adds r0, r4, #0
	movs r1, #0xaa
	bl heldItemQty
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B762
	adds r0, r4, #0
	movs r1, #0xaa
	bl heldItemIndex
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r5, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	ldr r0, _0802B74C
	cmp r1, r0
	bls _0802B750
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0xab
	strb r1, [r0]
	strh r5, [r2]
	b _0802B762
	.align 2, 0
_0802B738: .4byte gGame
_0802B73C: .4byte 0x000082B9
_0802B740: .4byte 0x00008299
_0802B744: .4byte 0x00000E0F
_0802B748: .4byte 0x464F0000
_0802B74C: .4byte 0x1C1F0000
_0802B750:
	ldrb r0, [r7]
	mov r1, r8
	lsls r2, r1, #1
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
_0802B762:
	adds r0, r4, #0
	movs r1, #0xab
	bl heldItemQty
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B782
	ldrb r0, [r7]
	mov r1, r8
	lsls r2, r1, #2
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
_0802B782:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802B7CC
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0802B792
	b _0802B622
_0802B792:
	ldr r0, _0802B7D0
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B82A
	ldr r0, _0802B7D4
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0xe8
	beq _0802B82A
	ldr r4, _0802B7D8
	movs r0, #8
	bl getCurrentTrack
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, r1, #0
	ldr r0, _0802B7DC
	add r0, sl
	ldrb r2, [r0]
	movs r0, #6
	ands r0, r2
	cmp r0, #6
	bne _0802B7E4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802B7E0
	b _0802B800
	.align 2, 0
_0802B7CC: .4byte gUnknown_0200DE99
_0802B7D0: .4byte 0x0000829B
_0802B7D4: .4byte 0x000067AC
_0802B7D8: .4byte 0x0000FFFF
_0802B7DC: .4byte 0x000082B9
_0802B7E0: .4byte 0x00000662
_0802B7E4:
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _0802B7F4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xcc
	lsls r1, r1, #3
	b _0802B800
_0802B7F4:
	lsls r0, r2, #0x1d
	cmp r0, #0
	bge _0802B806
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802B838
_0802B800:
	cmp r0, r1
	beq _0802B806
	adds r4, r1, #0
_0802B806:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802B82A
	ldr r0, _0802B83C
	ldr r1, _0802B840
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	bl sub_08002FD4
	cmp r0, #0
	bne _0802B82A
	lsrs r0, r4, #0x10
	bl play_sound
_0802B82A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B838: .4byte 0x00000661
_0802B83C: .4byte gGame
_0802B840: .4byte 0x00009D10
	.syntax divided
