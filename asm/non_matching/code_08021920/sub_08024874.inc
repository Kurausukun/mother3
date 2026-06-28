	.syntax unified
sub_08024874:
	push {r4, r5, lr}
	ldr r5, _080248B8
	adds r0, r5, #0
	bl sub_08024B40
	ldr r1, _080248BC
	adds r0, r5, r1
	bl sub_08024A74
	ldr r4, _080248C0
	ldr r0, _080248C4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080248C8
	adds r0, r4, r1
	bl sub_080248D4
	ldr r0, _080248CC
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080249E8
	ldr r1, _080248D0
	adds r5, r5, r1
	adds r0, r5, #0
	bl sub_0802519C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080248B8: .4byte gSoundUnkInfos
_080248BC: .4byte 0xFFFFE00C
_080248C0: .4byte gGame
_080248C4: .4byte 0x00008495
_080248C8: .4byte 0x00008384
_080248CC: .4byte 0x00008498
_080248D0: .4byte 0xFFFFFED0
	.syntax divided
