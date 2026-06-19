	.syntax unified
sub_080A6998:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080A69AC
	ldr r0, _080A69A8
	b _080A69DA
	.align 2, 0
_080A69A8: .4byte 0x0000026D
_080A69AC:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A69BA
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A69DA
_080A69BA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A69D8
	adds r1, #1
	cmp r0, #0x32
	blt _080A69D8
	adds r1, #2
	cmp r0, #0x4b
	bge _080A69D8
	subs r1, #1
_080A69D8:
	adds r0, r1, #0
_080A69DA:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
