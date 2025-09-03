	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x28
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _08084B10
	ldr r1, [r4, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #1
	str r0, [r4, #0x3c]
	strb r0, [r5]
_08084B10:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
