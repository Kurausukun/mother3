	.syntax unified
sub_080B4414:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, [r5, #0x4c]
	bl GetMonsterCount
	adds r1, r0, #0
	adds r0, r4, #0
	bl Remainder
	bl GetMonster
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08073198
	ldr r0, [r4, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySoundBlocking
	bl sub_08073270
	adds r0, r5, #0
	adds r1, r6, #0
	bl onAttack__6ActionP4Unit
	ldr r0, [r5, #0x4c]
	adds r0, #1
	str r0, [r5, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
