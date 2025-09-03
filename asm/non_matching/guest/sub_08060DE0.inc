	.syntax unified
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r1, #0
	cmp r0, #0
	ble _08060E02
	movs r1, #1
_08060E02:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
