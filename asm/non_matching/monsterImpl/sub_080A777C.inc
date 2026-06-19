	.syntax unified
sub_080A777C:
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
	bgt _080A77C4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A77C0
	cmp r0, #0x3c
	blt _080A77BC
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x50
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x5a
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x5f
	bge _080A77BC
_080A77BA:
	movs r1, #0x4a
_080A77BC:
	adds r0, r1, #0
	b _080A7808
	.align 2, 0
_080A77C0: .4byte 0x00000241
_080A77C4:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A77EE
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x50
	bge _080A77BC
	b _080A77BA
_080A77EE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A7808
	movs r0, #0x4a
	cmp r1, #0x50
	bge _080A7808
	movs r0, #0x6d
_080A7808:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
