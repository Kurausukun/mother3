	.syntax unified
sub_080144E8:
	push {r4, r5, lr}
	ldr r4, _08014560
	ldr r0, _08014564
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _08014568
	ldr r0, _0801456C
	adds r2, r1, r0
	movs r0, #0x90
	strh r0, [r2]
	ldr r0, _08014570
	adds r2, r1, r0
	movs r0, #0x60
	strh r0, [r2]
	ldr r0, _08014574
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	ldr r1, _08014578
	adds r0, r4, r1
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl memclear
	bl sub_08016CBC
	bl sub_08016D54
	ldr r0, _0801457C
	adds r1, r5, #0
	bl memclear
	ldr r0, _08014580
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014560: .4byte gSomeBlend
_08014564: .4byte 0x0001ED10
_08014568: .4byte gGame
_0801456C: .4byte 0x0000596E
_08014570: .4byte 0x00005970
_08014574: .4byte 0x00005964
_08014578: .4byte 0x000146D0
_0801457C: .4byte gUnknown_030040F0
_08014580: .4byte 0x00013210
	.syntax divided
