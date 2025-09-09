	.syntax unified
sub_080A9D64:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9D94
	cmp r0, #0x2d
	blt _080A9D84
	adds r1, #3
	cmp r0, #0x37
	blt _080A9D84
	subs r1, #2
	cmp r0, #0x41
	bge _080A9D84
	adds r1, #3
_080A9D84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D94: .4byte 0x00000213
	.syntax divided
