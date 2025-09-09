	.syntax unified
sub_080A5AD4:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_e8__4UnitP6Action
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5B08
	ldr r1, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A5B08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
