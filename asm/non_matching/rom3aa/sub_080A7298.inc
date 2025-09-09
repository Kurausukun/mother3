	.syntax unified
sub_080A7298:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72C0
	movs r3, #0xac
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #6
	str r0, [r1]
_080A72C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72E4
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
_080A72E4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7308
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
_080A7308:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A732C
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
_080A732C:
	movs r4, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	movs r3, #0
	adds r2, r6, r1
_080A733A:
	ldr r1, [r2]
	cmp r1, r0
	ble _080A7344
	adds r4, r3, #0
	adds r0, r1, #0
_080A7344:
	adds r2, #4
	adds r3, #1
	cmp r3, #6
	ble _080A733A
	movs r2, #0
	movs r1, #6
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r6, r3
_080A7356:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A7356
	cmp r4, #6
	bhi _080A73E8
	lsls r0, r4, #2
	ldr r1, _080A7370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7370: .4byte _080A7374
_080A7374:
	.4byte _080A7390
	.4byte _080A73A0
	.4byte _080A73AC
	.4byte _080A73BC
	.4byte _080A73C6
	.4byte _080A73D0
	.4byte _080A73DC
_080A7390:
	ldr r0, _080A739C
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
	.align 2, 0
_080A739C: .4byte 0x000001A5
_080A73A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
_080A73AC:
	ldr r0, _080A73B8
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
	.align 2, 0
_080A73B8: .4byte 0x000001A9
_080A73BC:
	movs r0, #0x90
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
_080A73C6:
	movs r0, #0x90
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
_080A73D0:
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
_080A73DC:
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r1, r6, #0
	bl getMonsterSkill
	b _080A7442
_080A73E8:
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
	ble _080A7440
	ldr r0, [r6, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
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
	b _080A7442
_080A7440:
	movs r0, #0
_080A7442:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
