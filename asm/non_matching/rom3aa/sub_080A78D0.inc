	.syntax unified
sub_080A78D0:
	push {r4, lr}
	movs r4, #0
	b _080A791C
_080A78D6:
	adds r0, r4, #0
	bl GetMonster
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #4
	beq _080A7912
	adds r0, r4, #0
	bl GetMonster
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080A791A
_080A7912:
	adds r0, r4, #0
	bl GetMonster
	b _080A7926
_080A791A:
	adds r4, #1
_080A791C:
	bl GetMonsterCount
	cmp r4, r0
	blt _080A78D6
	movs r0, #0
_080A7926:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
