	.syntax unified
sub_08059B10:
	ldr r2, _08059B28
	ldrh r0, [r2, #0x22]
	movs r0, #0
	strh r0, [r2, #0x22]
	ldr r0, _08059B2C
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08059B28: .4byte gSomeBlend
_08059B2C: .4byte 0x0000328C
	.syntax divided
