	.syntax unified
sub_080A84C8:
	push {r4, r5, r6, r7, lr}
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
	beq _080A855E
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
	beq _080A855E
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
	beq _080A855E
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A855E
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
	b _080A8560
_080A855E:
	movs r0, #0
_080A8560:
	cmp r0, #0
	bne _080A8568
	movs r0, #0
	b _080A8652
_080A8568:
	movs r6, #0xc9
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A858E
	ldr r7, _080A85A8
	adds r0, r5, #0
	adds r1, r7, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A85AC
_080A858E:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x21
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x42
	bge _080A85EE
	b _080A85EC
	.align 2, 0
_080A85A8: .4byte 0x00000193
_080A85AC:
	adds r0, r5, #0
	movs r1, #0x90
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8600
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bgt _080A85D4
	ldr r0, _080A85D0
	b _080A85EE
	.align 2, 0
_080A85D0: .4byte 0x00000195
_080A85D4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x19
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x32
	bge _080A85EE
_080A85EC:
	ldr r0, _080A85FC
_080A85EE:
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080A8650
	.align 2, 0
_080A85FC: .4byte 0x00000193
_080A8600:
	ldr r1, _080A8658
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	ldr r1, _080A865C
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8650
_080A8632:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A8650:
	movs r0, #1
_080A8652:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A8658: .4byte 0x00000197
_080A865C: .4byte 0x00000195
	.syntax divided
