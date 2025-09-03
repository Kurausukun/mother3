	.syntax unified
	ldr r2, _08020AEC
	ldr r0, _08020AF0
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08020AF4
	ldr r2, _08020AF8
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0
	strb r2, [r0]
	ldr r3, _08020AFC
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08020B00
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	movs r0, #0
	bx lr
	.align 2, 0
_08020AEC: .4byte gGame
_08020AF0: .4byte 0x000067C4
_08020AF4: .4byte gSomeBlend
_08020AF8: .4byte 0x00002C9C
_08020AFC: .4byte 0x00002C9D
_08020B00: .4byte 0x00002C9E
	.syntax divided
