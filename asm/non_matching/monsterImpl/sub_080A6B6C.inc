	.syntax unified
sub_080A6B6C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A6B8E
	adds r1, #1
	cmp r0, #0x32
	blt _080A6B8E
	adds r1, #2
	cmp r0, #0x4b
	bge _080A6B8E
	subs r1, #1
_080A6B8E:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
