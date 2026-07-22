	.syntax unified
sub_080AAA5C:
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
	blt _080AAAAC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1a
	cmp r0, #0x23
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x50
	blt _080AAACA
	movs r1, #0x34
	cmp r0, #0x55
	bge _080AAACA
	b _080AAAC8
_080AAAAC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1a
	cmp r0, #0x1e
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080AAACA
	movs r1, #0xe9
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080AAACA
_080AAAC8:
	movs r1, #0x85
_080AAACA:
	adds r0, r1, #0
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
