	.syntax unified
sub_080A9890:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A98C0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xe3
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080A98D0
	subs r1, #2
	b _080A98D0
_080A98C0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A98D0
	movs r1, #0xc
_080A98D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
