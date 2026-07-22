	.syntax unified
sub_080A7EFC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
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
	beq _080A7F92
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
	beq _080A7F92
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
	beq _080A7F92
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7F92
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
	b _080A7F94
_080A7F92:
	movs r0, #0
_080A7F94:
	cmp r0, #0
	bne _080A7F9C
	movs r0, #0
	b _080A80A2
_080A7F9C:
	ldr r6, _080A7FD0
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7FD4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
	b _080A80A0
	.align 2, 0
_080A7FD0: .4byte 0x00000243
_080A7FD4:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A804C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A8020
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A801C
	cmp r0, #0x41
	bge _080A8018
	subs r1, #0x55
_080A8018:
	adds r0, r1, #0
	b _080A8038
	.align 2, 0
_080A801C: .4byte 0x00000242
_080A8020:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A8044
	cmp r1, #0x3c
	blt _080A8038
	adds r0, r6, #0
	cmp r1, #0x5a
	bge _080A8038
	ldr r0, _080A8048
_080A8038:
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080A80A0
	.align 2, 0
_080A8044: .4byte 0x000001ED
_080A8048: .4byte 0x00000242
_080A804C:
	ldr r1, _080A80A8
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A806C
	ldr r1, _080A80AC
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A80A0
_080A806C:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A80A0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A80B0
	cmp r0, #0x19
	blt _080A8094
	adds r1, #1
	cmp r0, #0x32
	blt _080A8094
	subs r1, #2
	cmp r0, #0x4b
	bge _080A8094
	adds r1, #3
_080A8094:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A80A0:
	movs r0, #1
_080A80A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A80A8: .4byte 0x000001ED
_080A80AC: .4byte 0x00000242
_080A80B0: .4byte 0x000001F1
	.syntax divided
