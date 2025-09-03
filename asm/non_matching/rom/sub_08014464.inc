	.syntax unified
sub_08014464:
	push {r4, r5, lr}
	ldr r4, _080144CC
	ldr r0, _080144D0
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #1
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _080144D4
	ldr r3, _080144D8
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _080144DC
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016CBC
	ldr r0, _080144E0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl memclear
	ldr r3, _080144E4
	adds r4, r4, r3
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080144CC: .4byte gSomeBlend
_080144D0: .4byte 0x0001ED10
_080144D4: .4byte gGame
_080144D8: .4byte 0x0000596E
_080144DC: .4byte 0x00005964
_080144E0: .4byte gUnknown_030040F0
_080144E4: .4byte 0x00013210
	.syntax divided
