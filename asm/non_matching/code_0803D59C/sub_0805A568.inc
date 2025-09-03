	.syntax unified
	push {r4, r5, r6, lr}
	ldr r5, _0805A61C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800289C
	ldr r1, _0805A620
	bl sub_08090F88
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800289C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08090F88
	adds r0, r5, #0
	movs r1, #3
	bl sub_0800289C
	ldr r1, _0805A624
	bl sub_08090F88
	adds r0, r5, #0
	movs r1, #4
	bl sub_0800289C
	ldr r4, _0805A628
	ldr r2, _0805A62C
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800289C
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_0800160C
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #0x20
	bl sub_0800160C
	ldr r0, _0805A630
	adds r6, r4, r0
	ldr r2, _0805A634
	adds r1, r4, r2
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
	ldrh r0, [r4, #8]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	movs r0, #8
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
_0805A61C: .4byte gUnknown_09C8DE98
_0805A620: .4byte 0x06008000
_0805A624: .4byte 0x06010000
_0805A628: .4byte gSomeBlend
_0805A62C: .4byte 0x00002CB0
_0805A630: .4byte 0x00002750
_0805A634: .4byte 0x00002CB4
	.syntax divided
