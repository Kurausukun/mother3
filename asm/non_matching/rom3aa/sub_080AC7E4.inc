	.syntax unified
sub_080AC7E4:
	push {r4, lr}
	adds r4, r0, #0
	bl GetMonsterCount
	cmp r0, #2
	bgt _080AC810
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #2
	cmp r0, #0x23
	blt _080AC80C
	movs r1, #0x35
	cmp r0, #0x28
	blt _080AC80C
	movs r1, #0xc4
	cmp r0, #0x32
	bge _080AC80C
	movs r1, #0x7b
_080AC80C:
	adds r0, r1, #0
	b _080AC828
_080AC810:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x41
	blt _080AC828
	movs r0, #0x7b
	cmp r1, #0x55
	bge _080AC828
	movs r0, #0x35
_080AC828:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
