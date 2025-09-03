	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080702E4
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	lsls r0, r1, #8
	movs r1, #0x64
	bl Div
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayTempoControl
_080702E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
