	.syntax unified
sub_080051E0:
	push {r4, r5, r6, lr}
	ldr r4, _080051FC
	ldr r1, _08005200
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08005204
	bl sub_080052D0
	b _080052B4
	.align 2, 0
_080051FC: .4byte gSomeBlend
_08005200: .4byte 0x0000566C
_08005204:
	ldr r2, _08005270
	adds r5, r4, r2
	ldrb r1, [r5]
	lsls r1, r1, #0x1f
	adds r2, #0x84
	adds r0, r4, r2
	ldrb r2, [r0]
	lsls r2, r2, #0x1f
	orrs r2, r1
	ldr r1, _08005274
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x1f
	orrs r1, r2
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	orrs r0, r1
	cmp r0, #0
	beq _0800523A
	ldrh r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r4, #8]
	orrs r1, r0
	strh r1, [r4, #8]
_0800523A:
	bl draw_background
	bl draw_sprites
	bl sub_080383AC
	bl sub_0803AD50
	bl draw_message
	bl update_oam
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800527C
	ldr r1, _08005278
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800527C
	ldrh r0, [r4, #0x1a]
	movs r0, #0x60
	strh r0, [r4, #0x1a]
	b _080052B4
	.align 2, 0
_08005270: .4byte 0x00011D16
_08005274: .4byte 0x000035BA
_08005278: .4byte 0x0001ED10
_0800527C:
	ldr r2, _080052BC
	ldr r1, _080052C0
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080052B4
	ldr r1, _080052C4
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080052B4
	ldr r1, _080052C8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080052B4
	ldr r1, _080052CC
	adds r0, r2, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r0, #0x10
	ldrh r1, [r2, #0x1a]
	strh r0, [r2, #0x1a]
_080052B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080052BC: .4byte gSomeBlend
_080052C0: .4byte 0x000035BA
_080052C4: .4byte 0x00011D9A
_080052C8: .4byte 0x00003530
_080052CC: .4byte 0x00011D1E
	.syntax divided
