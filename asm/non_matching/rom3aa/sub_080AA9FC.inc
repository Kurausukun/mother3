	.syntax unified
sub_080AA9FC:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AAA22
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #4
	cmp r1, #0x32
	blt _080AAA34
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AAA34
	movs r0, #0x5d
	b _080AAA34
_080AAA22:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x5d
	cmp r0, #0x46
	bge _080AAA32
	movs r1, #4
_080AAA32:
	adds r0, r1, #0
_080AAA34:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
