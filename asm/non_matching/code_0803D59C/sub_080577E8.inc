	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0x1d
	bls _080578A0
	ldr r5, _08057838
	ldr r0, _0805783C
	adds r7, r5, r0
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08057844
	ldr r2, _08057840
	adds r1, r5, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080578A0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08057FB0
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080578A0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r0, #1
	bl sub_08057A14
	b _080578A0
	.align 2, 0
_08057838: .4byte gSomeBlend
_0805783C: .4byte 0x00002CFA
_08057840: .4byte 0x00002CF4
_08057844:
	movs r0, #0xc4
	lsls r0, r0, #6
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080578A8
	adds r6, r5, r1
	ldrb r2, [r6]
	movs r0, #0
	movs r1, #0xc
	movs r3, #0x18
	bl sub_08002E60
	ldr r2, _080578AC
	adds r4, r5, r2
	strh r0, [r4]
	ldrb r2, [r6]
	movs r0, #0xa0
	movs r1, #0x88
	movs r3, #0x18
	bl sub_08002E60
	ldr r2, _080578B0
	adds r1, r5, r2
	strh r0, [r1]
	ldrh r0, [r4]
	ldrh r1, [r1]
	movs r2, #0xc2
	lsls r2, r2, #5
	bl sub_080584AC
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bls _080578A0
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	strb r0, [r6]
_080578A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080578A8: .4byte 0x00002CF4
_080578AC: .4byte 0x00002CF6
_080578B0: .4byte 0x00002CF8
	.syntax divided
