	.syntax unified
sub_080A9DEC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9E14
	cmp r1, #0x21
	blt _080A9E08
	adds r0, #8
	cmp r1, #0x42
	bge _080A9E08
	subs r0, #7
_080A9E08:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9E14: .4byte 0x00000219
	.syntax divided
