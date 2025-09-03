	.syntax unified
sub_0802F390:
	ldrh r2, [r1, #2]
	adds r2, #8
	lsls r2, r2, #0x10
	ldrh r1, [r1, #4]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r3, r2, #0x10
	orrs r3, r1
	lsls r1, r3, #4
	strh r1, [r0]
	asrs r1, r3, #0x10
	lsls r1, r1, #4
	strh r1, [r0, #2]
	ldr r1, _0802F3B4
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F3B4: .4byte gObjectContinue
	.syntax divided
