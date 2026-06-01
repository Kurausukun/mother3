	.syntax unified
sub_080B45E0:
	push {lr}
	ldr r2, _080B45F0
	str r2, [r0, #0x1c]
	bl _._12MonsterSkill
	pop {r0}
	bx r0
	.align 2, 0
_080B45F0: .4byte _vt.19DefaultMonsterSkill
	.syntax divided
