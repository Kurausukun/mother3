	.syntax unified
sub_080A7AC4:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A7AF4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x46
	blt _080A7B08
	ldr r0, _080A7AF0
	cmp r1, #0x55
	bge _080A7B08
	subs r0, #0x6f
	b _080A7B08
	.align 2, 0
_080A7AF0: .4byte 0x00000243
_080A7AF4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xea
	lsls r1, r1, #1
	cmp r0, #0x50
	bge _080A7B06
	subs r1, #0xd0
_080A7B06:
	adds r0, r1, #0
_080A7B08:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
