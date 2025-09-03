	.syntax unified
	push {r4, lr}
	ldr r4, _0806BDD4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806BDD8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDD4: .4byte gUnknown_02001CE0
_0806BDD8: .4byte vt_09F7F018
	.syntax divided
