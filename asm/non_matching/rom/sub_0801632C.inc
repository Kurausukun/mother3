	.syntax unified
sub_0801632C:
	push {r4, r5, r6, lr}
	ldr r5, _08016364
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r0, _08016368
	ldr r1, _0801636C
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08016370
	adds r3, r1, r0
	ldr r0, _08016374
	adds r6, r1, r0
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0801635E
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _08016378
_0801635E:
	movs r0, #1
	b _080163D4
	.align 2, 0
_08016364: .4byte gSomeBlend
_08016368: .4byte gGame
_0801636C: .4byte 0x00005962
_08016370: .4byte gUnknown_080C21B1
_08016374: .4byte gUnknown_080C21FD
_08016378:
	ldr r2, _080163DC
	adds r4, r5, #0
	adds r4, #0x50
	ldrb r1, [r3]
	movs r3, #0xf
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #2
	adds r4, r0, r4
	lsrs r1, r1, #4
	lsls r1, r1, #7
	adds r4, r4, r1
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r4, r5, #0
	adds r4, #0x50
	ldrb r1, [r6]
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #2
	adds r4, r0, r4
	lsrs r1, r1, #4
	lsls r1, r1, #7
	adds r4, r4, r1
	strh r2, [r4]
	strh r2, [r4, #2]
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r2, _080163E0
	adds r1, r5, r2
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
_080163D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080163DC: .4byte 0x0000C001
_080163E0: .4byte 0x00002C90
	.syntax divided
