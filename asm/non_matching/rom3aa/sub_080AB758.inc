	.syntax unified
sub_080AB758:
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
	cmp r0, #0x45
	bgt _080AB7A0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
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
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB7A0
	movs r0, #0xfb
	adds r1, r4, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
_080AB7A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
