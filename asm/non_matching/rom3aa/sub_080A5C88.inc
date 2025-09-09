	.syntax unified
sub_080A5C88:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A5D3C
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5CAA
	movs r0, #0x90
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A5CAA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D40
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5D42
	.align 2, 0
_080A5D3C: .4byte 0x000001BD
_080A5D40:
	movs r0, #0
_080A5D42:
	cmp r0, #0
	bne _080A5D4A
	movs r0, #0
	b _080A5DC0
_080A5D4A:
	adds r0, r5, #0
	movs r1, #0x90
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D7C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5D78
	cmp r0, #0x32
	bge _080A5D6A
	subs r1, #1
_080A5D6A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080A5DBE
	.align 2, 0
_080A5D78: .4byte 0x00000277
_080A5D7C:
	ldr r1, _080A5DC8
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D9C
	ldr r1, _080A5DCC
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5DBE
_080A5D9C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A5DD0
	cmp r1, #0x21
	blt _080A5DB4
	adds r0, #2
	cmp r1, #0x42
	bge _080A5DB4
	subs r0, #1
_080A5DB4:
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A5DBE:
	movs r0, #1
_080A5DC0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5DC8: .4byte 0x00000276
_080A5DCC: .4byte 0x00000277
_080A5DD0: .4byte 0x0000027B
	.syntax divided
