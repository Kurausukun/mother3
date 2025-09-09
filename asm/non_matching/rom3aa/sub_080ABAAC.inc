	.syntax unified
sub_080ABAAC:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitP6Action
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABAD2
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080ABAD2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
