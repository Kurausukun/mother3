	.syntax unified
_GLOBAL_I_PlayerSkillRTTI:
	push {r4, lr}
	ldr r4, _08080754
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08080758
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08080754: .4byte sPlayerSkillRTTI
_08080758: .4byte _vt.15PlayerSkillRTTI
	.syntax divided
