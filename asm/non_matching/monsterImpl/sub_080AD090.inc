	.syntax unified
sub_080AD090:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	movs r1, #0x3b
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD0FC
	movs r6, #0
	b _080AD0AC
_080AD0AA:
	adds r6, #1
_080AD0AC:
	bl sub_08072DFC__Fv
	cmp r6, r0
	bge _080AD0DC
	adds r0, r6, #0
	bl sub_08072E18__Fi
	cmp r0, r4
	beq _080AD0AA
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	adds r0, r6, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_080AD0DC:
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	ble _080AD0F8
	movs r1, #1
_080AD0F8:
	adds r0, r1, #0
	b _080AD104
_080AD0FC:
	adds r0, r4, #0
	adds r1, r7, #0
	bl monster_2c8__7MonsterP6Action
_080AD104:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
