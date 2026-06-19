	.syntax unified
sub_080AB650:
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl getMonsterSkill
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
