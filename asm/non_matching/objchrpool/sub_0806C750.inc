	.syntax unified
_GLOBAL_I_ObjChrPoolManager:
	push {r4, lr}
	ldr r4, _0806C764
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806C768
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C764: .4byte sObjChrPoolManager
_0806C768: .4byte _vt.17ObjChrPoolManager
	.syntax divided
