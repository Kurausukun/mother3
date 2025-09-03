	.syntax unified
	push {r4, lr}
	ldr r4, _0806E818
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806E81C
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E818: .4byte gUnknown_02001E58
_0806E81C: .4byte vt_09F7FFC8
	.syntax divided
