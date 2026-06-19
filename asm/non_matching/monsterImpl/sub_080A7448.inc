	.syntax unified
sub_080A7448:
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
	bgt _080A746A
	movs r0, #0xd3
	lsls r0, r0, #1
	b _080A74D4
_080A746A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A74B0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A74AC
	cmp r0, #0xf
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x2d
	blt _080A74D2
	adds r1, #2
	cmp r0, #0x41
	bge _080A74D2
	subs r1, #1
	b _080A74D2
	.align 2, 0
_080A74AC: .4byte 0x0000019F
_080A74B0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A74E0
	cmp r0, #0xa
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x23
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x32
	blt _080A74D2
	adds r1, #5
	cmp r0, #0x46
	bge _080A74D2
	subs r1, #4
_080A74D2:
	adds r0, r1, #0
_080A74D4:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A74E0: .4byte 0x0000019F
	.syntax divided
