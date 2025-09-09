	.syntax unified
sub_080A9F3C:
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
	beq _080A9FD2
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
	beq _080A9FD2
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
	beq _080A9FD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9FD2
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
	b _080A9FD4
_080A9FD2:
	movs r0, #0
_080A9FD4:
	cmp r0, #0
	bne _080A9FDC
	movs r0, #0
	b _080AA070
_080A9FDC:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA018
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA014
	cmp r1, #0x2d
	blt _080AA006
	adds r0, #1
	cmp r1, #0x50
	bge _080AA006
	adds r0, #0x24
_080AA006:
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080AA06E
	.align 2, 0
_080AA014: .4byte 0x000001ED
_080AA018:
	ldr r1, _080AA078
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA03A
	movs r1, #0xf7
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA06E
_080AA03A:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080AA06E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA07C
	cmp r0, #0x19
	blt _080AA062
	adds r1, #1
	cmp r0, #0x32
	blt _080AA062
	subs r1, #2
	cmp r0, #0x4b
	bge _080AA062
	adds r1, #3
_080AA062:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080AA06E:
	movs r0, #1
_080AA070:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA078: .4byte 0x000001ED
_080AA07C: .4byte 0x000001F1
	.syntax divided
