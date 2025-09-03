	.syntax unified
sub_0804F51C:
	push {r4, r5, r6, r7, lr}
	ldrh r1, [r0, #4]
	adds r0, r1, #0
	subs r0, #0x5a
	cmp r0, #0xe
	bls _0804F52A
	b _0804F638
_0804F52A:
	lsls r0, r0, #2
	ldr r1, _0804F534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804F534: .4byte _0804F538
_0804F538:
	.4byte _0804F574
	.4byte _0804F574
	.4byte _0804F574
	.4byte _0804F57A
	.4byte _0804F57A
	.4byte _0804F5A8
	.4byte _0804F5A8
	.4byte _0804F5D8
	.4byte _0804F5D8
	.4byte _0804F5D8
	.4byte _0804F62C
	.4byte _0804F62C
	.4byte _0804F62C
	.4byte _0804F632
	.4byte _0804F632
_0804F574:
	bl sub_08050458
	b _0804F6C2
_0804F57A:
	movs r0, #0xd2
	bl play_sound
	ldr r5, _0804F59C
	ldr r0, _0804F5A0
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804F594
	b _0804F6C2
_0804F594:
	ldr r0, _0804F5A4
	ands r0, r1
	b _0804F5F8
	.align 2, 0
_0804F59C: .4byte gSomeBlend
_0804F5A0: .4byte 0x00004ECE
_0804F5A4: .4byte 0xFFFFFE1F
_0804F5A8:
	movs r0, #0xd2
	bl play_sound
	ldr r5, _0804F5CC
	ldr r0, _0804F5D0
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x20
	bne _0804F5C2
	b _0804F6C2
_0804F5C2:
	ldr r0, _0804F5D4
	ands r0, r1
	movs r1, #0x20
	b _0804F5F6
	.align 2, 0
_0804F5CC: .4byte gSomeBlend
_0804F5D0: .4byte 0x00004ECE
_0804F5D4: .4byte 0xFFFFFE1F
_0804F5D8:
	movs r0, #0xd2
	bl play_sound
	ldr r5, _0804F618
	ldr r0, _0804F61C
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x40
	beq _0804F6C2
	ldr r0, _0804F620
	ands r0, r1
	movs r1, #0x40
_0804F5F6:
	orrs r0, r1
_0804F5F8:
	strh r0, [r4]
	bl sub_08055788
	ldr r1, _0804F624
	adds r2, r5, r1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r2, _0804F628
	adds r1, r5, r2
	strh r0, [r1]
	b _0804F6C2
	.align 2, 0
_0804F618: .4byte gSomeBlend
_0804F61C: .4byte 0x00004ECE
_0804F620: .4byte 0xFFFFFE1F
_0804F624: .4byte 0x0000C5B4
_0804F628: .4byte 0x0000C5BE
_0804F62C:
	bl sub_08050628
	b _0804F6C2
_0804F632:
	bl sub_080505D8
	b _0804F6C2
_0804F638:
	ldr r5, _0804F6A8
	lsls r0, r1, #1
	ldr r2, _0804F6AC
	adds r1, r5, r2
	adds r0, r0, r1
	ldrh r6, [r0]
	ldr r0, _0804F6B0
	adds r4, r5, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	ldr r1, _0804F6B4
	adds r7, r5, r1
	lsrs r0, r0, #0x1b
	ldrh r2, [r7]
	cmp r0, r2
	bhs _0804F6BC
	movs r0, #0xd2
	bl play_sound
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	ldr r2, _0804F6B8
	adds r1, r5, r2
	ldr r1, [r1]
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r6, [r0]
	ldrb r2, [r4]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r3, r5, #0
	lsls r1, r1, #0x1b
	ldrh r2, [r7]
	lsrs r0, r1, #0x1b
	cmp r0, r2
	blo _0804F692
	adds r0, r2, #0
_0804F692:
	ldr r1, _0804F6B0
	adds r3, r3, r1
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0804F6C2
	.align 2, 0
_0804F6A8: .4byte gSomeBlend
_0804F6AC: .4byte 0x00004DF8
_0804F6B0: .4byte 0x00004ECE
_0804F6B4: .4byte 0x00004ECA
_0804F6B8: .4byte 0x00004DF4
_0804F6BC:
	movs r0, #0xd6
	bl play_sound
_0804F6C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
