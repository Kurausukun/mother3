	.syntax unified
sub_0806ED2C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806ED84
	cmp r1, r0
	bne _0806ED8C
	ldrh r0, [r2, #4]
	strh r0, [r4, #0x28]
	adds r0, r2, #0
	adds r0, #8
	str r0, [r4, #0x2c]
	ldrh r0, [r2, #6]
	strh r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	adds r2, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806ED88
	cmp r1, r0
	bne _0806ED8C
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r5, #0
	bl sub_0805D2D4
	b _0806ED8E
	.align 2, 0
_0806ED84: .4byte 0x20736172
_0806ED88: .4byte 0x7361727E
_0806ED8C:
	movs r0, #0
_0806ED8E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
