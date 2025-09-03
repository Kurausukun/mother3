	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _0801AD98
	ldr r2, _0801AD9C
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0801AD98: .4byte gGame
_0801AD9C: .4byte 0x000058AC
	.syntax divided
