	.syntax unified
sub_0803EE78:
	ldr r2, _0803EE94
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r2, #0
	strb r2, [r1]
	ldr r3, _0803EE98
	adds r1, r0, r3
	ldrb r3, [r1]
	strb r2, [r1]
	ldr r1, _0803EE9C
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	bx lr
	.align 2, 0
_0803EE94: .4byte 0x00002C4C
_0803EE98: .4byte 0x00002C4D
_0803EE9C: .4byte 0x00002C4E
	.syntax divided
