	.syntax unified
sub_080AC850:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	blt _080AC8A0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #8
	cmp r0, #0xf
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x50
	bge _080AC8BC
	b _080AC8BA
_080AC8A0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #8
	cmp r0, #0x14
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC8BC
_080AC8BA:
	movs r1, #0x46
_080AC8BC:
	adds r0, r1, #0
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
