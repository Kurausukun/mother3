	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0xb1
	lsls r1, r1, #6
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800728C
	ldr r0, _08007274
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08007280
	ldr r0, _08007278
	ldr r1, _0800727C
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001A94
	b _0800728C
	.align 2, 0
_08007274: .4byte gGame
_08007278: .4byte gUnknown_020281F8
_0800727C: .4byte 0x0600F000
_08007280:
	ldr r1, _080072FC
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl sub_08001A14
_0800728C:
	ldr r2, _08007300
	adds r7, r5, r2
	ldrh r0, [r7]
	cmp r0, #0
	beq _080072A2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, _08007304
	bl sub_08001A14
_080072A2:
	ldr r0, _08007308
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _080072BC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _0800730C
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001A14
_080072BC:
	ldr r2, _08007310
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _080072D6
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _08007314
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001A14
_080072D6:
	ldrh r0, [r4]
	movs r0, #0
	strh r0, [r4]
	ldrh r0, [r4]
	ldrh r1, [r6]
	strh r0, [r6]
	ldrh r0, [r6]
	ldrh r1, [r7]
	strh r0, [r7]
	ldrh r1, [r7]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080072FC: .4byte 0x06006000
_08007300: .4byte 0x00002C42
_08007304: .4byte 0x06006800
_08007308: .4byte 0x00002C44
_0800730C: .4byte 0x06007000
_08007310: .4byte 0x00002C46
_08007314: .4byte 0x06007800
	.syntax divided
