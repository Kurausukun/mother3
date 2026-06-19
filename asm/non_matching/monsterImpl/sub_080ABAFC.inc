	.syntax unified
sub_080ABAFC:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABB18
	movs r0, #0x77
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080ABB18:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
