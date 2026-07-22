	.syntax unified
sub_080A9D98:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DCC
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	bl get__13BattleManager
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DCC: .4byte 0x00000215
	.syntax divided
