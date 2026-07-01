	.syntax unified
dt__13GooeyGooSplit:
	push {lr}
	ldr r2, _080B2598
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B2598: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
