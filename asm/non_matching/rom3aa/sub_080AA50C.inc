	.syntax unified
sub_080AA50C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	bgt _080AA54A
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
_080AA54A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #1
	bgt _080AA588
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA584
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
	.align 2, 0
_080AA584: .4byte 0x0000025B
_080AA588:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA5B8
	cmp r0, #0x14
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x28
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x3c
	blt _080AA5AA
	adds r1, #2
	cmp r0, #0x50
	bge _080AA5AA
	subs r1, #1
_080AA5AA:
	adds r0, r1, #0
_080AA5AC:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA5B8: .4byte 0x0000025E
	.syntax divided
