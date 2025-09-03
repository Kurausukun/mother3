	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r4, #0x1c]
	adds r0, #0x90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	b _080710F6
_080710E2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080710BC
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
_080710F6:
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _080710E2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
