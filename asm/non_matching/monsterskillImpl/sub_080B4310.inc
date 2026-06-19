	.syntax unified
sub_080B4310:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0xc
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0xc
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x30
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080B43FA
	movs r0, #0x18
	bl setsleep
	adds r0, r5, #0
	adds r1, r4, #0
	bl onAttack__6ActionP4Unit
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080B43FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
