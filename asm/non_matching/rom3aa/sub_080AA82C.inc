	.syntax unified
sub_080AA82C:
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
	blt _080AA8B4
	ldr r1, [r5, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xf6
	lsls r4, r4, #1
	cmp r0, r4
	bne _080AA892
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x28
	bge _080AA8C6
	b _080AA8C4
_080AA892:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA8B0
	cmp r1, #0x28
	blt _080AA8C8
	adds r0, r4, #0
	cmp r1, #0x5a
	bge _080AA8C8
	movs r0, #0xf5
	lsls r0, r0, #1
	b _080AA8C8
	.align 2, 0
_080AA8B0: .4byte 0x000001E9
_080AA8B4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x41
	bge _080AA8C6
_080AA8C4:
	subs r1, #1
_080AA8C6:
	adds r0, r1, #0
_080AA8C8:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
