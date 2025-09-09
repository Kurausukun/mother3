	.syntax unified
sub_080A6B18:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6B42
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A6B42:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
