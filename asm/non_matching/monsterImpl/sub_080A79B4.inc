	.syntax unified
sub_080A79B4:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A79D0
	ldr r0, _080A79DC
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A79D0:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A79DC: .4byte 0x00000129
	.syntax divided
