	.syntax unified
sub_080A5EA4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A5ED0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A5ED0
	movs r0, #0x90
	b _080A5F2C
_080A5ED0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A5F08
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F04
	cmp r0, #0x37
	bge _080A5F2A
	b _080A5F28
	.align 2, 0
_080A5F04: .4byte 0x00000277
_080A5F08:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F38
	cmp r0, #0x28
	blt _080A5F2A
	adds r1, #1
	cmp r0, #0x46
	blt _080A5F2A
	subs r1, #0xbd
	cmp r0, #0x55
	blt _080A5F2A
	adds r1, #2
	cmp r0, #0x5f
	bge _080A5F2A
_080A5F28:
	subs r1, #1
_080A5F2A:
	adds r0, r1, #0
_080A5F2C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F38: .4byte 0x00000276
	.syntax divided
