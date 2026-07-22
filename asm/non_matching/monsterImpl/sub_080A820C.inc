	.syntax unified
sub_080A820C:
	push {r4, r5, r6, lr}
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
	cmp r0, #0x28
	bgt _080A823E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A823A
	subs r1, #1
_080A823A:
	adds r0, r1, #0
	b _080A830A
_080A823E:
	ldr r1, [r4, #0x1c]
	movs r6, #0x84
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A825A
_080A8256:
	movs r0, #0xb5
	b _080A830A
_080A825A:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A827E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	beq _080A8256
_080A827E:
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
	movs r1, #3
	bl Remainder
	cmp r0, #0
	bne _080A82BA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A830A
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A830A
	movs r0, #0x65
	b _080A830A
_080A82BA:
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
	movs r1, #3
	bl Remainder
	cmp r0, #1
	bne _080A82F0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A823A
	ldr r1, _080A82EC
	b _080A823A
	.align 2, 0
_080A82EC: .4byte 0x00000223
_080A82F0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A830A
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A830A
	movs r0, #0xac
_080A830A:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
