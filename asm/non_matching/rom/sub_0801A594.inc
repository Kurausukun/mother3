	.syntax unified
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801A5B4
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r3, _0801A5B8
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0801A5BC
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801A5B4: .4byte gGame
_0801A5B8: .4byte 0x000058B0
_0801A5BC: .4byte 0x000058B2
	.syntax divided
