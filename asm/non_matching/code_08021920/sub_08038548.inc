	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrh r6, [r7, #0xa]
	cmp r6, #0
	bne _080385B8
	movs r0, #0x1e
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x3a
	movs r2, #0x44
	adds r3, r5, #0
	bl draw_ui_text
	movs r0, #0x21
	bl sub_08039B24
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x46
	movs r2, #0x54
	adds r3, r5, #0
	bl draw_ui_text
	movs r0, #0x22
	bl sub_08039B24
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x82
	movs r2, #0x54
	adds r3, r5, #0
	bl draw_ui_text
	ldr r2, _080385B0
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	ldr r1, _080385B4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	b _080385F2
	.align 2, 0
_080385B0: .4byte gUnknown_0201953C
_080385B4: .4byte gUnknown_080C20D8
_080385B8:
	movs r0, #0x1f
	bl sub_08039B24
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #7
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0x10
	movs r2, #0x44
	adds r3, r6, #0
	bl draw_ui_text
	movs r0, #0x20
	bl sub_08039B24
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x10
	movs r2, #0x54
	adds r3, r6, #0
	bl draw_ui_text
	ldr r1, _080385FC
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #2]
_080385F2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080385FC: .4byte gUnknown_0201953C
	.syntax divided
