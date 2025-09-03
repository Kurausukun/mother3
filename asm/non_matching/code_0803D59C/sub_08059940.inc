	.syntax unified
sub_08059940:
	push {r4, r5, lr}
	ldr r4, _08059998
	ldr r1, _0805999C
	adds r3, r4, r1
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3]
	ldrh r1, [r4, #0x22]
	movs r2, #0
	movs r1, #0x3f
	strh r1, [r4, #0x22]
	ldrh r1, [r4, #0x24]
	movs r1, #0x21
	strh r1, [r4, #0x24]
	ldrh r1, [r4, #0x2a]
	movs r1, #0xa0
	strh r1, [r4, #0x2a]
	strh r2, [r0, #2]
	movs r1, #0x78
	strh r1, [r0]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r1, [r0, #4]
	movs r1, #0x50
	strh r1, [r0, #6]
	ldr r0, _080599A0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl memclear
	ldr r0, _080599A4
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	movs r0, #0
	bl sub_08058718
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059998: .4byte gSomeBlend
_0805999C: .4byte 0x00004814
_080599A0: .4byte gUnknown_030040F0
_080599A4: .4byte 0x000046D4
	.syntax divided
