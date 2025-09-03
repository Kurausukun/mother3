	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r0, _0800B22C
	ldr r1, _0800B230
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800B234
	movs r0, #0xdf
	bl play_sound
	bl sub_08037958
	bl sub_08039B5C
	bl sub_08037708
	b _0800B346
	.align 2, 0
_0800B22C: .4byte gSomeBlend
_0800B230: .4byte 0x0001ED10
_0800B234:
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0800B24A
	movs r0, #0
	bl sub_080379C0
	bl sub_08035414
	bl sub_080354CC
	b _0800B346
_0800B24A:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B264
	bl sub_08019FE4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B346
	bl sub_08037958
	bl sub_08004E64
	b _0800B346
_0800B264:
	ldr r0, _0800B284
	ldr r2, _0800B288
	adds r1, r0, r2
	ldrh r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _0800B27E
	ldr r7, _0800B28C
	adds r2, r5, r7
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0800B290
_0800B27E:
	movs r2, #0
	b _0800B2A8
	.align 2, 0
_0800B284: .4byte gGame
_0800B288: .4byte 0x000082A4
_0800B28C: .4byte 0x000082B7
_0800B290:
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0800B29E
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800B29E:
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800B2A8:
	adds r3, r5, #0
	ldr r1, _0800B2FC
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	orrs r1, r0
	ldr r7, _0800B300
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	beq _0800B2CC
	movs r2, #0
_0800B2CC:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B308
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0800B30E
	ldr r0, _0800B304
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0800B30E
	bl sub_08033E70
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B346
	b _0800B30E
	.align 2, 0
_0800B2FC: .4byte 0x000082B8
_0800B300: .4byte 0x000082B9
_0800B304: .4byte 0x0000829E
_0800B308:
	ldr r2, _0800B34C
	adds r0, r5, r2
	strh r1, [r0]
_0800B30E:
	ldrh r0, [r4, #2]
	bl sub_0802706C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_0800B7AC
	ldr r0, _0800B350
	ldr r7, _0800B354
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B346
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0800B346
	adds r0, r4, #0
	bl sub_08033CFC
_0800B346:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B34C: .4byte 0x0000829E
_0800B350: .4byte gGame
_0800B354: .4byte 0x00008494
	.syntax divided
