	.syntax unified
sub_08014E1C:
	push {r4, r5, lr}
	ldr r4, _08014E8C
	ldr r0, _08014E90
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r3, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r1, _08014E94
	ldr r0, _08014E98
	adds r2, r1, r0
	movs r0, #0xf0
	strh r0, [r2]
	ldr r0, _08014E9C
	adds r2, r1, r0
	movs r0, #8
	strh r0, [r2]
	ldr r2, _08014EA0
	adds r0, r1, r2
	strh r3, [r0]
	ldr r0, _08014EA4
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	bl sub_08016D08
	ldr r0, _08014EA8
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl memclear
	ldr r2, _08014EAC
	adds r4, r4, r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
	movs r0, #0
	bl sub_08005900
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014E8C: .4byte gSomeBlend
_08014E90: .4byte 0x0001ED10
_08014E94: .4byte gGame
_08014E98: .4byte 0x00005968
_08014E9C: .4byte 0x0000596A
_08014EA0: .4byte 0x0000596C
_08014EA4: .4byte 0x00005964
_08014EA8: .4byte gUnknown_030040F0
_08014EAC: .4byte 0x00013210
	.syntax divided
