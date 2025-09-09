	.syntax unified
sub_080AD568:
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
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080AD5BC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AD5B8
	cmp r1, #0x32
	blt _080AD5BE
	subs r0, #0x33
	cmp r1, #0x55
	bge _080AD5BE
	subs r0, #2
	b _080AD5BE
	.align 2, 0
_080AD5B8: .4byte 0x00000175
_080AD5BC:
	ldr r0, _080AD5CC
_080AD5BE:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD5CC: .4byte 0x00000141
	.syntax divided
