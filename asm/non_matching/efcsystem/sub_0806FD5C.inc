	.syntax unified
	push {r4, lr}
	ldr r4, _0806FD70
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FD74
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FD70: .4byte gUnknown_02001F00
_0806FD74: .4byte vt_09F805B8
	.syntax divided
