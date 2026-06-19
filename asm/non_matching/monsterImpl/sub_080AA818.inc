	.syntax unified
sub_080AA818:
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA828
	bl getMonsterSkill
	pop {r1}
	bx r1
	.align 2, 0
_080AA828: .4byte 0x000001EB
	.syntax divided
