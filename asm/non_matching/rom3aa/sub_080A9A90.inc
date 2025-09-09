	.syntax unified
sub_080A9A90:
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
	bgt _080A9AB4
	ldr r0, _080A9AB0
	b _080A9B08
	.align 2, 0
_080A9AB0: .4byte 0x00000151
_080A9AB4:
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
	bne _080A9AE8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9B08
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9B08
	adds r0, #0x67
	b _080A9B08
_080A9AE8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x32
	blt _080A9B06
	adds r1, #3
	cmp r0, #0x50
	blt _080A9B06
	subs r1, #2
	cmp r0, #0x55
	bge _080A9B06
	movs r1, #0xea
_080A9B06:
	adds r0, r1, #0
_080A9B08:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
