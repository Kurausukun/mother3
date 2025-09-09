	.syntax unified
sub_080AAFD8:
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
	cmp r0, #1
	bgt _080AB00C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB008
	cmp r0, #0x32
	bge _080AB004
	subs r1, #4
_080AB004:
	adds r0, r1, #0
	b _080AB02C
	.align 2, 0
_080AB008: .4byte 0x00000173
_080AB00C:
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
	ble _080AB02A
	movs r0, #0xb8
	lsls r0, r0, #1
	b _080AB02C
_080AB02A:
	ldr r0, _080AB038
_080AB02C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB038: .4byte 0x0000021F
	.syntax divided
