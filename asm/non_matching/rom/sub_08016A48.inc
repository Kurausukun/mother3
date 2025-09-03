	.syntax unified
sub_08016A48:
	ldr r0, _08016A58
	ldr r1, _08016A5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08016A58: .4byte gSomeBlend
_08016A5C: .4byte 0x000121BB
	.syntax divided
