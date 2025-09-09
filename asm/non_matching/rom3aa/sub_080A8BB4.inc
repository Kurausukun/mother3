	.syntax unified
sub_080A8BB4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8BF0
	cmp r0, #0xf
	blt _080A8BE2
	movs r1, #0xe3
	cmp r0, #0x14
	blt _080A8BE2
	movs r1, #0xff
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080A8BE2
	adds r1, #1
	cmp r0, #0x3c
	blt _080A8BE2
	adds r1, #2
	cmp r0, #0x50
	bge _080A8BE2
	subs r1, #1
_080A8BE2:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BF0: .4byte 0x00000113
	.syntax divided
