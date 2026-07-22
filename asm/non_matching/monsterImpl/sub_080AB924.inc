	.syntax unified
sub_080AB924:
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
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AB964
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB960
	cmp r0, #0x28
	bge _080AB95A
	subs r1, #1
_080AB95A:
	adds r0, r1, #0
	b _080AB97E
	.align 2, 0
_080AB960: .4byte 0x00000177
_080AB964:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080AB97E
	adds r0, #2
	cmp r1, #0x50
	bge _080AB97E
	subs r0, #1
_080AB97E:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
