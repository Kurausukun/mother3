	.syntax unified
sub_08082468:
	push {r4, lr}
	ldr r4, _0808247C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08082480
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808247C: .4byte sMonsterSkillRTTI
_08082480: .4byte _vt.16MonsterSkillRTTI
	.syntax divided
