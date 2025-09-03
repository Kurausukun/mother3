	.syntax unified
	push {r4, lr}
	ldr r4, _0806EDE8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806EDEC
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EDE8: .4byte gUnknown_02001E6C
_0806EDEC: .4byte vt_09F80150
	.syntax divided
