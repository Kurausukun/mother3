	.syntax unified
sub_080B4D74:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	bl randS32
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #1
	bl sub_08073CF0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r3, [r0, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
