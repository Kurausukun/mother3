	.syntax unified
sub_080A9964:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9982
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A9982
	movs r0, #0x1e
_080A9982:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
