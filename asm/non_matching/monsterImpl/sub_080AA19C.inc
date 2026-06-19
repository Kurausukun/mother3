	.syntax unified
sub_080AA19C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080AA1CE
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080AA1CE
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080AA1E6
_080AA1CE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA1F4
	cmp r1, #0x2d
	blt _080AA1E6
	adds r0, #1
	cmp r1, #0x50
	bge _080AA1E6
	adds r0, #0x24
_080AA1E6:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1F4: .4byte 0x000001ED
	.syntax divided
