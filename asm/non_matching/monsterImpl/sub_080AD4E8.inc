	.syntax unified
sub_080AD4E8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AD518
	cmp r0, #0x1e
	blt _080AD508
	subs r1, #0x35
	cmp r0, #0x41
	blt _080AD508
	adds r1, #1
	cmp r0, #0x46
	bge _080AD508
	adds r1, #1
_080AD508:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD518: .4byte 0x00000175
	.syntax divided
