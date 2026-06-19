	.syntax unified
sub_080AB184:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, #0xf
	blt _080AB1A2
	adds r0, #2
	cmp r1, #0x1e
	bge _080AB1A2
	subs r0, #1
_080AB1A2:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
