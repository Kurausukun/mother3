	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x88
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xe0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _080827F0
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080827F0: .4byte 0x0000050E
	.syntax divided
