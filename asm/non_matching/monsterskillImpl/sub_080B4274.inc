	.syntax unified
action_150__21FiercePorkTrooperJump:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08073270
	adds r0, r4, #0
	bl action_150__12MonsterSkill
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
