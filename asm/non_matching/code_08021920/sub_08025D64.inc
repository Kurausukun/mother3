	.syntax unified
	push {r4, lr}
	ldr r2, _08025DF4
	ldr r0, _08025DF8
	adds r1, r2, r0
	ldr r0, _08025DFC
	strh r0, [r1]
	ldr r3, _08025E00
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025E04
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025E08
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, _08025E0C
	adds r1, r2, r0
	movs r0, #0x14
	strh r0, [r1]
	ldr r1, _08025E10
	adds r3, r2, r1
	ldrb r1, [r3]
	subs r0, #0x1d
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025E14
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025E18
	adds r0, r2, r1
	str r4, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025E1C
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025DF4: .4byte gGame
_08025DF8: .4byte 0x00008450
_08025DFC: .4byte 0x0000FFFF
_08025E00: .4byte 0x00008452
_08025E04: .4byte 0x00008454
_08025E08: .4byte 0x000067AC
_08025E0C: .4byte 0x0000845C
_08025E10: .4byte 0x00008494
_08025E14: .4byte 0x0000845E
_08025E18: .4byte 0x00008484
_08025E1C: .4byte 0x00008496
	.syntax divided
