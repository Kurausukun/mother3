	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldrh r1, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldrh r2, [r0, #0x22]
	strh r1, [r0, #0x22]
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	ldrh r2, [r0, #0x2c]
	strh r1, [r0, #0x2c]
	ldrh r2, [r0, #0x2e]
	strh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x30]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0x30]
	ldrh r3, [r0, #0x38]
	strh r2, [r0, #0x38]
	ldrh r3, [r0, #0x32]
	strh r1, [r0, #0x32]
	ldrh r3, [r0, #0x3a]
	strh r1, [r0, #0x3a]
	ldrh r3, [r0, #0x34]
	strh r1, [r0, #0x34]
	ldrh r3, [r0, #0x3c]
	strh r1, [r0, #0x3c]
	ldrh r3, [r0, #0x36]
	strh r2, [r0, #0x36]
	ldrh r3, [r0, #0x3e]
	strh r2, [r0, #0x3e]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	movs r3, #0
	adds r7, r0, #0
	adds r7, #0xa
	movs r4, #0
	adds r6, r0, #0
	adds r6, #0x12
	adds r5, r0, #0
	adds r5, #0x1a
_08001430:
	lsls r1, r3, #1
	adds r0, r7, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r0, r6, r1
	ldrh r2, [r0]
	strh r4, [r0]
	adds r1, r5, r1
	ldrh r0, [r1]
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08001430
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
