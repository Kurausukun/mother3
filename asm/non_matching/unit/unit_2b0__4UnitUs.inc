    .syntax unified
unit_2b0__4UnitUs:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r5, #0
	adds r7, r4, #0
	adds r7, #0xe8
	b _080759AE
_08075984:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080759AC
	lsls r0, r5, #2
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldr r0, [r1]
	b _080759C8
_080759AC:
	adds r5, #1
_080759AE:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08075984
	movs r0, #0
_080759C8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
