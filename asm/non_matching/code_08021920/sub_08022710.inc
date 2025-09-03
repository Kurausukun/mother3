	.syntax unified
sub_08022710:
	push {r4, lr}
	ldr r4, _0802272C
	ldr r1, _08022730
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r2, #9
	ands r2, r0
	cmp r2, #1
	beq _08022738
	ldr r2, _08022734
	adds r1, r4, r2
	movs r0, #0
	b _080227AA
	.align 2, 0
_0802272C: .4byte gSomeBlend
_08022730: .4byte 0x00004B18
_08022734: .4byte 0x00004AF8
_08022738:
	ldr r0, _08022750
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #0
	beq _08022758
	subs r0, #1
	movs r1, #0
	strh r0, [r3]
	ldr r2, _08022754
	adds r0, r4, r2
	str r1, [r0]
	b _080227AC
	.align 2, 0
_08022750: .4byte 0x00004AF0
_08022754: .4byte 0x00004AF8
_08022758:
	ldr r0, _08022790
	ldrb r1, [r0, #8]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x80
	bne _08022770
	ldr r1, _08022794
	adds r0, r4, r1
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	bne _080227A0
_08022770:
	ldr r2, _08022798
	adds r0, r4, r2
	bl sub_080227BC
	ldr r0, _0802279C
	adds r1, r4, r0
	ldrb r2, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080227A0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _080227AC
	.align 2, 0
_08022790: .4byte gGame
_08022794: .4byte 0x00004AF8
_08022798: .4byte 0x00003688
_0802279C: .4byte 0x00004B19
_080227A0:
	ldr r1, _080227B4
	ldr r2, _080227B8
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, #1
_080227AA:
	str r0, [r1]
_080227AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080227B4: .4byte gSomeBlend
_080227B8: .4byte 0x00004AF8
	.syntax divided
