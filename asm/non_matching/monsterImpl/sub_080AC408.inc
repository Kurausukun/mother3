	.syntax unified
sub_080AC408:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9b
	bl sub_08072E38
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x9c
	bl sub_08072E38
	cmp r0, #0
	beq _080AC424
	adds r4, #1
_080AC424:
	cmp r4, #1
	ble _080AC438
	ldr r0, _080AC434
	adds r1, r6, #0
	bl getMonsterSkill
	b _080AC4A2
	.align 2, 0
_080AC434: .4byte 0x0000015D
_080AC438:
	cmp r4, #0
	ble _080AC448
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r6, #0
	bl getMonsterSkill
	b _080AC4A2
_080AC448:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AC4A0
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl getMonsterSkill
	b _080AC4A2
_080AC4A0:
	movs r0, #0
_080AC4A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
