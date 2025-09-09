	.syntax unified
sub_080BD000:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _080BD040
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	bl onPlayAnim__6ActionP4Unitb
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x4c]
	movs r2, #1
	bl sub_08073D98
_080BD040:
	adds r0, r5, #0
	bl sub_08082D70
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
