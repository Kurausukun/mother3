	.syntax unified
sub_080A9E18:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
