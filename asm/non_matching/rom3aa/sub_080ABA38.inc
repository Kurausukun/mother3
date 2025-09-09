	.syntax unified
sub_080ABA38:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitP6Action
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
	ble _080ABAA4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080ABAA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
