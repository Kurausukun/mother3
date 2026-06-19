	.syntax unified
sub_080B3DAC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl playAnim__6Action
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x92
	adds r1, r6, #0
	bl PlayAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
