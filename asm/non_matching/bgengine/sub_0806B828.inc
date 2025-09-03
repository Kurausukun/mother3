	.syntax unified
sub_0806B828:
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, #0x2c
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r3, r0
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldrh r1, [r3, #0x12]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r2, r2, #5
	adds r0, r0, r2
	bx lr
	.syntax divided
