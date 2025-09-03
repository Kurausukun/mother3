	.syntax unified
	push {r4, lr}
	adds r4, r2, #0
	adds r2, r1, #1
	cmp r2, r4
	bge _0806F558
	lsls r0, r2, #3
	subs r0, #8
	adds r3, r0, r3
_0806F53C:
	ldrh r0, [r3]
	ldrh r1, [r3, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #8]
	ldrh r0, [r3, #2]
	ldrh r1, [r3, #0x12]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0xa]
	adds r3, #0x10
	adds r2, #2
	cmp r2, r4
	blt _0806F53C
_0806F558:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
