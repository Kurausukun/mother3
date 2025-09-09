	.syntax unified
sub_08097990:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x20]
	ldr r3, _080979CC
	adds r1, r2, r3
	ldr r1, [r1]
	cmp r0, r1
	bne _080979C6
	ldr r1, [r2, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xc0
	bl _call_via_r2
_080979C6:
	pop {r0}
	bx r0
	.align 2, 0
_080979CC: .4byte 0x00000F94
	.syntax divided
