	.syntax unified
	ldr r1, _08037C74
	ldr r2, _08037C78
	adds r1, r1, r2
	movs r3, #0
	movs r2, #2
	strb r2, [r1]
	strh r3, [r0, #4]
	ldr r1, _08037C7C
	ldr r2, _08037C80
	adds r1, r1, r2
	ldrb r1, [r1]
	strh r1, [r0, #2]
	movs r1, #1
	strh r1, [r0, #0xa]
	strh r3, [r0, #8]
	bx lr
	.align 2, 0
_08037C74: .4byte gSomeBlend
_08037C78: .4byte 0x00003530
_08037C7C: .4byte gGame
_08037C80: .4byte 0x00008299
	.syntax divided
