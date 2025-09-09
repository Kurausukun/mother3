	.syntax unified
sub_080ACB58:
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
	cmp r0, #0
	bgt _080ACB7C
	ldr r0, _080ACB78
	b _080ACBC6
	.align 2, 0
_080ACB78: .4byte 0x00000157
_080ACB7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080ACB9A
	movs r0, #0xad
	lsls r0, r0, #1
	b _080ACBC6
_080ACB9A:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xac
	lsls r1, r1, #1
	cmp r0, #0x10
	blt _080ACBC4
	adds r1, #1
	cmp r0, #0x20
	blt _080ACBC4
	subs r1, #2
	cmp r0, #0x30
	blt _080ACBC4
	adds r1, #3
	cmp r0, #0x40
	blt _080ACBC4
	subs r1, #0x22
	cmp r0, #0x50
	bge _080ACBC4
	subs r1, #1
_080ACBC4:
	adds r0, r1, #0
_080ACBC6:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
