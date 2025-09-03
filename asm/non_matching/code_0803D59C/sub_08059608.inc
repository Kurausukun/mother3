	.syntax unified
sub_08059608:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x65
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08059684
	bl sub_08059898
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x17
	bne _08059630
	movs r0, #0
	bl sub_08059828
	b _08059684
_08059630:
	ldr r1, _0805968C
	ldrh r2, [r1, #8]
	movs r3, #0xc8
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	ldr r2, _08059690
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	bne _08059652
	movs r0, #0x17
_08059652:
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x65
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	str r0, [r5, #0x60]
	ldr r0, _08059694
	adds r3, r6, r0
	ldrb r1, [r3]
	movs r0, #2
	orrs r1, r0
	ldrb r2, [r4]
	ldr r4, _08059698
	adds r0, r6, r4
	strb r2, [r0]
	movs r0, #4
	orrs r1, r0
	strb r1, [r3]
	ldr r1, _0805969C
	adds r0, r6, r1
	strb r2, [r0]
_08059684:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805968C: .4byte gSomeBlend
_08059690: .4byte gUnknown_080C7D80
_08059694: .4byte 0x0000328C
_08059698: .4byte 0x00003290
_0805969C: .4byte 0x00003291
	.syntax divided
