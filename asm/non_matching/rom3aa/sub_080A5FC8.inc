	.syntax unified
sub_080A5FC8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5FCC:
	movs r5, #0
	movs r4, #0
	b _080A5FEA
_080A5FD2:
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	movs r1, #2
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5FE8
	movs r5, #1
_080A5FE8:
	adds r4, #1
_080A5FEA:
	bl sub_08072A88__Fv
	cmp r4, r0
	blt _080A5FD2
	cmp r5, #1
	bne _080A6008
	ldr r0, _080A6004
	adds r1, r6, #0
	bl getMonsterSkill
	bl triggerMonsterSkill
	b _080A5FCC
	.align 2, 0
_080A6004: .4byte 0x00000279
_080A6008:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
