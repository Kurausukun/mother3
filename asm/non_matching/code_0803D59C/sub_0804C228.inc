	.syntax unified
sub_0804C228:
	ldr r1, _0804C244
	ldr r0, _0804C248
	adds r2, r1, r0
	movs r3, #0
	movs r0, #9
	strb r0, [r2]
	ldr r0, _0804C24C
	adds r2, r1, r0
	strh r3, [r2, #0xa]
	ldr r0, _0804C250
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0804C244: .4byte gSomeBlend
_0804C248: .4byte 0x00004260
_0804C24C: .4byte 0x00002F20
_0804C250: .4byte 0x00002DFC
	.syntax divided
