	.syntax unified
sub_080ABD3C:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xf3
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABD84
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080ABD80
	cmp r0, #0x14
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x2d
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x41
	bge _080ABDA6
	subs r1, #4
	b _080ABDA6
	.align 2, 0
_080ABD80: .4byte 0x000001E3
_080ABD84:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080ABDB4
	cmp r0, #0xa
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x23
	blt _080ABDA6
	subs r1, #3
	cmp r0, #0x37
	blt _080ABDA6
	adds r1, r5, #0
	cmp r0, #0x5a
	bge _080ABDA6
	ldr r1, _080ABDB8
_080ABDA6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABDB4: .4byte 0x000001E3
_080ABDB8: .4byte 0x000001E5
	.syntax divided
