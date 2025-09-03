	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl sub_0806FBA8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	str r0, [r5, #0x2c]
	cmp r0, #0
	beq _080897A8
	movs r0, #1
	b _080897AA
_080897A8:
	movs r0, #0
_080897AA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
