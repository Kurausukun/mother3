	.syntax unified
sub_080AAB38:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080AAB84
	adds r0, r5, #0
	bl IsMonsterSkillAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAB88
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	beq _080AAB88
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	movs r0, #1
	b _080AAB90
	.align 2, 0
_080AAB84: .4byte 0x000001CD
_080AAB88:
	adds r0, r4, #0
	adds r1, r5, #0
	bl monster_2c8__7MonsterP6Action
_080AAB90:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
