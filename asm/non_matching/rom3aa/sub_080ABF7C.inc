	.syntax unified
sub_080ABF7C:
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
	beq _080AC012
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
	beq _080AC012
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
	beq _080AC012
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC012
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
	b _080AC014
_080AC012:
	movs r0, #0
_080AC014:
	cmp r0, #0
	bne _080AC01C
	movs r0, #0
	b _080AC03A
_080AC01C:
	ldr r1, _080AC040
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC038
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC038:
	movs r0, #1
_080AC03A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC040: .4byte 0x000001DF
	.syntax divided
