	.syntax unified
sub_080A99AC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A99E4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xdf
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	adds r0, #3
	cmp r1, #0x55
	bge _080A99FE
	subs r0, #1
	b _080A99FE
_080A99E4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A99FE
	movs r0, #0x1e
_080A99FE:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
