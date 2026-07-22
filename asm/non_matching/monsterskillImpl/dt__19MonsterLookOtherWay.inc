	.syntax unified
dt__19MonsterLookOtherWay:
	push {lr}
	ldr r2, _080B1C98
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B1C98: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
