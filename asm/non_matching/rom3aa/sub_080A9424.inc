	.syntax unified
sub_080A9424:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A945C
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080A945C
_080A9452:
	ldr r0, _080A9458
	b _080A9506
	.align 2, 0
_080A9458: .4byte 0x00000231
_080A945C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9486
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	ble _080A9452
_080A9486:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A94B0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	ble _080A9452
_080A94B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A94EC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9506
	movs r0, #0x64
	cmp r1, #0x50
	bge _080A9506
	ldr r0, _080A94E8
	b _080A9506
	.align 2, 0
_080A94E8: .4byte 0x000001F7
_080A94EC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080A9506
	movs r0, #0x63
	cmp r1, #0x46
	bge _080A9506
	ldr r0, _080A9514
_080A9506:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9514: .4byte 0x000001F9
	.syntax divided
