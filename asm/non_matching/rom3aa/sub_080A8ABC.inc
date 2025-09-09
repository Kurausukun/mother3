	.syntax unified
sub_080A8ABC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8AEA
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8AE6
	movs r0, #0xf7
	b _080A8B26
_080A8AE6:
	movs r0, #0xfa
	b _080A8B26
_080A8AEA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8B14
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B10
	movs r0, #0xf8
	b _080A8B26
_080A8B10:
	movs r0, #0xfa
	b _080A8B26
_080A8B14:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8B24
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8B26
_080A8B24:
	ldr r0, _080A8B34
_080A8B26:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8B34: .4byte 0x00000203
	.syntax divided
