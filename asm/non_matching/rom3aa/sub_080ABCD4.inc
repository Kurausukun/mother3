	.syntax unified
sub_080ABCD4:
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
	movs r5, #0xcf
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABCFE
	movs r0, #0xf4
	lsls r0, r0, #1
	b _080ABD18
_080ABCFE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080ABD18
	adds r0, r5, #0
	cmp r1, #0x3c
	bge _080ABD18
	ldr r0, _080ABD24
_080ABD18:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABD24: .4byte 0x000001E5
	.syntax divided
