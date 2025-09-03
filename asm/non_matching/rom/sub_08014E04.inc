	.syntax unified
sub_08014E04:
	ldr r0, _08014E14
	ldr r1, _08014E18
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014E14: .4byte gSomeBlend
_08014E18: .4byte 0x000121BA
	.syntax divided
