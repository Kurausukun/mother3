	.syntax unified
sub_080AC9A8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC9D0
	cmp r1, #0x37
	blt _080AC9C4
	movs r0, #0xbe
	cmp r1, #0x55
	bge _080AC9C4
	adds r0, #0x8e
_080AC9C4:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9D0: .4byte 0x0000014B
	.syntax divided
