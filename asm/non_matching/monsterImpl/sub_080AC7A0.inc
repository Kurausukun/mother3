	.syntax unified
sub_080AC7A0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x32
	blt _080AC7BC
	movs r0, #0x2f
	cmp r1, #0x3c
	bge _080AC7BC
	movs r0, #0x8c
_080AC7BC:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
