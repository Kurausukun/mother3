	.syntax unified
sub_080A80B4:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	bgt _080A80E6
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A80E2
	subs r1, #1
_080A80E2:
	adds r0, r1, #0
	b _080A81FA
_080A80E6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A8112
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A8112
	movs r0, #0xb5
	b _080A81FA
_080A8112:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl Remainder
	cmp r0, #0
	bne _080A814E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A81FA
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A81FA
	movs r0, #0x65
	b _080A81FA
_080A814E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl Remainder
	cmp r0, #1
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl Remainder
	cmp r0, #2
	bne _080A81A4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A819A
	ldr r1, _080A81A0
_080A819A:
	adds r0, r1, #0
	b _080A81FA
	.align 2, 0
_080A81A0: .4byte 0x00000223
_080A81A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl Remainder
	cmp r0, #3
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl Remainder
	cmp r0, #4
	bne _080A81F8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A81FA
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A81FA
	movs r0, #0xac
	b _080A81FA
_080A81F8:
	ldr r0, _080A8208
_080A81FA:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0x000001F5
	.syntax divided
