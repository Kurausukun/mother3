	.syntax unified
sub_080AC750:
	push {r4, lr}
	adds r4, r0, #0
	bl onRoundEnd__7Monster
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AC77A
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080AC79A
_080AC77A:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AC79A
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080AC79A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
