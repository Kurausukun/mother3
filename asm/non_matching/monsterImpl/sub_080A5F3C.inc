	.syntax unified
sub_080A5F3C:
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
	ble _080A5F68
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A5F68
	movs r0, #0x90
	b _080A5F7A
_080A5F68:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F88
	cmp r0, #0x3c
	bge _080A5F78
	subs r1, #1
_080A5F78:
	adds r0, r1, #0
_080A5F7A:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F88: .4byte 0x00000277
	.syntax divided
