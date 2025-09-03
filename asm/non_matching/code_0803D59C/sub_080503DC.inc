	.syntax unified
sub_080503DC:
	push {r4, r5, r6, lr}
	ldr r6, _08050400
	ldr r0, _08050404
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08050408
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _0805040C
	movs r0, #0xdd
	bl play_sound
	b _08050448
	.align 2, 0
_08050400: .4byte gSomeBlend
_08050404: .4byte 0x000041DA
_08050408: .4byte 0x000041CA
_0805040C:
	movs r2, #0xbd
	lsls r2, r2, #6
	adds r4, r6, r2
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	movs r0, #0xe7
	bl play_sound
	ldr r1, _08050450
	adds r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _08050454
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_08054B74
	adds r0, r5, #0
	bl sub_08052FC8
	adds r0, r5, #0
	bl sub_08052F9C
	bl sub_08046D90
_08050448:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050450: .4byte 0x000041D5
_08050454: .4byte 0x000041D7
	.syntax divided
