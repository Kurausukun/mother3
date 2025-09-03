	.syntax unified
sub_080150F8:
	push {lr}
	ldr r0, _08015158
	ldr r1, _0801515C
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3]
	ldrh r1, [r0, #0x22]
	movs r1, #0x3f
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0x24]
	movs r1, #0x21
	strh r1, [r0, #0x24]
	ldrh r1, [r0, #0x2a]
	movs r1, #0xa0
	strh r1, [r0, #0x2a]
	ldr r2, _08015160
	ldr r1, _08015164
	adds r3, r2, r1
	movs r1, #0x90
	strh r1, [r3]
	ldr r1, _08015168
	adds r3, r2, r1
	movs r1, #0x60
	strh r1, [r3]
	ldr r1, _0801516C
	adds r2, r2, r1
	movs r1, #0x78
	strh r1, [r2]
	movs r1, #0x50
	strh r1, [r2, #2]
	ldr r1, _08015170
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	bl memclear
	bl sub_08016D08
	bl sub_08016D54
	movs r0, #0
	bl sub_08005900
	pop {r0}
	bx r0
	.align 2, 0
_08015158: .4byte gSomeBlend
_0801515C: .4byte 0x0001ED10
_08015160: .4byte gGame
_08015164: .4byte 0x0000596E
_08015168: .4byte 0x00005970
_0801516C: .4byte 0x00005964
_08015170: .4byte 0x000146D0
	.syntax divided
