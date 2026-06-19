	.syntax unified
sub_080ABAD8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x9d
	cmp r0, #0x46
	bge _080ABAEC
	movs r1, #0x1f
_080ABAEC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
