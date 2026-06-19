	.syntax unified
sub_080A9518:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9540
	cmp r1, #0x21
	blt _080A9534
	adds r0, #2
	cmp r1, #0x42
	bge _080A9534
	subs r0, #1
_080A9534:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9540: .4byte 0x000001FB
	.syntax divided
