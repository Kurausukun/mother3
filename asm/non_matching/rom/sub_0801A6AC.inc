	.syntax unified
	ldr r1, _0801A6BC
	ldr r0, _0801A6C0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801A6BC: .4byte gUnknown_08D2D634
_0801A6C0: .4byte gGame
	.syntax divided
