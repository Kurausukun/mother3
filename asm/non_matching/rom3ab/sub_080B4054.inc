	.syntax unified
sub_080B4054:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _080B4086
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, #0x20
	ldr r2, [r1, #0x20]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #1
	bl _call_via_r2
_080B4086:
	adds r0, r4, #0
	bl sub_080821A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
