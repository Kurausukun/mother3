	.syntax unified
sub_0800EE50:
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _0800EE80
	ldr r1, _0800EE84
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EE7A
	ldr r3, _0800EE88
	adds r1, r5, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800EE8C
_0800EE7A:
	movs r0, #0
	b _0800EEBC
	.align 2, 0
_0800EE80: .4byte gGame
_0800EE84: .4byte 0x00008494
_0800EE88: .4byte 0x0000844E
_0800EE8C:
	ldr r0, _0800EEC4
	adds r4, r5, r0
	ldrh r0, [r4]
	lsls r0, r0, #2
	ldr r3, _0800EEC8
	adds r1, r5, r3
	adds r0, r0, r1
	str r2, [r0]
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	ldrh r1, [r4]
	lsls r1, r1, #1
	ldr r3, _0800EECC
	adds r2, r5, r3
	adds r1, r1, r2
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #1
_0800EEBC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800EEC4: .4byte 0x0000844C
_0800EEC8: .4byte 0x000083D4
_0800EECC: .4byte 0x00008424
	.syntax divided
