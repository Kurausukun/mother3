	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _0805023C
	ldr r0, _08050240
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08050244
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _08050248
	movs r0, #0xdd
	bl play_sound
	b _08050304
	.align 2, 0
_0805023C: .4byte gSomeBlend
_08050240: .4byte 0x000041DA
_08050244: .4byte 0x000041CA
_08050248:
	ldr r2, _0805028C
	adds r4, r6, r2
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	ldr r0, _08050290
	adds r4, r6, r0
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080502A4
	ldr r1, _08050294
	adds r6, r6, r1
	ldrb r1, [r6]
	adds r0, r5, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08050298
	movs r0, #0xd2
	bl play_sound
	movs r0, #0
	movs r1, #0xe
	bl sub_08053EEC
	b _08050304
	.align 2, 0
_0805028C: .4byte 0x00002F60
_08050290: .4byte 0x000041D5
_08050294: .4byte 0x000041D7
_08050298:
	ldrb r1, [r4]
	ldrb r2, [r6]
	adds r0, r5, #0
	bl sub_08054B74
	b _080502B2
_080502A4:
	ldrb r1, [r4]
	ldr r2, _080502EC
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_08054B74
_080502B2:
	movs r0, #0xe7
	bl play_sound
	adds r0, r5, #0
	bl sub_08052FC8
	ldr r4, _080502F0
	ldr r1, _080502F4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080502FC
	bl sub_0804C228
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _080502F8
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	bl nullsub_22
	b _08050304
	.align 2, 0
_080502EC: .4byte 0x000041D7
_080502F0: .4byte gSomeBlend
_080502F4: .4byte 0x0000426C
_080502F8: .4byte 0x00004254
_080502FC:
	bl sub_08046D90
	bl nullsub_22
_08050304:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
