	.syntax unified
	ldr r2, _08058D68
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r2, #0
	strb r2, [r1]
	ldr r3, _08058D6C
	adds r1, r0, r3
	ldrb r3, [r1]
	strb r2, [r1]
	ldr r1, _08058D70
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	bx lr
	.align 2, 0
_08058D68: .4byte 0x00002C4C
_08058D6C: .4byte 0x00002C4D
_08058D70: .4byte 0x00002C4E
	.syntax divided
