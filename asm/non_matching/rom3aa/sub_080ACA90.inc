	.syntax unified
sub_080ACA90:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	bl sub_08072EE4
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf2
	cmp r0, #0x1e
	bge _080ACAC0
	movs r1, #0xd8
	b _080ACAC0
_080ACAB0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	cmp r0, #0x46
	bge _080ACAC0
	movs r1, #2
_080ACAC0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
