	.syntax unified
sub_08055594:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9e
	beq _080555E6
	cmp r2, #0x9e
	bgt _080555BA
	cmp r2, #0x21
	beq _080555DA
	cmp r2, #0x21
	bgt _080555B0
	cmp r2, #8
	beq _080555D6
	b _08055634
_080555B0:
	cmp r2, #0x67
	beq _080555DE
	cmp r2, #0x68
	beq _080555E2
	b _08055634
_080555BA:
	cmp r2, #0xaf
	beq _0805560C
	cmp r2, #0xaf
	bgt _080555CC
	cmp r2, #0xaa
	beq _080555EA
	cmp r2, #0xab
	beq _08055608
	b _08055634
_080555CC:
	cmp r2, #0xb0
	beq _08055610
	cmp r2, #0xb9
	beq _08055630
	b _08055634
_080555D6:
	movs r0, #0xc8
	b _0805568A
_080555DA:
	movs r0, #0xc9
	b _0805568A
_080555DE:
	movs r0, #0xca
	b _0805568A
_080555E2:
	movs r0, #0xcb
	b _0805568A
_080555E6:
	movs r0, #0xcc
	b _0805568A
_080555EA:
	ldr r0, _080555FC
	ldr r2, _08055600
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r2, _08055604
	adds r0, r0, r2
	strh r1, [r0]
	movs r0, #0xcd
	b _0805568A
	.align 2, 0
_080555FC: .4byte gSomeBlend
_08055600: .4byte 0x00002E0A
_08055604: .4byte 0x000044EC
_08055608:
	movs r0, #0xce
	b _0805568A
_0805560C:
	movs r0, #0xcf
	b _0805568A
_08055610:
	ldr r0, _08055624
	ldr r2, _08055628
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r2, _0805562C
	adds r0, r0, r2
	strh r1, [r0]
	movs r0, #0xd0
	b _0805568A
	.align 2, 0
_08055624: .4byte gSomeBlend
_08055628: .4byte 0x00002E0A
_0805562C: .4byte 0x000044EC
_08055630:
	movs r0, #0xd1
	b _0805568A
_08055634:
	ldr r0, _08055650
	movs r1, #0x6c
	muls r1, r2, r1
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #9
	bhi _08055688
	lsls r0, r0, #2
	ldr r1, _08055654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055650: .4byte gGoodsInfo
_08055654: .4byte _08055658
_08055658:
	.4byte _08055680
	.4byte _08055680
	.4byte _08055680
	.4byte _08055680
	.4byte _08055688
	.4byte _08055688
	.4byte _08055684
	.4byte _08055684
	.4byte _08055688
	.4byte _08055688
_08055680:
	movs r0, #0xba
	b _0805568A
_08055684:
	movs r0, #0xbb
	b _0805568A
_08055688:
	movs r0, #0xab
_0805568A:
	bl sub_080486A0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
