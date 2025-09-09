	.syntax unified
sub_080AB1B0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB1E0
	cmp r0, #0x19
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x41
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x5f
	bge _080AB1D0
	adds r1, #2
_080AB1D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB1E0: .4byte 0x00000167
	.syntax divided
