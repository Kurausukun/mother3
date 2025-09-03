	.syntax unified
	push {r4, lr}
	ldr r4, _0806CA40
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806CA44
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA40: .4byte gUnknown_02001D1C
_0806CA44: .4byte vt_09F7F198
	.syntax divided
