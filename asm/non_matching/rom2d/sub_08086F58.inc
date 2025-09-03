	.syntax unified
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x2a]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #0x2a]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r2, [r0]
	subs r0, #0x90
	ldrh r1, [r3, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
