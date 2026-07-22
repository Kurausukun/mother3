	.syntax unified
sub_080A6B9C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6BC0
	cmp r0, #0x37
	bge _080A6BB0
	subs r1, #0xf
_080A6BB0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6BC0: .4byte 0x000001B9
	.syntax divided
