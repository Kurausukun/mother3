	.syntax unified
	push {r4, r5, r6, lr}
	ldr r1, _0804C6A8
	ldr r2, _0804C6AC
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0xe
	bls _0804C69E
	b _0804C7A4
_0804C69E:
	lsls r0, r0, #2
	ldr r1, _0804C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C6A8: .4byte gSomeBlend
_0804C6AC: .4byte 0x00004A30
_0804C6B0: .4byte _0804C6B4
_0804C6B4:
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C6F6
	.4byte _0804C7A4
	.4byte _0804C7A4
	.4byte _0804C6F0
	.4byte _0804C730
	.4byte _0804C730
	.4byte _0804C730
	.4byte _0804C760
	.4byte _0804C760
_0804C6F0:
	bl sub_08055AB4
	b _0804C79C
_0804C6F6:
	ldr r0, _0804C720
	adds r4, r5, r0
	ldrb r0, [r4]
	bl sub_080558CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804C770
	ldrb r0, [r4]
	bl sub_0805597C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804C728
	movs r0, #0xd6
	bl play_sound
	ldr r0, _0804C724
	adds r1, r5, r0
	b _0804C77A
	.align 2, 0
_0804C720: .4byte 0x00004A30
_0804C724: .4byte 0x000041CC
_0804C728:
	movs r0, #0xf6
	bl play_sound
	b _0804C7A4
_0804C730:
	ldr r1, _0804C758
	adds r4, r5, r1
	ldrb r0, [r4]
	bl sub_080558CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804C770
	ldrb r0, [r4]
	bl sub_0805597C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804C790
	movs r0, #0xd6
	bl play_sound
	ldr r0, _0804C75C
	adds r1, r5, r0
	b _0804C77A
	.align 2, 0
_0804C758: .4byte 0x00004A30
_0804C75C: .4byte 0x000041CC
_0804C760:
	ldr r1, _0804C788
	adds r4, r5, r1
	ldrb r0, [r4]
	bl sub_080558CC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804C790
_0804C770:
	movs r0, #0xd6
	bl play_sound
	ldr r2, _0804C78C
	adds r1, r5, r2
_0804C77A:
	movs r0, #0x33
	strh r0, [r1]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
	b _0804C8AC
	.align 2, 0
_0804C788: .4byte 0x00004A30
_0804C78C: .4byte 0x000041CC
_0804C790:
	movs r0, #0xf6
	bl play_sound
	ldrb r0, [r4]
	bl sub_08055B50
_0804C79C:
	movs r0, #0
	bl sub_080506CC
	b _0804C8AC
_0804C7A4:
	ldr r4, _0804C7D0
	ldr r0, _0804C7D4
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	strb r0, [r5]
	bl sub_0804C944
	ldr r1, _0804C7D8
	adds r4, r4, r1
	strh r6, [r4]
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #0xd
	bls _0804C7C6
	b _0804C8AC
_0804C7C6:
	lsls r0, r0, #2
	ldr r1, _0804C7DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C7D0: .4byte gSomeBlend
_0804C7D4: .4byte 0x00004A30
_0804C7D8: .4byte 0x00003024
_0804C7DC: .4byte _0804C7E0
_0804C7E0:
	.4byte _0804C856
	.4byte _0804C818
	.4byte _0804C856
	.4byte _0804C828
	.4byte _0804C856
	.4byte _0804C838
	.4byte _0804C850
	.4byte _0804C870
	.4byte _0804C884
	.4byte _0804C8AC
	.4byte _0804C8AC
	.4byte _0804C8AC
	.4byte _0804C8A0
	.4byte _0804C8A0
_0804C818:
	ldr r0, _0804C820
	ldr r1, _0804C824
	adds r0, r0, r1
	b _0804C85C
	.align 2, 0
_0804C820: .4byte gSomeBlend
_0804C824: .4byte 0x00004501
_0804C828:
	ldr r0, _0804C830
	ldr r1, _0804C834
	adds r0, r0, r1
	b _0804C85C
	.align 2, 0
_0804C830: .4byte gSomeBlend
_0804C834: .4byte 0x00004501
_0804C838:
	movs r0, #7
	bl sub_0804B6E8
	ldr r0, _0804C848
	ldr r1, _0804C84C
	adds r0, r0, r1
	b _0804C85C
	.align 2, 0
_0804C848: .4byte gSomeBlend
_0804C84C: .4byte 0x00004501
_0804C850:
	movs r0, #8
	bl sub_0804B6E8
_0804C856:
	ldr r0, _0804C868
	ldr r2, _0804C86C
	adds r0, r0, r2
_0804C85C:
	ldrb r2, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0804C8AC
	.align 2, 0
_0804C868: .4byte gSomeBlend
_0804C86C: .4byte 0x00004501
_0804C870:
	ldr r0, _0804C87C
	ldr r1, _0804C880
	adds r0, r0, r1
	movs r1, #5
	strh r1, [r0]
	b _0804C8AC
	.align 2, 0
_0804C87C: .4byte gSomeBlend
_0804C880: .4byte 0x00004ECC
_0804C884:
	movs r0, #0xa
	bl sub_0804B6E8
	ldr r0, _0804C898
	ldr r2, _0804C89C
	adds r0, r0, r2
	movs r1, #0x78
	strh r1, [r0]
	b _0804C8AC
	.align 2, 0
_0804C898: .4byte gSomeBlend
_0804C89C: .4byte 0x00004ECC
_0804C8A0:
	ldr r0, _0804C8B4
	ldr r1, _0804C8B8
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0804C5B0
_0804C8AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C8B4: .4byte gSomeBlend
_0804C8B8: .4byte 0x00004A30
	.syntax divided
