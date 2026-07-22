	.syntax unified
sub_080ACE64:
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
	bge _080ACEDC
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACEC2
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x18
	cmp r0, #0x14
	blt _080ACF12
	movs r1, #0x1f
	cmp r0, #0x3c
	blt _080ACF12
	movs r1, #0xd6
	cmp r0, #0x46
	bge _080ACF12
	movs r1, #0x85
	b _080ACF12
_080ACEC2:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x14
	blt _080ACF14
	movs r0, #0xd6
	cmp r1, #0x3c
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACEDC:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACF02
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x28
	blt _080ACF14
	movs r0, #0x85
	cmp r1, #0x5a
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACF02:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1f
	cmp r0, #0x32
	bge _080ACF12
	movs r1, #0x18
_080ACF12:
	adds r0, r1, #0
_080ACF14:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
