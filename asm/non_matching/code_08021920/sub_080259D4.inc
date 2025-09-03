	.syntax unified
sub_080259D4:
	push {r4, lr}
	ldr r2, _08025A54
	ldr r0, _08025A58
	adds r1, r2, r0
	ldr r0, _08025A5C
	strh r0, [r1]
	ldr r3, _08025A60
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025A64
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025A68
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, _08025A6C
	adds r1, r2, r0
	movs r0, #0xd
	strh r0, [r1]
	ldr r1, _08025A70
	adds r3, r2, r1
	ldrb r1, [r3]
	subs r0, #0x16
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025A74
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025A78
	adds r0, r2, r1
	str r4, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025A7C
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025A54: .4byte gGame
_08025A58: .4byte 0x00008450
_08025A5C: .4byte 0x0000FFFF
_08025A60: .4byte 0x00008452
_08025A64: .4byte 0x00008454
_08025A68: .4byte 0x000067AC
_08025A6C: .4byte 0x0000845C
_08025A70: .4byte 0x00008494
_08025A74: .4byte 0x0000845E
_08025A78: .4byte 0x00008484
_08025A7C: .4byte 0x00008496
	.syntax divided
