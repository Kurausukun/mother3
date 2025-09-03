	.syntax unified
	push {r4, r5, lr}
	ldr r2, _080259A8
	ldr r0, _080259AC
	adds r1, r2, r0
	ldr r0, _080259B0
	strh r0, [r1]
	ldr r3, _080259B4
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _080259B8
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080259BC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _080259C0
	adds r1, r2, r0
	movs r0, #6
	strh r0, [r1]
	ldr r1, _080259C4
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _080259C8
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080259CC
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _080259D0
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080259A8: .4byte gGame
_080259AC: .4byte 0x00008450
_080259B0: .4byte 0x0000FFFF
_080259B4: .4byte 0x00008452
_080259B8: .4byte 0x00008454
_080259BC: .4byte 0x000067AC
_080259C0: .4byte 0x0000845C
_080259C4: .4byte 0x00008494
_080259C8: .4byte 0x0000845E
_080259CC: .4byte 0x00008484
_080259D0: .4byte 0x00008496
	.syntax divided
