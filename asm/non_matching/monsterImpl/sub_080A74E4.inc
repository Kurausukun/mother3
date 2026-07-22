	.syntax unified
sub_080A74E4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A7518
	cmp r0, #0xf
	blt _080A750A
	adds r1, #1
	cmp r0, #0x32
	blt _080A750A
	adds r1, #1
	cmp r0, #0x46
	blt _080A750A
	adds r1, #2
	cmp r0, #0x5a
	bge _080A750A
	subs r1, #1
_080A750A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A7518: .4byte 0x0000019F
	.syntax divided
