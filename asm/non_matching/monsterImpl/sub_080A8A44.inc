	.syntax unified
sub_080A8A44:
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
	bgt _080A8A72
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A6E
	movs r0, #0xf7
	b _080A8AB0
_080A8A6E:
	movs r0, #0xfa
	b _080A8AB0
_080A8A72:
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
	bgt _080A8A9C
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A98
	movs r0, #0xf8
	b _080A8AB0
_080A8A98:
	movs r0, #0xfa
	b _080A8AB0
_080A8A9C:
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8AAC
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8AB0
_080A8AAC:
	movs r0, #0x81
	lsls r0, r0, #2
_080A8AB0:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
