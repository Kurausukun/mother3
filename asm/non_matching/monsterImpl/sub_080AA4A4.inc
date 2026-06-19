	.syntax unified
sub_080AA4A4:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AA4D0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA4CC
	cmp r1, #0x19
	blt _080AA4E4
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AA4E4
	movs r0, #0xed
	lsls r0, r0, #1
	b _080AA4E4
	.align 2, 0
_080AA4CC: .4byte 0x000001D9
_080AA4D0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xed
	lsls r1, r1, #1
	cmp r0, #0x23
	bge _080AA4E2
	subs r1, #1
_080AA4E2:
	adds r0, r1, #0
_080AA4E4:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
