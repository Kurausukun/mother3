	.syntax unified
sub_080ACAEC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, _080ACB54
	cmp r0, r1
	bgt _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ACB4E
	movs r0, #0xab
	lsls r0, r0, #1
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080ACB4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB54: .4byte 0x000002BB
	.syntax divided
