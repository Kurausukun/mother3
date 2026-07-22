	.syntax unified
sub_080A5B10:
	push {r4, r5, lr}
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
	beq _080A5BA6
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
	beq _080A5BA6
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
	beq _080A5BA6
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BA6
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
	b _080A5BA8
_080A5BA6:
	movs r0, #0
_080A5BA8:
	cmp r0, #0
	bne _080A5BB0
	movs r0, #0
	b _080A5C7C
_080A5BB0:
	adds r0, r5, #0
	movs r1, #0x90
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BD8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5BD4
	cmp r0, #0x32
	bge _080A5BD0
	subs r1, #1
_080A5BD0:
	adds r0, r1, #0
	b _080A5C10
	.align 2, 0
_080A5BD4: .4byte 0x00000277
_080A5BD8:
	ldr r1, _080A5C1C
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BF8
	ldr r1, _080A5C20
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C28
_080A5BF8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A5C24
	cmp r1, #0x21
	blt _080A5C10
	adds r0, #2
	cmp r1, #0x42
	bge _080A5C10
	subs r0, #1
_080A5C10:
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080A5C7A
	.align 2, 0
_080A5C1C: .4byte 0x00000276
_080A5C20: .4byte 0x00000277
_080A5C24: .4byte 0x0000027B
_080A5C28:
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	ldr r1, _080A5C84
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C7A
_080A5C5C:
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A5C7A:
	movs r0, #1
_080A5C7C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5C84: .4byte 0x000001BB
	.syntax divided
