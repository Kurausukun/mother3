	.syntax unified
dt__12MonsterGetUp:
	push {lr}
	ldr r2, _080B27E4
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B27E4: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
