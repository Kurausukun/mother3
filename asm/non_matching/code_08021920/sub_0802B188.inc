	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r0, #0xfa
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B19A
	b _0802B368
_0802B19A:
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802B27C
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r6, _0802B1F4
	ldr r0, _0802B1F8
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B204
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B27C
	ldr r2, _0802B1FC
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	ldr r2, _0802B200
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08025E20
	b _0802B34C
	.align 2, 0
_0802B1F4: .4byte gSave
_0802B1F8: .4byte 0x0000071C
_0802B1FC: .4byte 0x0000071B
_0802B200: .4byte 0x0000071E
_0802B204:
	ldr r0, _0802B268
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B27C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B27C
	ldr r2, _0802B26C
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r7, _0802B270
	ldr r5, _0802B274
	movs r0, #0xe2
	lsls r0, r0, #3
	adds r3, r6, r0
_0802B23A:
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B23A
	adds r0, r7, #0
	bl sub_0805C3B8
	movs r2, #0
	ldr r3, _0802B278
	movs r1, #0
_0802B258:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B258
	b _0802B346
	.align 2, 0
_0802B268: .4byte 0x0000071E
_0802B26C: .4byte 0x0000071B
_0802B270: .4byte gUnknown_020041E8
_0802B274: .4byte gUnknown_0200E06F
_0802B278: .4byte gUnknown_02004F70
_0802B27C:
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802B368
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r6, _0802B2D8
	ldr r2, _0802B2DC
	adds r1, r6, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B2E4
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B368
	ldr r0, _0802B2E0
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08025E20
	b _0802B34C
	.align 2, 0
_0802B2D8: .4byte gSave
_0802B2DC: .4byte 0x00000736
_0802B2E0: .4byte 0x00000735
_0802B2E4:
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B368
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B368
	ldr r2, _0802B354
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r7, _0802B358
	ldr r5, _0802B35C
	ldr r0, _0802B360
	adds r3, r6, r0
_0802B31A:
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B31A
	adds r0, r7, #0
	bl sub_0805C3B8
	movs r2, #0
	ldr r3, _0802B364
	movs r1, #0
_0802B338:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B338
_0802B346:
	adds r0, r4, #0
	bl sub_08025BF8
_0802B34C:
	bl sub_08029E18
	movs r0, #1
	b _0802B36A
	.align 2, 0
_0802B354: .4byte 0x00000735
_0802B358: .4byte gUnknown_020042C0
_0802B35C: .4byte gUnknown_0200E06F
_0802B360: .4byte 0x0000072A
_0802B364: .4byte gUnknown_02004F8A
_0802B368:
	movs r0, #0
_0802B36A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
