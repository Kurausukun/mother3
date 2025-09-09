	.syntax unified
sub_080A9850:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A9864
	movs r1, #0xc
_080A9864:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
