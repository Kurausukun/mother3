	.syntax unified
	push {r4, lr}
	ldr r4, _0804A650
	ldr r0, _0804A654
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r1, _0804A658
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #7
	beq _0804A66E
	cmp r0, #7
	bgt _0804A65C
	cmp r0, #6
	beq _0804A666
	b _0804A6EE
	.align 2, 0
_0804A650: .4byte gUnknown_02016078
_0804A654: .4byte 0x000041DC
_0804A658: .4byte 0x00004178
_0804A65C:
	cmp r0, #8
	beq _0804A68C
	cmp r0, #0xa
	beq _0804A6C8
	b _0804A6EE
_0804A666:
	movs r0, #0xa
	bl sub_0804A6F4
	b _0804A6EE
_0804A66E:
	ldr r0, _0804A684
	ldr r1, _0804A688
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0804A6C0
	movs r0, #0xd
	bl sub_0804A6F4
	b _0804A6EE
	.align 2, 0
_0804A684: .4byte gUnknown_0200F920
_0804A688: .4byte 0x00006478
_0804A68C:
	movs r1, #0x83
	lsls r1, r1, #7
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_08054FE0
	ldr r1, _0804A6BC
	adds r4, r4, r1
	ldrb r1, [r4]
	bl sub_08054670
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804A6C0
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804A6C0
	movs r0, #0xb
	bl sub_0804A6F4
	b _0804A6EE
	.align 2, 0
_0804A6BC: .4byte 0x00004185
_0804A6C0:
	movs r0, #0xc
	bl sub_0804A6F4
	b _0804A6EE
_0804A6C8:
	ldr r0, _0804A6E0
	ldr r1, _0804A6E4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0804A6E8
	movs r0, #0xf
	bl sub_0804A6F4
	b _0804A6EE
	.align 2, 0
_0804A6E0: .4byte gUnknown_0200F920
_0804A6E4: .4byte 0x00006478
_0804A6E8:
	movs r0, #0xe
	bl sub_0804A6F4
_0804A6EE:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
