	.syntax unified
	push {r4, lr}
	ldr r4, _0806FF30
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FF34
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FF30: .4byte gUnknown_02001F14
_0806FF34: .4byte vt_09F80668
	.syntax divided
