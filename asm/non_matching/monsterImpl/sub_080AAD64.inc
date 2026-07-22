	.syntax unified
sub_080AAD64:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x19
	cmp r0, #0xa
	blt _080AAD84
	movs r1, #0x1e
	cmp r0, #0x23
	blt _080AAD84
	movs r1, #0x91
	cmp r0, #0x32
	bge _080AAD84
	movs r1, #0x5c
_080AAD84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
