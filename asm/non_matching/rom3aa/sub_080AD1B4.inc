	.syntax unified
sub_080AD1B4:
	push {r4, lr}
	adds r4, r0, #0
	bl onRoundEnd__7Monster
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AD1DE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080AD1DE
	movs r0, #0x45
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080AD1FE
_080AD1DE:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AD1FE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AD1FE
	movs r0, #0x45
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080AD1FE:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
