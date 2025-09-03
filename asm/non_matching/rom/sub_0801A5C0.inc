	.syntax unified
sub_0801A5C0:
	ldr r3, _0801A5E4
	ldrb r1, [r3, #0xe]
	lsrs r1, r1, #6
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	ldr r1, _0801A5E8
	adds r3, r3, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	ldrh r1, [r2, #6]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_0801A5E4: .4byte gGame
_0801A5E8: .4byte 0x000058C0
	.syntax divided
