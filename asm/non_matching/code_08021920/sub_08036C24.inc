	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08036C60
	ldr r1, _08036C64
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r4, #0x85
	ldrb r2, [r4]
	subs r2, #5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0, #0x12]
	lsls r1, r1, #4
	adds r1, #8
	lsls r1, r1, #4
	strh r1, [r5]
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036C60: .4byte gGame
_08036C64: .4byte 0x000067AC
	.syntax divided
