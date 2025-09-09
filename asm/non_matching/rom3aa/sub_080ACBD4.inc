	.syntax unified
sub_080ACBD4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa9
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080ACBF6
	adds r1, #1
	cmp r0, #0x41
	blt _080ACBF6
	adds r1, #2
	cmp r0, #0x4b
	bge _080ACBF6
	subs r1, #1
_080ACBF6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
