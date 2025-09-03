	.syntax unified
scriptstack_set:
	lsls r1, r1, #0x10
	ldr r3, _080218E0
	lsrs r1, r1, #0xe
	subs r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080218E4
	adds r3, r3, r1
	adds r0, r0, r3
	str r2, [r0]
	bx lr
	.align 2, 0
_080218E0: .4byte gGame
_080218E4: .4byte 0x000084C4
	.syntax divided
