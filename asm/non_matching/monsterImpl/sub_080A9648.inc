	.syntax unified
sub_080A9648:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #4
	beq _080A96B2
	ldr r1, [r4, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A96B2
	ldr r0, [r5]
	cmp r0, #0
	beq _080A969A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _080A96B8
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080A969A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_080A96B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A96B8: .4byte 0x00000189
	.syntax divided
