	.syntax unified
sub_0804BEFC:
	ldr r1, _0804BF24
	ldr r0, _0804BF28
	adds r2, r1, r0
	movs r3, #0
	movs r0, #2
	strb r0, [r2]
	movs r0, #0xb9
	lsls r0, r0, #6
	adds r2, r1, r0
	strh r3, [r2, #4]
	ldr r3, _0804BF2C
	adds r0, r1, r3
	ldrb r0, [r0]
	strh r0, [r2, #0xa]
	ldr r0, _0804BF30
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0804BF24: .4byte gSomeBlend
_0804BF28: .4byte 0x00004260
_0804BF2C: .4byte 0x00004264
_0804BF30: .4byte 0x00002DFA
	.syntax divided
