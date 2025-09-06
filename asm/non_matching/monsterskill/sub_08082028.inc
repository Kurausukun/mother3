	.syntax unified
sub_08082028:
	push {lr}
	bl get__16MonsterSkillRTTI
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
