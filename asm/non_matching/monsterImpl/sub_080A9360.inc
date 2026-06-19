	.syntax unified
sub_080A9360:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9382
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A9382:
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
	bgt _080A93A4
	ldr r0, _080A93A0
	b _080A93E0
	.align 2, 0
_080A93A0: .4byte 0x0000018D
_080A93A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080A93BE
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A93BE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	ble _080A93DC
	ldr r0, _080A93D8
	b _080A93E0
	.align 2, 0
_080A93D8: .4byte 0x0000018B
_080A93DC:
	movs r0, #0xc6
	lsls r0, r0, #1
_080A93E0:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
