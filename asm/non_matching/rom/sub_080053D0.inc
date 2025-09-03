	.syntax unified
	push {lr}
	bl snd_vsync
	bl sub_080058D8
	ldr r1, _080053FC
	ldrb r2, [r1, #2]
	lsls r0, r2, #0x1c
	cmp r0, #0
	bge _0800540E
	ldr r0, _08005400
	ldr r3, _08005404
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08005408
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #2]
	b _08005420
	.align 2, 0
_080053FC: .4byte gGame
_08005400: .4byte gSomeBlend
_08005404: .4byte 0x000121BB
_08005408:
	bl sub_08005848
	b _08005420
_0800540E:
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08005420
	ldrb r0, [r1]
	cmp r0, #2
	beq _08005420
	bl sub_08005890
_08005420:
	ldr r1, _08005448
	ldr r0, _0800544C
	ldrh r0, [r0, #0x1a]
	strh r0, [r1]
	ldr r0, _08005450
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005434
	bl snd_main
_08005434:
	ldr r2, _08005454
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005458
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08005448: .4byte 0x04000012
_0800544C: .4byte gSomeBlend
_08005450: .4byte gUnknown_03004B00
_08005454: .4byte 0x04000208
_08005458: .4byte gUnknown_03007FF8
	.syntax divided
