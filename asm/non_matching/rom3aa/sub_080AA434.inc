	.syntax unified
sub_080AA434:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AA45C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA458
	cmp r1, #0x19
	blt _080AA474
	adds r0, #0x53
	cmp r1, #0x3c
	bge _080AA474
	b _080AA472
	.align 2, 0
_080AA458: .4byte 0x00000113
_080AA45C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA480
	cmp r1, #0x23
	blt _080AA474
	movs r0, #0xa9
	cmp r1, #0x55
	bge _080AA474
_080AA472:
	ldr r0, _080AA484
_080AA474:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA480: .4byte 0x00000113
_080AA484: .4byte 0x00000165
	.syntax divided
