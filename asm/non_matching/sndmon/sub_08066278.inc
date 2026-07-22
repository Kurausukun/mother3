	.syntax unified
_GLOBAL_I_SndMonManager:
	push {r4, lr}
	ldr r4, _0806628C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08066290
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806628C: .4byte sSndMonManager
_08066290: .4byte _vt.13SndMonManager
	.syntax divided
