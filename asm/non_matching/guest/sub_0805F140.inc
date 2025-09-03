	.syntax unified
sub_0805F140:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	cmp r5, #0
	ble _0805F196
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	subs r0, r5, #4
	movs r1, #0
	cmp r1, r0
	bge _0805F18E
	adds r1, r0, #0
_0805F18E:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F196:
	cmp r6, #0x9f
	bgt _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0xa0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	adds r0, r6, #4
	movs r1, #0xa0
	cmp r1, r0
	ble _0805F1B2
	adds r1, r0, #0
_0805F1B2:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F1BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
