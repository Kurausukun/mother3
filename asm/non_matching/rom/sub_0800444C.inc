	.syntax unified
sub_0800444C:
	push {r4, lr}
	ldr r4, _080044A0
	ldr r0, _080044A4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4]
	ldr r1, _080044A8
	adds r2, r4, r1
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080044AC
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl setup_overworld_music
	ldr r0, _080044B0
	adds r4, r4, r0
	ldr r1, _080044B4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSmartSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080044A0: .4byte gGame
_080044A4: .4byte 0x00009D14
_080044A8: .4byte 0x000067C4
_080044AC: .4byte 0x000067AC
_080044B0: .4byte 0x00009488
_080044B4: .4byte gUnknown_03005314
	.syntax divided
