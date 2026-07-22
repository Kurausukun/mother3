	.syntax unified
dt__14ExplosiveBlast:
	push {lr}
	ldr r2, _080B481C
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B481C: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
