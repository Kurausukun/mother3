	.syntax unified
sub_080ABD28:
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ABD38
	bl getMonsterSkill
	pop {r1}
	bx r1
	.align 2, 0
_080ABD38: .4byte 0x000001E7
	.syntax divided
