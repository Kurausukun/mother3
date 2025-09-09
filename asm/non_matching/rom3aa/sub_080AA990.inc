	.syntax unified
sub_080AA990:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x39
	bl sub_08072E38
	cmp r0, #0
	beq _080AA9B8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x2d
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	adds r0, #0xc7
	b _080AA9D0
_080AA9B8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x32
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	ldr r0, _080AA9DC
_080AA9D0:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA9DC: .4byte 0x000001D5
	.syntax divided
