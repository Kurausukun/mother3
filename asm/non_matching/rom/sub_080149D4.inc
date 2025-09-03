	.syntax unified
sub_080149D4:
	push {r4, r5, lr}
	ldr r4, _08014A28
	ldr r0, _08014A2C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x21
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r0, _08014A30
	ldr r2, _08014A34
	adds r0, r0, r2
	strh r1, [r0]
	bl sub_08016D08
	ldr r0, _08014A38
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r5, #0
	bl memclear
	ldr r0, _08014A3C
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
_08014A28: .4byte gSomeBlend
_08014A2C: .4byte 0x0001ED10
_08014A30: .4byte gGame
_08014A34: .4byte 0x00005968
_08014A38: .4byte gUnknown_030040F0
_08014A3C: .4byte 0x00013210
	.syntax divided
