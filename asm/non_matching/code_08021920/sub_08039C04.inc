	.syntax unified
	push {r4, r5, r6, lr}
	bl sub_080377D0
	ldr r4, _08039CA8
	ldr r2, _08039CAC
	ldrb r1, [r2]
	ldr r3, _08039CB0
	adds r0, r4, r3
	movs r6, #0
	strb r1, [r0]
	movs r0, #0xf
	strb r0, [r2]
	ldr r0, _08039CB4
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _08039CB8
	adds r5, r4, r1
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	orrs r0, r3
	subs r1, #0x18
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r5]
	ldr r3, _08039CBC
	adds r0, r4, r3
	strh r6, [r0]
	ldr r1, _08039CC0
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	ldr r2, _08039CC4
	adds r1, r4, r2
	strh r0, [r1]
	adds r3, #8
	adds r2, r4, r3
	ldr r1, _08039CC8
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, _08039CCC
	adds r2, r4, r0
	ldr r0, [r1, #0xc]
	str r0, [r2]
	adds r3, #8
	adds r2, r4, r3
	ldr r0, _08039CD0
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08039CD4
	bl sub_0800A1C4
	ldr r1, _08039CD8
	adds r4, r4, r1
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	bl sub_08037958
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039CA8: .4byte gSomeBlend
_08039CAC: .4byte gGame
_08039CB0: .4byte 0x00003610
_08039CB4: .4byte 0x000121BB
_08039CB8: .4byte 0x00003668
_08039CBC: .4byte 0x00003612
_08039CC0: .4byte 0x000067AC
_08039CC4: .4byte 0x00003616
_08039CC8: .4byte gSave
_08039CCC: .4byte 0x00003620
_08039CD0: .4byte 0x00000744
_08039CD4: .4byte gUnknown_080C1FE8
_08039CD8: .4byte 0x00005778
	.syntax divided
