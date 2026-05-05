	.syntax unified
_GLOBAL_I_PlayerRTTI:
	push {r4, lr}
	ldr r4, _0807C4E8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0807C4EC
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C4E8: .4byte sPlayerRTTI
_0807C4EC: .4byte _vt.10PlayerRTTI
	.syntax divided
