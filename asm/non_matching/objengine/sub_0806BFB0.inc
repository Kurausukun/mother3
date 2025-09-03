	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r0, r3, r4
	ldr r0, [r0, #0x20]
	adds r3, r3, r4
	adds r2, r0, r2
	str r2, [r3, #0x20]
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
