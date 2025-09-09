	.syntax unified
sub_0809C8EC:
	push {r4, lr}
	adds r4, r0, #0
	bl IsBossBattle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809C96E
	bl roundNumber
	cmp r0, #0
	bgt _0809C96E
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	bl sub_080726F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C938
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _0809C96E
	movs r0, #8
	b _0809C952
_0809C938:
	bl sub_08072738
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809C96E
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _0809C95E
	movs r0, #6
_0809C952:
	adds r1, r4, #0
	bl sub_08073F88
	bl triggerMonsterSkill
	b _0809C96E
_0809C95E:
	cmp r0, #0x1d
	bgt _0809C96E
	movs r0, #7
	adds r1, r4, #0
	bl sub_08073F88
	bl triggerMonsterSkill
_0809C96E:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
