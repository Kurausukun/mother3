	.syntax unified
sub_08068408:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
_0806840E:
	lsls r1, r5, #2
	ldr r2, _08068460
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x18
	movs r3, #0x18
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	movs r3, #0
	ldr r6, _08068464
	adds r0, r4, r6
	ldrh r0, [r0]
	cmp r5, r0
	bne _08068432
	movs r3, #1
_08068432:
	ldr r2, [r2, #4]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	adds r5, #1
	cmp r5, #9
	ble _0806840E
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08068468
	adds r0, r4, #0
	bl sub_08068474
	b _0806846E
	.align 2, 0
_08068460: .4byte 0x000004B4
_08068464: .4byte 0x0000043C
_08068468:
	adds r0, r4, #0
	bl sub_08068674
_0806846E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
