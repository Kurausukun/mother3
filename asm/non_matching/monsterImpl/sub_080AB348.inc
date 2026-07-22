	.syntax unified
sub_080AB348:
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
	bgt _080AB36C
	ldr r0, _080AB368
	b _080AB39C
	.align 2, 0
_080AB368: .4byte 0x0000011F
_080AB36C:
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
	ble _080AB39A
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x1e
	blt _080AB39C
	movs r0, #0x3a
	cmp r1, #0x55
	bge _080AB39C
_080AB39A:
	movs r0, #0x59
_080AB39C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
