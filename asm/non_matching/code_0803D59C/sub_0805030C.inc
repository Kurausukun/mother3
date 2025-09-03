	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08050334
	ldr r0, _08050338
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805033C
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _08050340
	movs r0, #0xdd
	bl play_sound
	b _080503D4
	.align 2, 0
_08050334: .4byte gSomeBlend
_08050338: .4byte 0x000041DA
_0805033C: .4byte 0x000041CA
_08050340:
	ldr r2, _080503B4
	adds r4, r7, r2
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	adds r6, r0, #0
	movs r0, #0xe7
	bl play_sound
	ldr r1, _080503B8
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, _080503BC
	adds r4, r7, r0
	ldrb r3, [r4]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08054200
	ldr r1, _080503C0
	adds r0, r7, r1
	ldrb r1, [r0]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_08054B74
	adds r0, r5, #0
	bl sub_08052FC8
	ldr r2, _080503C4
	adds r0, r7, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080503CC
	bl sub_0804C228
	adds r0, r7, #0
	adds r0, #0x50
	ldr r2, _080503C8
	adds r1, r7, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	bl nullsub_22
	b _080503D4
	.align 2, 0
_080503B4: .4byte 0x00002F60
_080503B8: .4byte 0x000041D6
_080503BC: .4byte 0x000041D7
_080503C0: .4byte 0x000041D5
_080503C4: .4byte 0x0000426C
_080503C8: .4byte 0x00004254
_080503CC:
	bl sub_08046D90
	bl nullsub_22
_080503D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
