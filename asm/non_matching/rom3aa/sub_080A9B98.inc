	.syntax unified
sub_080A9B98:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9BBC
	ldr r0, _080A9BB8
	b _080A9C28
	.align 2, 0
_080A9BB8: .4byte 0x00000151
_080A9BBC:
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
	blt _080A9C08
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9C28
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9C28
	adds r0, #0x67
	b _080A9C28
_080A9C08:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x41
	blt _080A9C26
	adds r1, #3
	cmp r0, #0x5f
	blt _080A9C26
	subs r1, #2
	cmp r0, #0x64
	bge _080A9C26
	movs r1, #0xea
_080A9C26:
	adds r0, r1, #0
_080A9C28:
	adds r1, r5, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
