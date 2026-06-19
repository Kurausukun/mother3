	.syntax unified
sub_080A86F0:
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
	cmp r0, #2
	bgt _080A8724
_080A870C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8720
	cmp r0, #0x28
	bge _080A87E8
	subs r1, #1
	b _080A87E8
	.align 2, 0
_080A8720: .4byte 0x00000193
_080A8724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080A8740
	movs r0, #0x90
	b _080A87EA
_080A8740:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8768
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x1d
	bgt _080A8768
	movs r0, #0x90
	b _080A87EA
_080A8768:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	ble _080A870C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A87BE
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A87EA
	adds r0, #4
	cmp r1, #0x46
	bge _080A87EA
	subs r0, #3
	b _080A87EA
_080A87BE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xc9
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x28
	blt _080A87E8
	adds r1, #3
	cmp r0, #0x37
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x55
	blt _080A87E8
	subs r1, #2
	cmp r0, #0x5f
	bge _080A87E8
	adds r1, #3
_080A87E8:
	adds r0, r1, #0
_080A87EA:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
