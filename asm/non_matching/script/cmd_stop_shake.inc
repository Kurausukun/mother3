	.syntax unified
	ldr r0, _080203B0
	ldr r1, _080203B4
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080203B0: .4byte gGame
_080203B4: .4byte 0x00008495
	.syntax divided
