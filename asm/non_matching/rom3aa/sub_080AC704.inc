	.syntax unified
sub_080AC704:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC716
	movs r0, #0
	b _080AC72E
_080AC716:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x60
	cmp r0, #0x19
	bge _080AC726
	adds r1, #0xb3
_080AC726:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
_080AC72E:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
