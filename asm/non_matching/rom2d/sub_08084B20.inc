	.syntax unified
sub_08084B20:
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x15
	ble _08084B46
	ldr r1, [r2, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08084B46:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
