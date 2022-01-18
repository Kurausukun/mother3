    .syntax unified
	push {lr}
	adds r0, #0xdc
	lsls r1, r1, #2
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
    .syntax divided
