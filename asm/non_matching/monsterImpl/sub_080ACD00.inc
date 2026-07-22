	.syntax unified
sub_080ACD00:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACD7E
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl IsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ACD7E
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080ACD7E
	movs r0, #0xa7
	adds r1, r5, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080ACD7E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
