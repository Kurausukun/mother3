	.syntax unified
sub_080A8D78:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x76
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
