	.syntax unified
sub_0801A548:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801A570
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r3, _0801A574
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1]
	ldr r0, _0801A578
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801A570: .4byte gGame
_0801A574: .4byte 0x000058B4
_0801A578: .4byte 0x000058B6
	.syntax divided
