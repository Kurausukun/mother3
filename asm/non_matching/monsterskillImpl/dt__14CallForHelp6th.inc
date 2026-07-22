	.syntax unified
dt__14CallForHelp6th:
	push {lr}
	ldr r2, _080B0784
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B0784: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
