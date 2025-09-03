	.syntax unified
	push {r4, r5, r6, lr}
	ldr r0, _0805AFB4
	ldr r1, _0805AFB8
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08001A14
	ldr r0, _0805AFBC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #3
	bl sub_08001A14
	ldr r4, _0805AFC0
	ldr r1, _0805AFC4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r4, #0
	movs r2, #0
	bl sub_0800160C
	movs r0, #0x9c
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, _0805AFC8
	adds r1, r4, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08001A14
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001A38
	subs r4, #0x50
	ldrh r0, [r4, #8]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	movs r0, #0x88
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	strh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	strh r1, [r4, #0xe]
	ldrh r0, [r4, #0x10]
	strh r1, [r4, #0x10]
	ldrh r0, [r4]
	strh r1, [r4]
	ldrh r0, [r4, #2]
	strh r1, [r4, #2]
	ldrh r0, [r4, #4]
	strh r1, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AFB4: .4byte gGBPlayerLogoGfx
_0805AFB8: .4byte 0x06008000
_0805AFBC: .4byte gGBPlayerLogoLayout
_0805AFC0: .4byte gUnknown_02016078
_0805AFC4: .4byte gGBPlayerLogoPalette
_0805AFC8: .4byte 0x00002C60
	.syntax divided
