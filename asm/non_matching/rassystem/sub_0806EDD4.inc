	.syntax unified
_GLOBAL_I_RasSystemManager:
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
_0806EDE8: .4byte sRasSystemManager
_0806EDEC: .4byte _vt.16RasSystemManager
	.syntax divided
